import React, { useEffect, useMemo, useState } from 'react';
import { AnimatePresence, motion, useReducedMotion } from 'motion/react';
import { CheckCircle2, ChevronRight, FileText } from 'lucide-react';
import { fluxo, Option } from './data/flow';
import { findMinutaByPath } from './data/minutaCatalog';
import { TJPRBadge, TJPRButton, TJPRCard, TJPRHeader } from './components/TJPR';

type ThemeMode = 'light' | 'dark';

const getInitialTheme = (): ThemeMode => {
  if (typeof window === 'undefined') return 'light';
  const storedTheme = window.localStorage.getItem('theme-mode');
  if (storedTheme === 'light' || storedTheme === 'dark') return storedTheme;
  return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
};

// ─── Step labels legíveis para o painel lateral ───────────────────────────────
const STEP_LABELS: Record<string, string> = {
  inicio: 'Tipo de Recurso',
  classif_irregularidade: 'Classificação',
  complementacao: 'Natureza da Pendência',
  comp_falta_guia: 'Guia Ausente',
  comp_falta_comprovante: 'Comprovante Ausente',
  comp_irr_gru: 'Irregularidade GRU',
  comp_irr_funjus: 'Irregularidade FUNJUS',
  dobro: 'Situação Documental',
  dobro_falta_guia: 'Razão — Dobro',
  dobro_falta_comprovante: 'Comprovante — Dobro',
  dobro_nd: 'Autos Físicos',
  desercao: 'Guia com Irregularidade',
  desercao_gru: 'Fundamento — GRU',
  desercao_ambas: 'Fundamento — GRU + FUNJUS',
  desercao_funjus: 'Fundamento — FUNJUS',
  intempestivo: 'Natureza — Intempestividade',
};

// ─── Ícone por categoria ──────────────────────────────────────────────────────
const STEP_ICONS: Record<string, string> = {
  inicio: '⚖️',
  classif_irregularidade: '🗂️',
  complementacao: '📋',
  comp_falta_guia: '📄',
  comp_falta_comprovante: '🧾',
  comp_irr_gru: '🏛️',
  comp_irr_funjus: '📊',
  dobro: '💰',
  dobro_falta_guia: '❌',
  dobro_falta_comprovante: '📑',
  dobro_nd: '📦',
  desercao: '⛔',
  desercao_gru: '🚫',
  desercao_ambas: '🚫',
  desercao_funjus: '🚫',
  intempestivo: '⏰',
};

