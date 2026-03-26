export interface Option {
  texto: string;
  proximo: string;
  snippet: string;
}

export interface Question {
  pergunta: string;
  opcoes: Option[];
}

export interface Flow {
  [key: string]: Question;
}

export const fluxo: Flow = {
  inicio: {
    pergunta: "Qual a classificação da irregularidade no preparo?",
    opcoes: [
      { texto: "Complementação", proximo: "complementacao", snippet: "Trata-se de caso de complementação de preparo." },
      { texto: "Deserção", proximo: "desercao", snippet: "Trata-se de hipótese de deserção por irregularidade no preparo." },
      { texto: "Pagamento em Dobro", proximo: "pagamento_dobro", snippet: "Trata-se de hipótese de pagamento em dobro das custas." }
    ]
  },
  
  // ==========================================
  // RAMO: COMPLEMENTAÇÃO
  // ==========================================
  complementacao: {
    pergunta: "Qual o tipo de recurso/custas?",
    opcoes: [
      { texto: "Recurso Inominado", proximo: "comp_rec_inominado", snippet: "Referente a Recurso Inominado." },
      { texto: "Recurso de Apelação", proximo: "comp_rec_apelacao", snippet: "Referente a Recurso de Apelação." },
      { texto: "Agravo de Instrumento", proximo: "comp_agravo", snippet: "Referente a Agravo de Instrumento." },
      { texto: "Custas Iniciais", proximo: "comp_custas", snippet: "Referente a Custas Iniciais." }
    ]
  },
  comp_rec_inominado: {
    pergunta: "Qual a guia a ser complementada?",
    opcoes: [
      { texto: "GRU", proximo: "final", snippet: "Intima-se para complementação da guia GRU pertinente." },
      { texto: "FUNJUS", proximo: "final", snippet: "Intima-se para complementação da guia FUNJUS pertinente." }
    ]
  },
  comp_rec_apelacao: {
    pergunta: "Qual a guia a ser complementada?",
    opcoes: [
      { texto: "GRU", proximo: "final", snippet: "Intima-se para complementação da guia GRU." },
      { texto: "FUNJUS", proximo: "final", snippet: "Intima-se para complementação da guia FUNJUS." }
    ]
  },
  comp_agravo: {
    pergunta: "Qual a situação do agravo?",
    opcoes: [
      { texto: "Agravo de Instrumento - Com pedido", proximo: "final", snippet: "Complementação em Agravo de instrumento com pedido expresso." },
      { texto: "Agravo de Instrumento - Sem pedido", proximo: "final", snippet: "Complementação em Agravo de instrumento sem pedido expresso." },
      { texto: "Agravo / FUNJUS, custas iniciais, conciliação", proximo: "final", snippet: "Complementação relativa a FUNJUS, custas iniciais ou conciliação no agravo." },
      { texto: "Agravo / FUNJUS", proximo: "final", snippet: "Complementação relativa à guia FUNJUS no agravo." },
      { texto: "Agravo / Comprovante", proximo: "final", snippet: "Falta de comprovante válido vinculado ao agravo." }
    ]
  },
  comp_custas: {
    pergunta: "Qual a situação das custas?",
    opcoes: [
      { texto: "Agravo de Instrumento - Com pedido", proximo: "final", snippet: "Custas iniciais relativas a Agravo de instrumento com pedido." },
      { texto: "Agravo de Instrumento - Sem pedido", proximo: "final", snippet: "Custas iniciais relativas a Agravo de instrumento sem pedido." },
      { texto: "Agravo / FUNJUS, custas iniciais, conciliação", proximo: "final", snippet: "Referente a FUNJUS, iniciais e conciliação atreladas ao agravo." },
      { texto: "Agravo / FUNJUS", proximo: "final", snippet: "Custas referentes à guia FUNJUS pendentes." },
      { texto: "Agravo / Comprovante", proximo: "final", snippet: "Falta de comprovante efetivo das custas iniciais." }
    ]
  },

  // ==========================================
  // RAMO: DESERÇÃO
  // ==========================================
  desercao: {
    pergunta: "Qual o escopo da deserção?",
    opcoes: [
      { texto: "Recurso Inominado / INOMINADO", proximo: "desercao_motivos_gerais", snippet: "Decreto de deserção no Recurso Inominado." },
      { texto: "Recurso de Apelação / GRU E FUNJUS", proximo: "desercao_motivos_gerais", snippet: "Decreto de deserção no Recurso de Apelação (GRU e FUNJUS não recolhidas adequadamente)." },
      { texto: "Não pagou / RJE", proximo: "desercao_motivos_gerais", snippet: "Decreto de deserção por falta de pagamento (RJE)." }
    ]
  },
  desercao_motivos_gerais: {
    pergunta: "Qual o motivo da irregularidade que gerou a deserção?",
    opcoes: [
      { texto: "Agendamento sem saldo", proximo: "final", snippet: "Constatado agendamento bancário não efetivado por falta de saldo." },
      { texto: "Processo físico", proximo: "final", snippet: "Trâmite prejudicado por se tratar de processo físico com pendências documentais." },
      { texto: "Outros (processo criminal...)", proximo: "final", snippet: "Irregularidade justificada sob outras razões, como envolver processo criminal." },
      { texto: "Prazo em dobro", proximo: "final", snippet: "Situação que afasta a deserção face à incidência de prazo em dobro." },
      { texto: "Final", proximo: "final", snippet: "Determinada a deserção final do recurso processado." }
    ]
  },

  // ==========================================
  // RAMO: PAGAMENTO EM DOBRO (Intempestividade / Outros)
  // ==========================================
  pagamento_dobro: {
    pergunta: "Em qual recurso ou situação ocorreu?",
    opcoes: [
      { texto: "Recurso Apelação / INOMINADO", proximo: "dobro_guia", snippet: "Penalidade em sede de Recurso de Apelação / Inominado." },
      { texto: "Agravo de Instrumento / CUSTAS INICIAIS", proximo: "dobro_guia", snippet: "Penalidade em sede de Agravo de Instrumento (custas iniciais)." },
      { texto: "Intempestividade", proximo: "dobro_guia", snippet: "Reconhecimento da intempestividade do protocolo do preparo." }
    ]
  },
  dobro_guia: {
    pergunta: "Qual a situação documental do recolhimento?",
    opcoes: [
      { texto: "Guia", proximo: "dobro_com_guia", snippet: "Ocorreu a juntada de guia." },
      { texto: "Sem Guia", proximo: "dobro_sem_guia", snippet: "Não constam guias anexadas nos autos." }
    ]
  },
  dobro_com_guia: {
    pergunta: "Qual a pendência constatada na guia?",
    opcoes: [
      { texto: "Agendamento sem saldo", proximo: "final", snippet: "Juntado comprovante de agendamento, o qual não se confirmou por ausência de saldo." },
      { texto: "Processo físico", proximo: "final", snippet: "Falha de adequação por se tratar de processo não integralmente digitalizado (físico)." },
      { texto: "Outros (processo criminal...)", proximo: "final", snippet: "Situação alheia à regra geral (ex: processo criminal)." },
      { texto: "Prazo em dobro", proximo: "final", snippet: "Observância da regra do prazo em dobro." }
    ]
  },
  dobro_sem_guia: {
    pergunta: "Qual a razão para a ausência de guia?",
    opcoes: [
      { texto: "Guia inválida", proximo: "final", snippet: "O documento acostado é considerado guia inválida, sem código de barras correspondente." },
      { texto: "Agendamento sem saldo", proximo: "final", snippet: "Tentativa de pagamento não efetivada (agendamento sem fundos)." },
      { texto: "Processo físico", proximo: "final", snippet: "Ausência justificada equivocadamente como processo físico." },
      { texto: "Outros (processo criminal...)", proximo: "final", snippet: "Justificativa embasada em especificidades procedimentais (outros/criminal)." },
      { texto: "Final", proximo: "final", snippet: "Reconhecimento definitivo da ausência de recolhimento." }
    ]
  }
};
