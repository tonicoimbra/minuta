import React, { useMemo, useState } from 'react';
import { AnimatePresence, motion, useReducedMotion } from 'motion/react';
import { CheckCircle2 } from 'lucide-react';
import { fluxo, Option } from './data/flow';
import { TJPRBadge, TJPRButton, TJPRCard, TJPRHeader } from './components/TJPR';

export default function App() {
  const [etapaAtual, setEtapaAtual] = useState('inicio');
  const [historico, setHistorico] = useState<{ step: string; snippet: string }[]>([]);
  const [finalizado, setFinalizado] = useState(false);
  const [selectedOption, setSelectedOption] = useState<Option | null>(null);
  const [isDarkMode, setIsDarkMode] = useState(false);
  const reduceMotion = useReducedMotion();

  const perguntaAtual = fluxo[etapaAtual];

  const toggleDarkMode = () => {
    setIsDarkMode(!isDarkMode);
    if (!isDarkMode) {
      document.documentElement.classList.add('dark');
    } else {
      document.documentElement.classList.remove('dark');
    }
  };

  const handleEscolha = () => {
    if (!selectedOption) return;

    const proximaEtapa = selectedOption.proximo;
    setHistorico(prev => [...prev, { step: etapaAtual, snippet: selectedOption.snippet }]);
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
  };

  const minutaFinal = useMemo(() => historico.map(h => h.snippet).join(' '), [historico]);

  const copiarTexto = () => {
    navigator.clipboard.writeText(minutaFinal);
  };

  const mockUser = {
    displayName: 'Usuário TJPR',
    email: 'usuario@tjpr.jus.br',
    avatarColor: '#1B263B'
  };

  const questionMotionProps = reduceMotion
    ? {
        initial: false,
        animate: { opacity: 1 },
        exit: { opacity: 1 },
        transition: { duration: 0 }
      }
    : {
        initial: { opacity: 0, x: 20 },
        animate: { opacity: 1, x: 0 },
        exit: { opacity: 0, x: -20 },
        transition: { duration: 0.3, ease: 'easeOut' as const }
      };

  const resultMotionProps = reduceMotion
    ? {
        initial: false,
        animate: { opacity: 1 },
        transition: { duration: 0 }
      }
    : {
        initial: { opacity: 0, scale: 0.95 },
        animate: { opacity: 1, scale: 1 }
      };

  return (
    <div className={`min-h-screen flex flex-col ${isDarkMode ? 'dark bg-gray-900 text-white' : 'bg-tjpr-gray-50 text-tjpr-gray-900'}`}>
      <TJPRHeader user={mockUser} isDarkMode={isDarkMode} onToggleDarkMode={toggleDarkMode} />

      <main
        id="conteudo-principal"
        className="flex-1 flex flex-col items-center p-6 md:p-12 relative overflow-hidden"
        tabIndex={-1}
      >
        <div className="watermark-overlay">TJPR</div>

        <div className="max-w-4xl w-full relative z-10 flex flex-col items-center">
          <div className="mb-8 text-center">
            <h1 className="text-[clamp(1.875rem,1.55rem+1.4vw,2.5rem)] leading-tight font-bold text-tjpr-navy-900 dark:text-white mb-2">
              Gerador de Minutas
            </h1>
            <p className="text-[clamp(1rem,0.97rem+0.2vw,1.0625rem)] text-tjpr-gray-700 dark:text-gray-300">
              Sistema Auxiliar para Elaboração de Documentos Processuais
            </p>
          </div>

          <div className="w-full max-w-2xl">
            <AnimatePresence mode="wait">
              {!finalizado ? (
                <motion.div key={etapaAtual} {...questionMotionProps}>
                  <TJPRCard className="w-full shadow-lg" aria-live="polite">
                    <div className="mb-6 flex items-center justify-between gap-4">
                      <TJPRBadge variant="info" icon="linear_scale">
                        Passo {historico.length + 1}
                      </TJPRBadge>
                    </div>

                    <fieldset className="mb-8">
                      <legend className="text-[clamp(1.25rem,1.15rem+0.5vw,1.5rem)] leading-tight font-semibold text-tjpr-navy-800 dark:text-white mb-8 border-l-4 border-tjpr-gold pl-4">
                        {perguntaAtual.pergunta}
                      </legend>

                      <div className="space-y-4">
                        {perguntaAtual.opcoes.map((opt, index) => (
                          <label
                            key={index}
                            className={`
                              flex items-center p-4 rounded-none border cursor-pointer transition-colors duration-200
                              focus-within:outline-none focus-within:ring-2 focus-within:ring-tjpr-gold focus-within:ring-offset-2 dark:focus-within:ring-offset-gray-800
                              ${selectedOption?.texto === opt.texto
                                ? 'border-tjpr-navy-700 bg-blue-50 dark:bg-tjpr-navy-800/30'
                                : 'border-tjpr-gray-200 dark:border-gray-700 hover:border-tjpr-navy-600 bg-white dark:bg-gray-800'}
                            `}
                          >
                            <input
                              type="radio"
                              name={`pergunta-${etapaAtual}`}
                              className="sr-only"
                              aria-label={opt.texto}
                              checked={selectedOption?.texto === opt.texto}
                              onChange={() => setSelectedOption(opt)}
                            />
                            <div
                              className={`
                                w-[20px] h-[20px] border-2 mr-4 flex items-center justify-center transition-colors shrink-0
                                ${selectedOption?.texto === opt.texto
                                  ? 'border-tjpr-navy-800 dark:border-tjpr-navy-500 bg-tjpr-navy-800 dark:bg-tjpr-navy-500'
                                  : 'border-tjpr-gray-600'}
                              `}
                            >
                              {selectedOption?.texto === opt.texto && <div className="w-[8px] h-[8px] bg-white" />}
                            </div>
                            <span className="text-[clamp(1rem,0.97rem+0.2vw,1.125rem)] leading-normal font-medium text-tjpr-gray-900 dark:text-gray-200">
                              {opt.texto}
                            </span>
                          </label>
                        ))}
                      </div>
                    </fieldset>

                    <div className="flex flex-col-reverse sm:flex-row sm:items-center sm:justify-between gap-3 pt-6 border-t border-gray-200 dark:border-gray-700">
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
                  <TJPRCard className="w-full shadow-lg">
                    <div className="flex items-center mb-6 pb-4 border-b border-gray-200 dark:border-gray-700">
                      <div className="w-[48px] h-[48px] bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mr-4">
                        <CheckCircle2 className="w-[28px] h-[28px] text-tjpr-success dark:text-green-400" />
                      </div>
                      <div>
                        <h2 className="text-[clamp(1.5rem,1.3rem+0.8vw,2rem)] leading-tight font-semibold text-tjpr-navy-900 dark:text-white">
                          Relatório / Minuta Gerada
                        </h2>
                        <p className="text-tjpr-gray-700 dark:text-gray-300 text-sm mt-1">
                          As seleções realizadas formaram o conteúdo abaixo.
                        </p>
                      </div>
                    </div>

                    <div className="bg-tjpr-gray-50 dark:bg-gray-800/50 rounded-lg p-6 border border-tjpr-gray-200 dark:border-gray-700 min-h-[200px] mb-8">
                      <p className="whitespace-pre-wrap max-w-[72ch] text-tjpr-gray-900 dark:text-gray-200 text-lg leading-relaxed font-sans">
                        {minutaFinal}
                      </p>
                    </div>

                    <div className="flex flex-col sm:flex-row gap-4 justify-end pt-4 border-t border-gray-200 dark:border-gray-700">
                      <TJPRButton variant="secondary" onClick={copiarTexto} icon="content_copy">
                        Copiar Conteúdo
                      </TJPRButton>
                      <TJPRButton variant="primary" onClick={reiniciar} icon="refresh">
                        Nova Classificação
                      </TJPRButton>
                    </div>
                  </TJPRCard>
                </motion.div>
              )}
            </AnimatePresence>
          </div>
        </div>
      </main>

      <footer className="py-6 text-center text-tjpr-gray-700 dark:text-gray-300 text-sm border-t border-gray-200 dark:border-gray-800 bg-white dark:bg-gray-900 z-10">
        <p>Tribunal de Justiça do Estado do Paraná © 2026. Todos os direitos reservados.</p>
        <p className="text-xs mt-1 text-tjpr-gray-700 dark:text-gray-400">
          Este é um sistema auxiliar e não substitui a validação humana.
        </p>
      </footer>
    </div>
  );
}
