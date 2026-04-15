import React, { useEffect, useRef, useState } from 'react';
import { Eye, EyeOff, KeyRound, Mail, ShieldCheck } from 'lucide-react';
import { signIn, signUp, resetPassword } from '../lib/auth';

interface LoginPageProps {
  isDarkMode: boolean;
}

type Tab = 'entrar' | 'cadastrar' | 'recuperar';

interface PasswordStrength {
  score: 0 | 1 | 2 | 3;
  label: string;
  color: string;
  bgColor: string;
}

function getPasswordStrength(password: string): PasswordStrength {
  if (!password) return { score: 0, label: '', color: '', bgColor: '' };

  let score = 0;
  if (password.length >= 8) score++;
  if (/[A-Z]/.test(password) && /[a-z]/.test(password)) score++;
  if (/[0-9]/.test(password) && /[^A-Za-z0-9]/.test(password)) score++;

  const levels: PasswordStrength[] = [
    { score: 0, label: '', color: '', bgColor: '' },
    { score: 1, label: 'Fraca', color: 'text-red-500', bgColor: 'bg-red-500' },
    { score: 2, label: 'Média', color: 'text-amber-500', bgColor: 'bg-amber-500' },
    { score: 3, label: 'Forte', color: 'text-green-500', bgColor: 'bg-green-500' },
  ];

  return levels[score] ?? levels[0];
}

