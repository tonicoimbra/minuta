import { supabase } from './supabase';

export interface UserProfile {
  id: string;
  email: string;
  full_name?: string;
  /** Role vem do app_metadata no JWT — definido pelo admin no Supabase Dashboard. */
  role: 'user' | 'admin';
}

/**
 * Lê o perfil do usuário: dados básicos da tabela profiles
 * + role do app_metadata do JWT (evita recursão RLS).
 */
export async function getProfile(userId: string): Promise<UserProfile | null> {
  const [profileResult, sessionResult] = await Promise.all([
    supabase
      .from('profiles')
      .select('id, email, full_name')
      .eq('id', userId)
      .single(),
    supabase.auth.getSession(),
  ]);

  if (profileResult.error || !profileResult.data) return null;

  const appMetadata = sessionResult.data.session?.user?.app_metadata ?? {};
  const role: 'user' | 'admin' =
    appMetadata['role'] === 'admin' ? 'admin' : 'user';

  return {
    ...(profileResult.data as { id: string; email: string; full_name?: string }),
    role,
  };
}

export async function signIn(email: string, password: string) {
  return supabase.auth.signInWithPassword({ email, password });
}

export async function signUp(email: string, password: string) {
  return supabase.auth.signUp({ email, password });
}

export async function signOut() {
  return supabase.auth.signOut();
}

/**
 * Envia email de redefinição de senha via Supabase Auth.
 * O link no email redireciona para a URL configurada no dashboard.
 */
export async function resetPassword(email: string) {
  const redirectTo = `${window.location.origin}/minuta/`;
  return supabase.auth.resetPasswordForEmail(email, { redirectTo });
}

/**
 * Atualiza a senha do usuário autenticado.
 * Requer sessão ativa (JWT válido).
 */
export async function updatePassword(newPassword: string) {
  return supabase.auth.updateUser({ password: newPassword });
}

/**
 * Atualiza o perfil do usuário na tabela `profiles`.
 * RLS garante que só altera o próprio perfil (policy: users_update_own_profile).
 */
export async function updateProfile(
  userId: string,
  data: { full_name?: string }
) {
  return supabase
    .from('profiles')
    .update(data)
    .eq('id', userId);
}
