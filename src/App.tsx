import React, { useState, useMemo } from 'react';
import { motion, AnimatePresence } from 'motion/react';
import { ChevronRight, RotateCcw, FileText, CheckCircle2, ArrowLeft, Copy, Download } from 'lucide-react';
import { fluxo, Option } from './data/flow';

export default function App() {
  const [etapaAtual, setEtapaAtual] = useState('inicio');
  const [historico, setHistorico] = useState<{ step: string; snippet: string }[]>([]);
  const [finalizado, setFinalizado] = useState(false);
  const [selectedOption, setSelectedOption] = useState<Option | null>(null);

  const perguntaAtual = fluxo[etapaAtual];

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
    // Simple feedback could be added here if needed
  };

  return (
    <div className="min-h-screen bg-[#f5f5f5] text-[#1a1a1a] font-sans selection:bg-blue-100">
      <div className="max-w-3xl mx-auto px-6 py-12 md:py-24">
        
        {/* Header */}
        <header className="mb-12 text-center">
          <motion.div 
            initial={{ opacity: 0, y: -20 }}
            animate={{ opacity: 1, y: 0 }}
            className="inline-flex items-center justify-center w-16 h-16 bg-white rounded-2xl shadow-sm mb-6 border border-gray-100"
          >
            <FileText className="w-8 h-8 text-blue-600" />
          </motion.div>
          <motion.h1 
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.2 }}
            className="text-3xl md:text-4xl font-semibold tracking-tight mb-3"
          >
            Gerador de Minutas
          </motion.h1>
          <motion.p 
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.3 }}
            className="text-gray-500 max-w-md mx-auto"
          >
            Responda as perguntas abaixo para gerar um documento personalizado automaticamente.
          </motion.p>
        </header>

        <main className="relative">
          <AnimatePresence mode="wait">
            {!finalizado ? (
              <motion.div
                key={etapaAtual}
                initial={{ opacity: 0, x: 20 }}
                animate={{ opacity: 1, x: 0 }}
                exit={{ opacity: 0, x: -20 }}
                transition={{ duration: 0.3, ease: "easeOut" }}
                className="bg-white rounded-3xl p-8 md:p-12 shadow-sm border border-gray-100"
              >
                <div className="mb-8">
                  <span className="text-xs font-bold uppercase tracking-widest text-blue-600 mb-2 block">
                    Passo {historico.length + 1}
                  </span>
                  <h2 className="text-2xl font-medium leading-tight">
                    {perguntaAtual.pergunta}
                  </h2>
                </div>

                <div className="space-y-3 mb-10">
                  {perguntaAtual.opcoes.map((opt, index) => (
                    <label
                      key={index}
                      className={`
                        flex items-center p-4 rounded-2xl border-2 cursor-pointer transition-all duration-200
                        ${selectedOption?.texto === opt.texto 
                          ? 'border-blue-600 bg-blue-50/50' 
                          : 'border-gray-100 hover:border-gray-200 bg-gray-50/30'}
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
                        ${selectedOption?.texto === opt.texto ? 'border-blue-600 bg-blue-600' : 'border-gray-300'}
                      `}>
                        {selectedOption?.texto === opt.texto && <div className="w-2 h-2 bg-white rounded-full" />}
                      </div>
                      <span className="text-lg font-medium">{opt.texto}</span>
                    </label>
                  ))}
                </div>

                <div className="flex items-center justify-between pt-6 border-t border-gray-100">
                  <button
                    onClick={voltar}
                    disabled={historico.length === 0}
                    className={`
                      flex items-center px-4 py-2 rounded-xl font-medium transition-colors
                      ${historico.length === 0 ? 'text-gray-300 cursor-not-allowed' : 'text-gray-500 hover:text-gray-800 hover:bg-gray-100'}
                    `}
                  >
                    <ArrowLeft className="w-4 h-4 mr-2" />
                    Voltar
                  </button>
                  
                  <button
                    onClick={handleEscolha}
                    disabled={!selectedOption}
                    className={`
                      flex items-center px-8 py-3 rounded-xl font-semibold transition-all
                      ${!selectedOption 
                        ? 'bg-gray-100 text-gray-400 cursor-not-allowed' 
                        : 'bg-blue-600 text-white hover:bg-blue-700 shadow-lg shadow-blue-200 active:scale-95'}
                    `}
                  >
                    Próximo
                    <ChevronRight className="w-5 h-5 ml-1" />
                  </button>
                </div>
              </motion.div>
            ) : (
              <motion.div
                initial={{ opacity: 0, scale: 0.95 }}
                animate={{ opacity: 1, scale: 1 }}
                className="bg-white rounded-3xl p-8 md:p-12 shadow-sm border border-gray-100"
              >
                <div className="flex items-center mb-8">
                  <div className="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mr-4">
                    <CheckCircle2 className="w-6 h-6 text-green-600" />
                  </div>
                  <div>
                    <h2 className="text-2xl font-semibold">Minuta Gerada</h2>
                    <p className="text-gray-500">Confira o rascunho do seu documento abaixo.</p>
                  </div>
                </div>

                <div className="relative group">
                  <div className="absolute -inset-1 bg-gradient-to-r from-blue-500 to-indigo-500 rounded-2xl blur opacity-10 group-hover:opacity-20 transition duration-1000 group-hover:duration-200"></div>
                  <div className="relative bg-gray-50 rounded-2xl p-8 border border-gray-200 min-h-[200px] leading-relaxed text-lg text-gray-800">
                    <p className="whitespace-pre-wrap">{minutaFinal}</p>
                  </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mt-10">
                  <button 
                    onClick={copiarTexto}
                    className="flex items-center justify-center px-6 py-4 bg-white border-2 border-gray-100 rounded-2xl font-semibold hover:border-gray-200 hover:bg-gray-50 transition-all active:scale-95"
                  >
                    <Copy className="w-5 h-5 mr-2 text-gray-600" />
                    Copiar Texto
                  </button>
                  <button 
                    onClick={reiniciar}
                    className="flex items-center justify-center px-6 py-4 bg-blue-600 text-white rounded-2xl font-semibold hover:bg-blue-700 shadow-lg shadow-blue-200 transition-all active:scale-95"
                  >
                    <RotateCcw className="w-5 h-5 mr-2" />
                    Criar Nova Minuta
                  </button>
                </div>
              </motion.div>
            )}
          </AnimatePresence>
        </main>

        {/* Footer Info */}
        <footer className="mt-12 text-center text-gray-400 text-sm">
          <p>© 2026 Gerador de Minutas Inteligente. Todos os direitos reservados.</p>
        </footer>
      </div>
    </div>
  );
}