export default function LoginPage({ isDarkMode }: LoginPageProps) {
  const [tab, setTab] = useState<Tab>('entrar');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [successMsg, setSuccessMsg] = useState('');

  const emailRef = useRef<HTMLInputElement>(null);
  const dark = isDarkMode;
  const passwordStrength = getPasswordStrength(password);

  useEffect(() => {
    emailRef.current?.focus();
  }, [tab]);

  const validateDomain = (e: string) => e.toLowerCase().endsWith('@tjpr.jus.br');

  const handleEntrar = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');
    if (!validateDomain(email)) {
      setError('Apenas e-mails @tjpr.jus.br são permitidos.');
      return;
    }
    setLoading(true);
    const { error: authError } = await signIn(email, password);
    setLoading(false);
    if (authError) {
      if (authError.message.includes('Invalid login')) {
        setError('E-mail ou senha incorretos.');
      } else if (authError.message.includes('Email not confirmed')) {
        setError('Confirme seu e-mail antes de entrar. Verifique sua caixa de entrada.');
      } else {
        setError('Não foi possível entrar. Tente novamente.');
      }
    }
  };

  const handleCadastrar = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');
    setSuccessMsg('');
    if (!validateDomain(email)) {
      setError('Apenas e-mails @tjpr.jus.br são permitidos.');
      return;
    }
    if (password.length < 8) {
      setError('A senha deve ter pelo menos 8 caracteres.');
      return;
    }
    if (passwordStrength.score < 2) {
      setError('A senha é muito fraca. Use letras maiúsculas, minúsculas, números e caracteres especiais.');
      return;
    }
    if (password !== confirmPassword) {
      setError('As senhas não coincidem.');
      return;
    }
    setLoading(true);
    const { error: authError } = await signUp(email, password);
    setLoading(false);
    if (authError) {
      if (authError.message.includes('already registered')) {
        setError('Este e-mail já está cadastrado.');
      } else if (authError.message.includes('tjpr.jus.br')) {
        setError('Apenas e-mails @tjpr.jus.br são permitidos.');
      } else {
        setError('Não foi possível criar a conta. Tente novamente.');
      }
      return;
    }
    setSuccessMsg(
      'Conta criada! Verifique seu e-mail @tjpr.jus.br para confirmar o acesso.'
    );
    setEmail('');
    setPassword('');
    setConfirmPassword('');
  };

  const handleRecuperar = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');
    setSuccessMsg('');
    if (!email.trim()) {
      setError('Informe seu e-mail institucional.');
      return;
    }
    if (!validateDomain(email)) {
      setError('Apenas e-mails @tjpr.jus.br são permitidos.');
      return;
    }
    setLoading(true);
    const { error: authError } = await resetPassword(email);
    setLoading(false);
    if (authError) {
      setError('Não foi possível enviar o e-mail de redefinição. Tente novamente.');
      return;
    }
    setSuccessMsg(
      'E-mail de redefinição enviado! Verifique sua caixa de entrada @tjpr.jus.br e clique no link para criar uma nova senha.'
    );
    setEmail('');
  };

  const switchTab = (newTab: Tab) => {
    setTab(newTab);
    setError('');
    setSuccessMsg('');
    setShowPassword(false);
    setShowConfirmPassword(false);
  };

  const inputClass = `
    w-full px-4 py-2.5 border text-sm font-medium
    focus:outline-none focus:ring-2 focus:ring-tjpr-gold focus:ring-offset-1
    transition-colors duration-150
    ${dark
      ? 'bg-[#0d1b2a] border-[rgba(144,169,201,0.3)] text-white placeholder-gray-500 focus:border-tjpr-gold'
      : 'bg-white border-[rgba(27,38,59,0.2)] text-tjpr-navy-900 placeholder-gray-400 focus:border-tjpr-navy-700'}
  `;

  const tabClass = (active: boolean) => `
    flex-1 py-2.5 text-sm font-semibold border-b-2 transition-colors duration-150
    ${active
      ? dark
        ? 'border-tjpr-gold text-tjpr-gold'
        : 'border-tjpr-navy-800 text-tjpr-navy-900'
      : dark
        ? 'border-transparent text-gray-500 hover:text-gray-300'
        : 'border-transparent text-gray-400 hover:text-tjpr-gray-700'}
  `;

  const labelClass = `block text-xs font-semibold uppercase tracking-wider mb-1.5 ${dark ? 'text-[#90a9c9]' : 'text-tjpr-navy-800'}`;

  const PasswordToggle = ({ visible, onToggle }: { visible: boolean; onToggle: () => void }) => (
    <button
      type="button"
      onClick={onToggle}
      tabIndex={-1}
      className={`absolute right-3 top-1/2 -translate-y-1/2 p-0.5 transition-colors ${dark ? 'text-gray-500 hover:text-gray-300' : 'text-gray-400 hover:text-gray-600'}`}
      aria-label={visible ? 'Ocultar senha' : 'Mostrar senha'}
    >
      {visible ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
    </button>
  );

  return (
    <div className={`min-h-screen flex flex-col items-center justify-center px-4 py-12 ${dark ? 'app-shell-dark' : 'app-shell-light'}`}>
      {/* Cabeçalho institucional */}
      <div className="mb-8 text-center">
        <div className={`inline-flex items-center justify-center w-14 h-14 mb-4 text-xl font-extrabold border-2 ${dark ? 'border-tjpr-gold text-tjpr-gold bg-tjpr-gold/10' : 'border-tjpr-navy-800 text-tjpr-navy-800 bg-tjpr-navy-800/5'}`}>
          TJ
        </div>
        <h1 className={`text-2xl font-bold ${dark ? 'text-white' : 'text-tjpr-navy-900'}`}>
          Gerador de Minutas
        </h1>
        <p className={`text-sm mt-1 ${dark ? 'text-gray-400' : 'text-tjpr-gray-700'}`}>
          Tribunal de Justiça do Paraná · Assessoria P-SEP-AR
        </p>
      </div>

      {/* Card de login */}
      <div className={`w-full max-w-sm border shadow-lg ${dark ? 'bg-[#101b2b] border-[rgba(144,169,201,0.18)]' : 'bg-white border-[rgba(27,38,59,0.1)]'}`}>
        {/* Tabs */}
        <div className={`flex border-b ${dark ? 'border-[rgba(144,169,201,0.18)]' : 'border-[rgba(27,38,59,0.1)]'}`}>
          <button type="button" className={tabClass(tab === 'entrar')} onClick={() => switchTab('entrar')}>
            Entrar
          </button>
          <button type="button" className={tabClass(tab === 'cadastrar')} onClick={() => switchTab('cadastrar')}>
            Criar conta
          </button>
        </div>

        <div className="p-6">
          {/* Mensagem de erro */}
          {error && (
            <div className={`mb-4 px-4 py-3 text-sm border ${dark ? 'bg-red-900/20 border-red-800/50 text-red-300' : 'bg-red-50 border-red-200 text-red-700'}`}>
              {error}
            </div>
          )}

          {/* Mensagem de sucesso */}
          {successMsg && (
            <div className={`mb-4 px-4 py-3 text-sm border ${dark ? 'bg-green-900/20 border-green-800/50 text-green-300' : 'bg-green-50 border-green-200 text-green-700'}`}>
              {successMsg}
            </div>
          )}

          {/* ── Tab: Entrar ─────────────────────────────────────────── */}
          {tab === 'entrar' && (
            <form onSubmit={handleEntrar} className="space-y-4">
              <div>
                <label className={labelClass}>
                  E-mail institucional
                </label>
                <div className="relative">
                  <input
                    ref={emailRef}
                    type="email"
                    value={email}
                    onChange={e => setEmail(e.target.value)}
                    placeholder="nome@tjpr.jus.br"
                    required
                    autoComplete="email"
                    className={`${inputClass} pr-10`}
                  />
                  <Mail className={`absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 ${dark ? 'text-gray-500' : 'text-gray-400'}`} />
                </div>
              </div>
              <div>
                <label className={labelClass}>
                  Senha
                </label>
                <div className="relative">
                  <input
                    type={showPassword ? 'text' : 'password'}
                    value={password}
                    onChange={e => setPassword(e.target.value)}
                    placeholder="••••••••"
                    required
                    autoComplete="current-password"
                    className={`${inputClass} pr-10`}
                  />
                  <PasswordToggle visible={showPassword} onToggle={() => setShowPassword(v => !v)} />
                </div>
              </div>

              {/* Link: Esqueci minha senha */}
              <div className="flex justify-end">
                <button
                  type="button"
                  onClick={() => switchTab('recuperar')}
                  className={`text-xs font-medium transition-colors ${dark ? 'text-tjpr-gold/80 hover:text-tjpr-gold' : 'text-tjpr-navy-700 hover:text-tjpr-navy-900'}`}
                >
                  Esqueci minha senha
                </button>
              </div>

              <button
                type="submit"
                disabled={loading}
                className={`w-full py-2.5 text-sm font-semibold transition-colors duration-150 focus:outline-none focus:ring-2 focus:ring-tjpr-gold focus:ring-offset-2 disabled:opacity-50 disabled:cursor-not-allowed
                  ${dark ? 'bg-[#2a4a6e] hover:bg-[#335580] text-white' : 'bg-tjpr-navy-800 hover:bg-[#142033] text-white'}`}
              >
                {loading ? 'Entrando…' : 'Entrar'}
              </button>
            </form>
          )}

          {/* ── Tab: Criar conta ─────────────────────────────────────── */}
          {tab === 'cadastrar' && (
            <form onSubmit={handleCadastrar} className="space-y-4">
              <div>
                <label className={labelClass}>
                  E-mail institucional
                </label>
                <div className="relative">
                  <input
                    ref={emailRef}
                    type="email"
                    value={email}
                    onChange={e => setEmail(e.target.value)}
                    placeholder="nome@tjpr.jus.br"
                    required
                    autoComplete="email"
                    className={`${inputClass} pr-10`}
                  />
                  <Mail className={`absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 ${dark ? 'text-gray-500' : 'text-gray-400'}`} />
                </div>
                <p className={`mt-1 text-xs ${dark ? 'text-gray-500' : 'text-gray-400'}`}>
                  Apenas @tjpr.jus.br é aceito.
                </p>
              </div>
              <div>
                <label className={labelClass}>
                  Senha
                </label>
                <div className="relative">
                  <input
                    type={showPassword ? 'text' : 'password'}
                    value={password}
                    onChange={e => setPassword(e.target.value)}
                    placeholder="Mínimo 8 caracteres"
                    required
                    autoComplete="new-password"
                    className={`${inputClass} pr-10`}
                  />
                  <PasswordToggle visible={showPassword} onToggle={() => setShowPassword(v => !v)} />
                </div>

                {/* Indicador de força da senha */}
                {password.length > 0 && (
                  <div className="mt-2">
                    <div className="flex gap-1 mb-1">
                      {[1, 2, 3].map(level => (
                        <div
                          key={level}
                          className={`h-1 flex-1 transition-colors duration-200 ${
                            passwordStrength.score >= level
                              ? passwordStrength.bgColor
                              : dark ? 'bg-gray-700' : 'bg-gray-200'
                          }`}
                        />
                      ))}
                    </div>
                    <p className={`text-xs font-medium ${passwordStrength.color}`}>
                      {passwordStrength.label}
                      {passwordStrength.score < 3 && (
                        <span className={`ml-1 font-normal ${dark ? 'text-gray-500' : 'text-gray-400'}`}>
                          — use maiúsculas, números e caracteres especiais
                        </span>
                      )}
                    </p>
                  </div>
                )}
              </div>
              <div>
                <label className={labelClass}>
                  Confirmar senha
                </label>
                <div className="relative">
                  <input
                    type={showConfirmPassword ? 'text' : 'password'}
                    value={confirmPassword}
                    onChange={e => setConfirmPassword(e.target.value)}
                    placeholder="••••••••"
                    required
                    autoComplete="new-password"
                    className={`${inputClass} pr-10`}
                  />
                  <PasswordToggle visible={showConfirmPassword} onToggle={() => setShowConfirmPassword(v => !v)} />
                </div>
                {confirmPassword && password !== confirmPassword && (
                  <p className="mt-1 text-xs text-red-500">As senhas não coincidem.</p>
                )}
              </div>
              <button
                type="submit"
                disabled={loading}
                className={`w-full py-2.5 text-sm font-semibold transition-colors duration-150 focus:outline-none focus:ring-2 focus:ring-tjpr-gold focus:ring-offset-2 disabled:opacity-50 disabled:cursor-not-allowed
                  ${dark ? 'bg-[#2a4a6e] hover:bg-[#335580] text-white' : 'bg-tjpr-navy-800 hover:bg-[#142033] text-white'}`}
              >
                {loading ? 'Criando conta…' : 'Criar conta'}
              </button>
            </form>
          )}

          {/* ── Tab: Recuperar senha (inline, não tem tab visual) ──── */}
          {tab === 'recuperar' && (
            <form onSubmit={handleRecuperar} className="space-y-4">
              <div className={`flex items-center gap-3 mb-2 p-3 border ${dark ? 'border-[rgba(144,169,201,0.18)] bg-[rgba(144,169,201,0.05)]' : 'border-[rgba(27,38,59,0.08)] bg-[rgba(27,38,59,0.02)]'}`}>
                <KeyRound className={`w-5 h-5 shrink-0 ${dark ? 'text-tjpr-gold' : 'text-tjpr-navy-800'}`} />
                <div>
                  <p className={`text-sm font-semibold ${dark ? 'text-white' : 'text-tjpr-navy-900'}`}>
                    Redefinir senha
                  </p>
                  <p className={`text-xs ${dark ? 'text-gray-400' : 'text-gray-500'}`}>
                    Enviaremos um link de redefinição para seu e-mail institucional.
                  </p>
                </div>
              </div>

              <div>
                <label className={labelClass}>
                  E-mail institucional
                </label>
                <div className="relative">
                  <input
                    ref={emailRef}
                    type="email"
                    value={email}
                    onChange={e => setEmail(e.target.value)}
                    placeholder="nome@tjpr.jus.br"
                    required
                    autoComplete="email"
                    className={`${inputClass} pr-10`}
                  />
                  <Mail className={`absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 ${dark ? 'text-gray-500' : 'text-gray-400'}`} />
                </div>
              </div>

              <button
                type="submit"
                disabled={loading}
                className={`w-full py-2.5 text-sm font-semibold transition-colors duration-150 focus:outline-none focus:ring-2 focus:ring-tjpr-gold focus:ring-offset-2 disabled:opacity-50 disabled:cursor-not-allowed
                  ${dark ? 'bg-[#2a4a6e] hover:bg-[#335580] text-white' : 'bg-tjpr-navy-800 hover:bg-[#142033] text-white'}`}
              >
                {loading ? 'Enviando…' : 'Enviar link de redefinição'}
              </button>

              <button
                type="button"
                onClick={() => switchTab('entrar')}
                className={`w-full py-2 text-sm font-medium transition-colors ${dark ? 'text-gray-400 hover:text-gray-200' : 'text-gray-500 hover:text-gray-700'}`}
              >
                ← Voltar ao login
              </button>
            </form>
          )}
        </div>
      </div>

      {/* Rodapé */}
      <div className={`mt-6 flex items-center gap-1.5 text-xs ${dark ? 'text-gray-600' : 'text-gray-400'}`}>
        <ShieldCheck className="w-3.5 h-3.5" />
        <span>Sistema de uso interno exclusivo do TJPR</span>
      </div>
    </div>
  );
}
