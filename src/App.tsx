import React, { useState, useMemo } from 'react';
import { motion, AnimatePresence } from 'motion/react';
import { ChevronRight, RotateCcw, FileText, CheckCircle2, ArrowLeft, Copy } from 'lucide-react';
import { fluxo, Option } from './data/flow';
import { TJPRHeader, TJPRCard, TJPRButton, TJPRBadge } from './components/TJPR';

export default function App() {
  const [etapaAtual, setEtapaAtual] = useState('inicio');
  const [historico, setHistorico] = useState<{ step: string; snippet: string }[]>([]);
  const [finalizado, setFinalizado] = useState(false);
  const [selectedOption, setSelectedOption] = useState<Option | null>(null);

  const [isDarkMode, setIsDarkMode] = useState(false);

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

    const novoHistorico = [...historico, { step: etapaAtual, snippet: selectedOption.snippet }];
    setHistorico(novoHistorico);

    if (selectedOption.proximo === 'final') {
      setFinalizado(true);
    } else {
      setEtapaAtual(selectedOption.proximo);
      setSelectedOption(null);
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

  const minutaFinal = useMemo(() => {
    return historico.map(h => h.snippet).join(' ');
  }, [historico]);

  const copiarTexto = () => {
    navigator.clipboard.writeText(minutaFinal);
    // TODO: Adicionar um toast de sucesso
  };

  // Mock User
  const mockUser = {
    displayName: 'Usuário TJPR',
    email: 'usuario@tjpr.jus.br',
    avatarColor: '#1B263B'
  };

  return (
    <div className={`min-h-screen flex flex-col ${isDarkMode ? 'dark bg-gray-900 text-white' : 'bg-tjpr-gray-50 text-tjpr-gray-900'}`}>
      
      <TJPRHeader 
        user={mockUser}
        isDarkMode={isDarkMode}
        onToggleDarkMode={toggleDarkMode}
      />

      <main className="flex-1 flex flex-col items-center p-6 md:p-12 relative overflow-hidden">
        
        {/* Marca d'água no fundo (opcional / estética do design system) */}
        <div className="watermark-overlay">TJPR</div>

        <div className="max-w-4xl w-full relative z-10 flex flex-col items-center">
          
          <div className="mb-8 text-center">
            <h2 className="text-3xl font-bold text-tjpr-navy-900 dark:text-white mb-2">
              Gerador de Minutas
            </h2>
            <p className="text-tjpr-gray-600 dark:text-gray-400">
              Sistema Auxiliar para Elaboração de Documentos Processuais
            </p>
          </div>

          <div className="w-full max-w-2xl">
            <AnimatePresence mode="wait">
              {!finalizado ? (
                <motion.div
                  key={etapaAtual}
                  initial={{ opacity: 0, x: 20 }}
                  animate={{ opacity: 1, x: 0 }}
                  exit={{ opacity: 0, x: -20 }}
                  transition={{ duration: 0.3, ease: "easeOut" }}
                >
                  <TJPRCard className="w-full shadow-lg">
                    <div className="mb-6 flex items-center justify-between">
                      <TJPRBadge variant="info" icon="linear_scale">
                        Passo {historico.length + 1}
                      </TJPRBadge>
                    </div>

                    <h3 className="text-xl font-semibold text-tjpr-navy-800 dark:text-white mb-8 border-l-4 border-tjpr-gold pl-4">
                      {perguntaAtual.pergunta}
                    </h3>

                    <div className="space-y-4 mb-8">
                      {perguntaAtual.opcoes.map((opt, index) => (
                        <label
                          key={index}
                          className={`
                            flex items-center p-4 rounded-lg border cursor-pointer transition-all duration-200
                            ${selectedOption?.texto === opt.texto 
                              ? 'border-tjpr-navy-700 bg-blue-50 dark:bg-tjpr-navy-800/30' 
                              : 'border-tjpr-gray-200 dark:border-gray-700 hover:border-tjpr-navy-600 bg-white dark:bg-gray-800'}
                          `}
                        >
                          <input
                            type="radio"
                            name="pergunta"
                            className="hidden"
                            checked={selectedOption?.texto === opt.texto}
                            onChange={() => setSelectedOption(opt)}
                          />
                          <div className={`
                            w-5 h-5 rounded-full border-2 mr-4 flex items-center justify-center transition-colors
                            ${selectedOption?.texto === opt.texto ? 'border-tjpr-navy-800 dark:border-tjpr-navy-500 bg-tjpr-navy-800 dark:bg-tjpr-navy-500' : 'border-tjpr-gray-600'}
                          `}>
                            {selectedOption?.texto === opt.texto && <div className="w-2 h-2 bg-white rounded-full" />}
                          </div>
                          <span className="text-lg font-medium dark:text-gray-200">{opt.texto}</span>
                        </label>
                      ))}
                    </div>

                    <div className="flex items-center justify-between pt-6 border-t border-gray-200 dark:border-gray-700">
                      <TJPRButton
                        variant="ghost"
                        onClick={voltar}
                        disabled={historico.length === 0}
                        icon="arrow_back"
                      >
                        Voltar
                      </TJPRButton>
                      
                      <TJPRButton
                        variant="primary"
                        onClick={handleEscolha}
                        disabled={!selectedOption}
                        icon="arrow_forward"
                        iconPosition="right"
                      >
                        Avançar
                      </TJPRButton>
                    </div>
                  </TJPRCard>
                </motion.div>
              ) : (
                <motion.div
                  initial={{ opacity: 0, scale: 0.95 }}
                  animate={{ opacity: 1, scale: 1 }}
                >
                  <TJPRCard className="w-full shadow-lg">
                    <div className="flex items-center mb-6 pb-4 border-b border-gray-200 dark:border-gray-700">
                      <div className="w-12 h-12 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mr-4">
                        <CheckCircle2 className="w-7 h-7 text-tjpr-success dark:text-green-400" />
                      </div>
                      <div>
                        <h2 className="text-2xl font-semibold text-tjpr-navy-900 dark:text-white">Relatório / Minuta Gerada</h2>
                        <p className="text-tjpr-gray-600 dark:text-gray-400 text-sm mt-1">
                          As seleções realizadas formaram o conteúdo abaixo.
                        </p>
                      </div>
                    </div>

                    <div className="bg-tjpr-gray-50 dark:bg-gray-800/50 rounded-lg p-6 border border-tjpr-gray-200 dark:border-gray-700 min-h-[200px] mb-8">
                      <p className="whitespace-pre-wrap text-tjpr-gray-900 dark:text-gray-200 text-lg leading-relaxed">
                        {minutaFinal}
                      </p>
                    </div>

                    <div className="flex flex-col sm:flex-row gap-4 justify-end pt-4 border-t border-gray-200 dark:border-gray-700">
                      <TJPRButton 
                        variant="secondary"
                        onClick={copiarTexto}
                        icon="content_copy"
                      >
                        Copiar Conteúdo
                      </TJPRButton>
                      <TJPRButton 
                        variant="primary"
                        onClick={reiniciar}
                        icon="refresh"
                      >
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

      <footer className="py-6 text-center text-tjpr-gray-600 dark:text-gray-500 text-sm border-t border-gray-200 dark:border-gray-800 bg-white dark:bg-gray-900 z-10">
        <p>Tribunal de Justiça do Estado do Paraná © 2026. Todos os direitos reservados.</p>
        <p className="text-xs mt-1">Este é um sistema auxiliar e não substitui a validação humana.</p>
      </footer>
    </div>
  );
}
