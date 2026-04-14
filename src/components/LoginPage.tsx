import React, { useState } from 'react';
import { signIn, signUp } from '../lib/auth';

interface LoginPageProps {
  isDarkMode: boolean;
}

type Tab = 'entrar' | 'cadastrar';

export default function LoginPage({ isDarkMode }: LoginPageProps) {
  const [tab, setTab] = useState<Tab>('entrar');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [successMsg, setSuccessMsg] = useState('');

  const dark = isDarkMode;

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
      setError('E-mail ou senha incorretos.');
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
    if (password.length < 6) {
      setError('A senha deve ter pelo menos 6 caracteres.');
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
          <button type="button" className={tabClass(tab === 'entrar')} onClick={() => { setTab('entrar'); setError(''); setSuccessMsg(''); }}>
            Entrar
          </button>
          <button type="button" className={tabClass(tab === 'cadastrar')} onClick={() => { setTab('cadastrar'); setError(''); setSuccessMsg(''); }}>
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

          {tab === 'entrar' ? (
            <form onSubmit={handleEntrar} className="space-y-4">
              <div>
                <label className={`block text-xs font-semibold uppercase tracking-wider mb-1.5 ${dark ? 'text-[#90a9c9]' : 'text-tjpr-navy-800'}`}>
                  E-mail institucional
                </label>
                <input
                  type="email"
                  value={email}
                  onChange={e => setEmail(e.target.value)}
                  placeholder="nome@tjpr.jus.br"
                  required
                  autoComplete="email"
                  className={inputClass}
                />
              </div>
              <div>
                <label className={`block text-xs font-semibold uppercase tracking-wider mb-1.5 ${dark ? 'text-[#90a9c9]' : 'text-tjpr-navy-800'}`}>
                  Senha
                </label>
                <input
                  type="password"
                  value={password}
                  onChange={e => setPassword(e.target.value)}
                  placeholder="••••••••"
                  required
                  autoComplete="current-password"
                  className={inputClass}
                />
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
          ) : (
            <form onSubmit={handleCadastrar} className="space-y-4">
              <div>
                <label className={`block text-xs font-semibold uppercase tracking-wider mb-1.5 ${dark ? 'text-[#90a9c9]' : 'text-tjpr-navy-800'}`}>
                  E-mail institucional
                </label>
                <input
                  type="email"
                  value={email}
                  onChange={e => setEmail(e.target.value)}
                  placeholder="nome@tjpr.jus.br"
                  required
                  autoComplete="email"
                  className={inputClass}
                />
                <p className={`mt-1 text-xs ${dark ? 'text-gray-500' : 'text-gray-400'}`}>
                  Apenas @tjpr.jus.br é aceito.
                </p>
              </div>
              <div>
                <label className={`block text-xs font-semibold uppercase tracking-wider mb-1.5 ${dark ? 'text-[#90a9c9]' : 'text-tjpr-navy-800'}`}>
                  Senha
                </label>
                <input
                  type="password"
                  value={password}
                  onChange={e => setPassword(e.target.value)}
                  placeholder="Mínimo 6 caracteres"
                  required
                  autoComplete="new-password"
                  className={inputClass}
                />
              </div>
              <div>
                <label className={`block text-xs font-semibold uppercase tracking-wider mb-1.5 ${dark ? 'text-[#90a9c9]' : 'text-tjpr-navy-800'}`}>
                  Confirmar senha
                </label>
                <input
                  type="password"
                  value={confirmPassword}
                  onChange={e => setConfirmPassword(e.target.value)}
                  placeholder="••••••••"
                  required
                  autoComplete="new-password"
                  className={inputClass}
                />
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
        </div>
      </div>

      <p className={`mt-6 text-xs text-center ${dark ? 'text-gray-600' : 'text-gray-400'}`}>
        Sistema de uso interno exclusivo do TJPR
      </p>
    </div>
  );
}
