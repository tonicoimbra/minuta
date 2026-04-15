-- =============================================================================
-- Gerador de Minutas — Supabase Schema
-- Execute este arquivo no SQL Editor do seu projeto Supabase.
-- =============================================================================

-- ---------------------------------------------------------------------------
-- 1. Tabela de perfis (estende auth.users)
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS profiles (
  id        UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  email     TEXT NOT NULL,
  full_name TEXT,
  role      TEXT NOT NULL DEFAULT 'user' CHECK (role IN ('user', 'admin')),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ---------------------------------------------------------------------------
-- 2. Trigger: criar perfil automaticamente ao confirmar signup
-- ---------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO public.profiles (id, email, full_name)
  VALUES (
    NEW.id,
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'full_name', '')
  )
  ON CONFLICT (id) DO UPDATE SET
    full_name = COALESCE(EXCLUDED.full_name, profiles.full_name);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION handle_new_user();

-- ---------------------------------------------------------------------------
-- 3. Trigger: bloquear signup com domínio fora de @tjpr.jus.br
-- ---------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION check_email_domain()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.email NOT LIKE '%@tjpr.jus.br' THEN
    RAISE EXCEPTION 'Apenas e-mails @tjpr.jus.br são permitidos.';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

DROP TRIGGER IF EXISTS enforce_email_domain ON auth.users;
CREATE TRIGGER enforce_email_domain
  BEFORE INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION check_email_domain();

-- ---------------------------------------------------------------------------
-- 4. Tabela de templates de minutas
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS minuta_templates (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  step_key      TEXT NOT NULL,
  option_text   TEXT NOT NULL,
  title         TEXT NOT NULL,
  template_text TEXT NOT NULL,
  source_files  TEXT[] DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT NOW(),
  updated_at    TIMESTAMPTZ DEFAULT NOW(),
  created_by    UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  UNIQUE (step_key, option_text)
);

-- Trigger para atualizar updated_at automaticamente
CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS minuta_templates_updated_at ON minuta_templates;
CREATE TRIGGER minuta_templates_updated_at
  BEFORE UPDATE ON minuta_templates
  FOR EACH ROW EXECUTE FUNCTION set_updated_at();

-- ---------------------------------------------------------------------------
-- 5. Função auxiliar para verificar admin (SECURITY DEFINER evita recursão RLS)
-- ---------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS boolean
LANGUAGE sql
SECURITY DEFINER
STABLE
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.profiles
    WHERE id = auth.uid() AND role = 'admin'
  )
$$;

-- ---------------------------------------------------------------------------
-- 6. Row Level Security (RLS)
-- ---------------------------------------------------------------------------

-- profiles
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "users_read_own_profile" ON profiles;
CREATE POLICY "users_read_own_profile" ON profiles
  FOR SELECT USING (auth.uid() = id);

DROP POLICY IF EXISTS "admin_read_all_profiles" ON profiles;
CREATE POLICY "admin_read_all_profiles" ON profiles
  FOR SELECT USING (public.is_admin());

-- Permite que o usuário atualize seus próprios dados (full_name)
DROP POLICY IF EXISTS "users_update_own_profile" ON profiles;
CREATE POLICY "users_update_own_profile" ON profiles
  FOR UPDATE USING (auth.uid() = id)
  WITH CHECK (auth.uid() = id);

-- minuta_templates
ALTER TABLE minuta_templates ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "authenticated_read_templates" ON minuta_templates;
CREATE POLICY "authenticated_read_templates" ON minuta_templates
  FOR SELECT USING (auth.role() = 'authenticated');

DROP POLICY IF EXISTS "admin_write_templates" ON minuta_templates;
CREATE POLICY "admin_write_templates" ON minuta_templates
  FOR ALL USING (public.is_admin());

-- ---------------------------------------------------------------------------
-- 6. Como promover o primeiro admin (execute manualmente após criar conta)
-- ---------------------------------------------------------------------------
-- UPDATE profiles SET role = 'admin' WHERE email = 'seu@tjpr.jus.br';
