-- =============================================================================
-- fix_rls.sql v2 — Abordagem JWT: sem consultas a tabelas nas policies
-- Execute este arquivo no SQL Editor do Supabase.
-- =============================================================================

-- 1. Remover função e policies antigas problemáticas
DROP FUNCTION IF EXISTS public.is_admin();
DROP POLICY IF EXISTS "admin_read_all_profiles"  ON profiles;
DROP POLICY IF EXISTS "admin_write_templates"     ON minuta_templates;

-- 2. profiles: cada usuário só lê o próprio perfil (sem recursão possível)
--    A verificação de role é feita via JWT (app_metadata), não via esta tabela.
DROP POLICY IF EXISTS "users_read_own_profile" ON profiles;
CREATE POLICY "users_read_own_profile" ON profiles
  FOR SELECT USING (auth.uid() = id);

-- Permitir que o trigger do signup insira o perfil (service_role o faz)
DROP POLICY IF EXISTS "allow_insert_own_profile" ON profiles;
CREATE POLICY "allow_insert_own_profile" ON profiles
  FOR INSERT WITH CHECK (auth.uid() = id);

-- 3. minuta_templates: leitura por autenticados; escrita apenas para admin
--    Role verificada via app_metadata no JWT — sem nenhuma query de tabela.
DROP POLICY IF EXISTS "authenticated_read_templates" ON minuta_templates;
CREATE POLICY "authenticated_read_templates" ON minuta_templates
  FOR SELECT USING (auth.role() = 'authenticated');

DROP POLICY IF EXISTS "admin_write_templates" ON minuta_templates;
CREATE POLICY "admin_write_templates" ON minuta_templates
  FOR ALL USING (
    coalesce(
      (auth.jwt() -> 'app_metadata' ->> 'role') = 'admin',
      false
    )
  );

-- =============================================================================
-- APÓS executar este SQL, defina o primeiro admin assim:
-- Supabase Dashboard → Authentication → Users → clique no usuário
-- → "Edit" → App Metadata → adicione: {"role": "admin"}
-- =============================================================================
