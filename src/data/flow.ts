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
    pergunta: "Qual o tipo do contrato?",
    opcoes: [
      { texto: "Aluguel", proximo: "aluguel_tipo", snippet: "CONTRATO DE LOCAÇÃO" },
      { texto: "Venda", proximo: "venda_tipo", snippet: "CONTRATO DE COMPRA E VENDA" },
      { texto: "Prestação de Serviço", proximo: "servico_tipo", snippet: "CONTRATO DE PRESTAÇÃO DE SERVIÇOS" }
    ]
  },
  aluguel_tipo: {
    pergunta: "O imóvel é comercial ou residencial?",
    opcoes: [
      { texto: "Residencial", proximo: "aluguel_prazo", snippet: "residencial," },
      { texto: "Comercial", proximo: "aluguel_prazo", snippet: "comercial," }
    ]
  },
  aluguel_prazo: {
    pergunta: "Qual o prazo de validade?",
    opcoes: [
      { texto: "12 meses", proximo: "final", snippet: "com validade de 12 meses, renováveis automaticamente." },
      { texto: "24 meses", proximo: "final", snippet: "com validade de 24 meses, sem renovação automática." },
      { texto: "36 meses", proximo: "final", snippet: "com validade de 36 meses, com cláusula de rescisão antecipada." }
    ]
  },
  venda_tipo: {
    pergunta: "Pagamento à vista ou parcelado?",
    opcoes: [
      { texto: "À vista", proximo: "venda_entrega", snippet: "com pagamento integral à vista no ato da assinatura," },
      { texto: "Parcelado", proximo: "venda_entrega", snippet: "com pagamento parcelado em 12 vezes mensais," }
    ]
  },
  venda_entrega: {
    pergunta: "Quando será a entrega das chaves?",
    opcoes: [
      { texto: "Imediata", proximo: "final", snippet: "e entrega imediata das chaves." },
      { texto: "Após quitação", proximo: "final", snippet: "e entrega das chaves somente após a quitação total." }
    ]
  },
  servico_tipo: {
    pergunta: "Qual a natureza do serviço?",
    opcoes: [
      { texto: "Consultoria", proximo: "servico_pagamento", snippet: "de consultoria técnica especializada," },
      { texto: "Desenvolvimento", proximo: "servico_pagamento", snippet: "de desenvolvimento de software customizado," },
      { texto: "Manutenção", proximo: "servico_pagamento", snippet: "de manutenção preventiva e corretiva," }
    ]
  },
  servico_pagamento: {
    pergunta: "Como será o faturamento?",
    opcoes: [
      { texto: "Mensal fixo", proximo: "final", snippet: "com faturamento mensal fixo." },
      { texto: "Por hora", proximo: "final", snippet: "com faturamento baseado em horas trabalhadas." },
      { texto: "Por entrega", proximo: "final", snippet: "com faturamento condicionado à entrega de marcos (milestones)." }
    ]
  }
};