export default function App() {
  const [etapaAtual, setEtapaAtual] = useState('inicio');
  const [historico, setHistorico] = useState<{ step: string; optionText: string; snippet: string }[]>([]);
  const [finalizado, setFinalizado] = useState(false);
  const [selectedOption, setSelectedOption] = useState<Option | null>(null);
  const [theme, setTheme] = useState<ThemeMode>(getInitialTheme);
  const [copiado, setCopiado] = useState(false);
  const reduceMotion = useReducedMotion();
  const isDarkMode = theme === 'dark';

  const perguntaAtual = fluxo[etapaAtual];

  useEffect(() => {
    document.documentElement.classList.toggle('dark', isDarkMode);
    document.documentElement.dataset.theme = theme;
    document.documentElement.style.colorScheme = theme;
    window.localStorage.setItem('theme-mode', theme);
  }, [isDarkMode, theme]);

  const toggleDarkMode = () => setTheme(prev => (prev === 'dark' ? 'light' : 'dark'));

  const handleEscolha = () => {
    if (!selectedOption) return;
    const proximaEtapa = selectedOption.proximo;
    setHistorico(prev => [
      ...prev,
      { step: etapaAtual, optionText: selectedOption.texto, snippet: selectedOption.snippet }
    ]);
    setSelectedOption(null);
    if (proximaEtapa === 'final') {
      setFinalizado(true);
    } else {
      setEtapaAtual(proximaEtapa);
    }
  };

  const voltar = () => {
    if (historico.length === 0) return;
    const novoHistorico = [...historico];
    const ultimaEtapa = novoHistorico.pop();
    if (ultimaEtapa) {
      setHistorico(novoHistorico);
      setEtapaAtual(ultimaEtapa.step);
      setFinalizado(false);
      setSelectedOption(null);
    }
  };

  const reiniciar = () => {
    setEtapaAtual('inicio');
    setHistorico([]);
    setFinalizado(false);
    setSelectedOption(null);
    setCopiado(false);
  };

  const minutaSelecionada = useMemo(
    () => findMinutaByPath(historico.map(s => ({ step: s.step, optionText: s.optionText }))),
    [historico]
  );

  const minutaFinal = useMemo(() => minutaSelecionada?.templateText ?? '', [minutaSelecionada]);

  const copiarTexto = () => {
    if (!minutaFinal) return;
    navigator.clipboard.writeText(minutaFinal);
    setCopiado(true);
    setTimeout(() => setCopiado(false), 2500);
  };

  const mockUser = {
    displayName: 'Usuário TJPR',
    email: 'usuario@tjpr.jus.br',
    avatarColor: '#1B263B'
  };

  const questionMotionProps = reduceMotion
    ? { initial: false, animate: { opacity: 1 }, exit: { opacity: 1 }, transition: { duration: 0 } }
    : { initial: { opacity: 0, x: 20 }, animate: { opacity: 1, x: 0 }, exit: { opacity: 0, x: -20 }, transition: { duration: 0.3, ease: 'easeOut' as const } };

  const resultMotionProps = reduceMotion
    ? { initial: false, animate: { opacity: 1 }, transition: { duration: 0 } }
    : { initial: { opacity: 0, scale: 0.98 }, animate: { opacity: 1, scale: 1 } };

  const pathItemMotion = (index: number) =>
    reduceMotion
      ? {}
      : { initial: { opacity: 0, x: -12 }, animate: { opacity: 1, x: 0 }, transition: { delay: index * 0.07, duration: 0.25 } };

  // ─── Renderização ─────────────────────────────────────────────────────────────
  const hasSidebar = historico.length > 0;

  return (
    <div className={`min-h-screen flex flex-col ${isDarkMode ? 'app-shell-dark text-white' : 'app-shell-light text-tjpr-gray-900'}`}>
      <TJPRHeader user={mockUser} isDarkMode={isDarkMode} onToggleDarkMode={toggleDarkMode} />

      <main
        id="conteudo-principal"
        className="flex-1 flex flex-col items-center p-6 md:p-12 relative overflow-hidden"
        tabIndex={-1}
      >
        <div className="watermark-overlay">TJPR</div>

        <div className="max-w-6xl w-full relative z-10">
          {/* Hero */}
          <div className={`mb-8 text-center app-hero-panel mx-auto ${isDarkMode ? 'app-hero-panel-dark' : 'app-hero-panel-light'}`}>
            <div className={`hero-kicker ${isDarkMode ? 'hero-kicker-dark' : 'hero-kicker-light'}`}>
              Triagem de preparo recursal
            </div>
            <h1 className="text-[clamp(1.875rem,1.55rem+1.4vw,2.5rem)] leading-tight font-bold text-tjpr-navy-900 dark:text-white mb-2">
              Gerador de Minutas
            </h1>
            <p className="text-[clamp(1rem,0.97rem+0.2vw,1.0625rem)] text-tjpr-gray-700 dark:text-gray-300">
              Sistema auxiliar para elaboração de documentos processuais
            </p>
          </div>

          {/* Layout: sidebar + conteúdo principal */}
          <div className={`flex gap-6 items-start transition-all duration-300 ${hasSidebar ? 'flex-col lg:flex-row' : 'flex-col'}`}>

            {/* ── PAINEL LATERAL: Caminho percorrido ──────────────────────────── */}
            <AnimatePresence>
              {hasSidebar && (
                <motion.aside
                  key="trail-panel"
                  initial={reduceMotion ? false : { opacity: 0, x: -24 }}
                  animate={{ opacity: 1, x: 0 }}
                  exit={reduceMotion ? undefined : { opacity: 0, x: -24 }}
                  transition={{ duration: 0.3 }}
                  aria-label="Caminho de classificação percorrido"
                  className={`
                    w-full lg:w-72 xl:w-80 shrink-0
                    p-5 border
                    ${isDarkMode
                      ? 'trail-panel-dark'
                      : 'trail-panel-light'}
                  `}
                >
                  <div className="flex items-center gap-2 mb-5">
                    <FileText className="w-4 h-4 text-tjpr-gold shrink-0" aria-hidden />
                    <span className={`text-xs font-bold uppercase tracking-widest ${isDarkMode ? 'text-tjpr-gold' : 'text-tjpr-navy-800'}`}>
                      Caminho percorrido
                    </span>
                  </div>

                  <ol className="space-y-0" aria-label="Passos de classificação">
                    {historico.map((item, idx) => (
                      <motion.li
                        key={idx}
                        {...pathItemMotion(idx)}
                        className="relative"
                      >
                        {/* Linha vertical conectora */}
                        {idx < historico.length - 1 && (
                          <span
                            className={`absolute left-[17px] top-[36px] bottom-0 w-px ${isDarkMode ? 'bg-[rgba(144,169,201,0.25)]' : 'bg-[rgba(27,38,59,0.22)]'}`}
                            aria-hidden
                          />
                        )}

                        <div className="flex items-start gap-3 pb-4">
                          {/* Ícone / nº do passo */}
                          <div
                            className={`
                              flex-shrink-0 w-9 h-9 flex items-center justify-center text-base
                              border font-semibold mt-0.5
                              ${finalizado && idx === historico.length - 1
                                ? isDarkMode
                                  ? 'bg-tjpr-gold/20 border-tjpr-gold/50 text-tjpr-gold'
                                  : 'bg-amber-100 border-amber-300 text-amber-700'
                                : isDarkMode
                                  ? 'bg-[rgba(144,169,201,0.12)] border-[rgba(144,169,201,0.25)] text-[#90a9c9]'
                                  : 'bg-[rgba(27,38,59,0.06)] border-[rgba(27,38,59,0.12)] text-tjpr-navy-700'
                              }
                            `}
                            aria-hidden
                          >
                            {STEP_ICONS[item.step] ?? (idx + 1)}
                          </div>

                          <div className="flex-1 min-w-0 pt-0.5">
                            <p className={`text-[0.68rem] font-semibold uppercase tracking-wider mb-0.5 truncate ${isDarkMode ? 'text-[#90a9c9]' : 'text-tjpr-navy-800'}`}>
                              {STEP_LABELS[item.step] ?? `Passo ${idx + 1}`}
                            </p>
                            <p className={`text-[0.84rem] leading-snug font-medium ${isDarkMode ? 'text-gray-100' : 'text-tjpr-gray-900'}`}>
                              {item.optionText}
                            </p>
                          </div>

                          {idx < historico.length - 1 && (
                            <ChevronRight className={`shrink-0 w-4 h-4 mt-1 ${isDarkMode ? 'text-[rgba(144,169,201,0.4)]' : 'text-tjpr-navy-700'}`} aria-hidden />
                          )}
                        </div>
                      </motion.li>
                    ))}

                    {/* Passo atual (em andamento) */}
                    {!finalizado && (
                      <motion.li
                        key="current"
                        {...pathItemMotion(historico.length)}
                        className="flex items-start gap-3"
                      >
                        <div
                          className={`
                            flex-shrink-0 w-9 h-9 flex items-center justify-center text-sm
                            border-2 font-bold mt-0.5
                            ${isDarkMode
                              ? 'border-tjpr-gold bg-tjpr-gold/10 text-tjpr-gold'
                              : 'border-tjpr-navy-800 bg-tjpr-navy-800/8 text-tjpr-navy-800'}
                          `}
                          aria-current="step"
                        >
                          {historico.length + 1}
                        </div>
                        <div className="flex-1 pt-0.5">
                          <p className={`text-[0.68rem] font-semibold uppercase tracking-wider mb-0.5 ${isDarkMode ? 'text-tjpr-gold' : 'text-tjpr-navy-800'}`}>
                            {STEP_LABELS[etapaAtual] ?? `Passo ${historico.length + 1}`}
                          </p>
                          <p className={`text-[0.78rem] italic ${isDarkMode ? 'text-[rgba(144,169,201,0.6)]' : 'text-tjpr-gray-700'}`}>
                            Em classificação…
                          </p>
                        </div>
                      </motion.li>
                    )}

                    {/* Confirmação de chegada */}
                    {finalizado && (
                      <motion.li
                        key="done"
                        initial={reduceMotion ? false : { opacity: 0, scale: 0.9 }}
                        animate={{ opacity: 1, scale: 1 }}
                        className={`
                          mt-1 flex items-center gap-2 px-3 py-2 border
                          ${isDarkMode
                            ? 'border-green-800/50 bg-green-900/20 text-green-400'
                            : 'border-green-300 bg-green-50 text-green-700'}
                        `}
                      >
                        <CheckCircle2 className="w-4 h-4 shrink-0" aria-hidden />
                        <span className="text-xs font-semibold">Minuta gerada com sucesso</span>
                      </motion.li>
                    )}
                  </ol>
                </motion.aside>
              )}
            </AnimatePresence>

            {/* ── ÁREA PRINCIPAL ───────────────────────────────────────────────── */}
            <div className="flex-1 min-w-0">
              <AnimatePresence mode="wait">
                {!finalizado ? (
                  <motion.div key={etapaAtual} {...questionMotionProps}>
                    <TJPRCard
                      className={`w-full shadow-lg ${isDarkMode ? 'question-card-dark' : 'question-card-light'}`}
                      aria-live="polite"
                    >
                      <div className="mb-6 flex items-center justify-between gap-4">
                        <TJPRBadge variant={isDarkMode ? 'info' : 'default'} icon="linear_scale">
                          Passo {historico.length + 1}
                        </TJPRBadge>
                      </div>

                      <fieldset className="mb-8">
                        <legend className="text-[clamp(1.25rem,1.15rem+0.5vw,1.5rem)] leading-tight font-semibold text-tjpr-navy-800 dark:text-white mb-8 border-l-4 border-tjpr-gold pl-4">
                          {perguntaAtual.pergunta}
                        </legend>

                        <div className="space-y-4">
                          {perguntaAtual.opcoes.map((opt, index) => {
                            const isSelected = selectedOption?.texto === opt.texto;
                            const optionStateClass = isSelected
                              ? isDarkMode ? 'choice-card-dark-selected' : 'choice-card-light-selected'
                              : isDarkMode ? 'choice-card-dark' : 'choice-card-light';

                            return (
                              <label
                                key={index}
                                className={`
                                  flex items-center p-4 rounded-none border cursor-pointer
                                  transition-colors duration-200
                                  ${optionStateClass}
                                  focus-within:outline-none focus-within:ring-2
                                  focus-within:ring-tjpr-gold focus-within:ring-offset-2
                                  focus-within:ring-offset-[#f7f4ee] dark:focus-within:ring-offset-[#101b2b]
                                `}
                              >
                                <input
                                  type="radio"
                                  name={`pergunta-${etapaAtual}`}
                                  className="sr-only"
                                  aria-label={opt.texto}
                                  checked={isSelected}
                                  onChange={() => setSelectedOption(opt)}
                                />
                                <div
                                  className={`
                                    w-[20px] h-[20px] border-2 mr-4 flex items-center justify-center transition-colors shrink-0
                                    ${isSelected
                                      ? 'border-tjpr-navy-800 dark:border-tjpr-gold bg-tjpr-navy-800 dark:bg-tjpr-gold'
                                      : 'border-tjpr-navy-700 dark:border-gray-400 bg-transparent'}
                                  `}
                                >
                                  {isSelected && (
                                    <div className={`w-[9px] h-[9px] rounded-none ${isDarkMode ? 'bg-[#0D1B2A]' : 'bg-white'}`} />
                                  )}
                                </div>
                                <span className="text-[clamp(1rem,0.97rem+0.2vw,1.125rem)] leading-normal font-medium text-tjpr-gray-900 dark:text-gray-100">
                                  {opt.texto}
                                </span>
                              </label>
                            );
                          })}
                        </div>
                      </fieldset>

                      <div className="flex flex-col-reverse sm:flex-row sm:items-center sm:justify-between gap-3 pt-6 border-t border-[rgba(27,38,59,0.1)] dark:border-[rgba(144,169,201,0.2)]">
                        <TJPRButton
                          variant="ghost"
                          onClick={voltar}
                          disabled={historico.length === 0}
                          icon="arrow_back"
                          className="w-full sm:w-auto"
                        >
                          Voltar
                        </TJPRButton>

                        <TJPRButton
                          variant="primary"
                          onClick={handleEscolha}
                          disabled={!selectedOption}
                          icon="arrow_forward"
                          iconPosition="right"
                          className="w-full sm:w-auto"
                        >
                          Avançar
                        </TJPRButton>
                      </div>
                    </TJPRCard>
                  </motion.div>
                ) : (
                  <motion.div {...resultMotionProps}>
                    <TJPRCard className={`w-full shadow-lg ${isDarkMode ? 'question-card-dark' : 'question-card-light'}`}>
                      {/* Cabeçalho do resultado */}
                      <div className="flex items-center mb-6 pb-4 border-b border-[rgba(27,38,59,0.1)] dark:border-[rgba(144,169,201,0.2)]">
                        <div className="w-[48px] h-[48px] bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mr-4">
                          <CheckCircle2 className="w-[28px] h-[28px] text-tjpr-success dark:text-green-400" />
                        </div>
                        <div>
                          <h2 className="text-[clamp(1.5rem,1.3rem+0.8vw,2rem)] leading-tight font-semibold text-tjpr-navy-900 dark:text-white">
                            Minuta padrão pronta
                          </h2>
                          <p className="text-tjpr-gray-700 dark:text-gray-300 text-sm mt-1">
                            Copie e cole o texto abaixo, ajustando apenas os dados variáveis do caso concreto entre colchetes.
                          </p>
                        </div>
                      </div>

                      {/* ── Corpo da minuta (sem cabeçalho nem rodapé) ── */}
                      <div className={`p-6 border min-h-[200px] mb-8 ${isDarkMode ? 'minuta-panel-dark' : 'minuta-panel-light'}`}>
                        <p className="whitespace-pre-wrap max-w-[72ch] text-tjpr-gray-900 dark:text-gray-100 text-base leading-relaxed font-sans">
                          {minutaFinal}
                        </p>
                      </div>

                      {/* Nota sobre placeholders */}
                      <div className={`mb-6 px-4 py-3 border text-sm ${isDarkMode ? 'border-tjpr-gold/20 bg-tjpr-gold/5 text-tjpr-gold/80' : 'border-amber-200 bg-amber-50 text-amber-800'}`}>
                        <strong>Atenção:</strong> Substitua os campos entre <code>[COLCHETES]</code> pelos dados reais do processo antes de assinar.
                      </div>

                      <div className="flex flex-col sm:flex-row gap-4 justify-end pt-4 border-t border-[rgba(27,38,59,0.1)] dark:border-[rgba(144,169,201,0.2)]">
                        <TJPRButton variant="ghost" onClick={voltar} icon="arrow_back">
                          Voltar
                        </TJPRButton>
                        <TJPRButton
                          variant="secondary"
                          onClick={copiarTexto}
                          icon="content_copy"
                        >
                          {copiado ? 'Copiado ✓' : 'Copiar conteúdo'}
                        </TJPRButton>
                        <TJPRButton variant="primary" onClick={reiniciar} icon="refresh">
                          Nova classificação
                        </TJPRButton>
                      </div>
                    </TJPRCard>
                  </motion.div>
                )}
              </AnimatePresence>
            </div>
          </div>
        </div>
      </main>

      <footer className={`py-6 text-center text-sm border-t z-10 ${isDarkMode ? 'app-footer-dark' : 'app-footer-light'}`}>
        <p>Tribunal de Justiça do Estado do Paraná © 2026. Todos os direitos reservados.</p>
        <p className="text-xs mt-1">
          Este é um sistema auxiliar e não substitui a validação humana.
        </p>
      </footer>
    </div>
  );
}
