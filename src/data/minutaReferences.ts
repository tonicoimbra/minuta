export interface MinutaReference {
  id: string;
  label: string;
  confidence: 'alta' | 'média' | 'baixa';
  sourceFiles: string[];
  whyMatched: string;
  excerpt: string;
}

interface MinutaPathStepLike {
  stepKey: string;
  optionText: string;
}

const REFERENCE_DETAILS: Record<string, MinutaReference> = {
  'sem-preparo-exigivel': {
    id: 'sem-preparo-exigivel',
    label: 'Recurso sem exigência de preparo recursal',
    confidence: 'alta',
    sourceFiles: [],
    whyMatched:
      'Usado para AREsp, AgInt e EDcl, hipóteses em que o próprio fluxo conclui pela regularidade sem necessidade de minuta de saneamento do preparo.',
    excerpt:
      'Sem PDF-base específico: o tema foi mantido como conclusão normativa do fluxo, pois não depende de regularização de preparo.'
  },
  'ausencia-guia-apenas-comprovante': {
    id: 'ausencia-guia-apenas-comprovante',
    label: 'Ausência de guia de recolhimento, com comprovante já juntado',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0019611-48.2025.8.16.0031 Pet - CUSTAS EM DOBRO RE - AUSENCIA GUIA RECOLHIMENTO - JUNTOU APENAS COMPROVANTE - EXTRAORDINÁRIO.pdf'
    ],
    whyMatched:
      'Selecionado para cenários em que existe indício de pagamento, mas falta a formalização da guia correspondente.',
    excerpt:
      '“A parte recorrente não comprovou o recolhimento do preparo, visto que juntou os comprovantes de pagamento (...) sem as respectivas guias de recolhimento.”'
  },
  'apenas-guias-sem-comprovante': {
    id: 'apenas-guias-sem-comprovante',
    label: 'Guias juntadas sem comprovante de pagamento',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0001137-80.2026.8.16.0035 Pet - CUSTAS EM DOBRO - JUNTOU APENAS AS GUIAS.pdf',
      'minutas/GABY/0009906-85.2026.8.16.0000 Pet - INTIMAÇÃO CUSTAS EM DOBRO - JUNTOU APENAS GUIA - SEM COMPROVANTES + DECRETO. - DAISY.pdf'
    ],
    whyMatched:
      'Usado quando as guias existem, mas o pagamento efetivo não foi comprovado por recibo idôneo.',
    excerpt:
      '“A parte não comprovou o recolhimento do preparo, visto que juntou aos autos tão somente as guias de recolhimento (...) sem os respectivos comprovantes de pagamento.”'
  },
  'agendamento-gru-ou-autenticacao': {
    id: 'agendamento-gru-ou-autenticacao',
    label: 'Comprovante GRU em agendamento ou autenticação pendente',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0000211-18.2026.8.16.0062 Pet - INTIMAÇÃO CUSTAS DOBRO - COMPROVANTE GRU EM PROCESSO DE AUTENTICAÇÃO + FUNJUS + DECRETO.pdf'
    ],
    whyMatched:
      'Base usada para irregularidades da GRU em que o documento não demonstra débito efetivo, apenas operação pendente.',
    excerpt:
      '“O comprovante de pagamento da guia GRU (...) consta ‘em processo de autenticação’ e não é documento apto a comprovar o efetivo recolhimento das custas.”'
  },
  'agendamento-funjus': {
    id: 'agendamento-funjus',
    label: 'Comprovante FUNJUS em agendamento',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf'
    ],
    whyMatched:
      'Aplicado quando a irregularidade atinge especificamente o recolhimento local do FUNJUS, ainda sem débito confirmado.',
    excerpt:
      '“O recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, já que o comprovante de agendamento bancário (...) não é documento apto a comprovar o efetivo recolhimento.”'
  },
  'numero-processo-divergente': {
    id: 'numero-processo-divergente',
    label: 'Guia com número de processo divergente ou identificação inadequada',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0148996-45.2025.8.16.0000 Pet - INTIMAÇÃO N. ÚNICO PROCESSO GUIA GRU DIVERGENTE + FUNJUS.pdf'
    ],
    whyMatched:
      'Usado para hipóteses em que a guia não permite vinculação segura ao processo correto.',
    excerpt:
      '“A guia de recolhimento (...) refere-se ao processo (...) e não restou comprovado o recolhimento das custas devidas no presente recurso.”'
  },
  'codigo-barras-ou-valor-divergente': {
    id: 'codigo-barras-ou-valor-divergente',
    label: 'Divergência entre guia e comprovante / valor não aferível',
    confidence: 'média',
    sourceFiles: [
      'minutas/GABY/0139226-28.2025.8.16.0000 Pet - DOBRO - VALOR NOVO GRU - CÓDIGO DE BARRAS não corresponde .pdf'
    ],
    whyMatched:
      'Aplicado aos cenários de valor divergente ou inconsistência material entre guia e comprovante, quando o pagamento devido não pode ser aferido com segurança.',
    excerpt:
      '“Não há correspondência entre o código de barras constante nas guias de recolhimento (...) e o dos comprovantes de pagamento (...).”'
  },
  'guia-de-outro-processo': {
    id: 'guia-de-outro-processo',
    label: 'Guia ou comprovante vinculado a outro processo',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0013980-20.2025.8.16.0130 Pet - INTIMAÇÃO DOBRO - GUIAS DE OUTRO PROCESSO.pdf',
      'minutas/VANESSA/0020823-03.2025.8.16.0194 Pet.pdf'
    ],
    whyMatched:
      'Escolhido para reaproveitamento indevido de guias, comprovantes ou justaposição de recolhimento já associado a outro feito. A segunda rodada localizou também um caso específico de FUNJUS que não se refere aos presentes autos.',
    excerpt:
      '“O processo indicado nas guias de recolhimento (...) não se refere aos presentes autos e não comprova o recolhimento das custas devidas.” / “A guia de recolhimento das custas recursais destinadas a este Tribunal de Justiça (FUNJUS) não se refere aos presentes autos.”'
  },
  'pagamento-em-dobro-geral': {
    id: 'pagamento-em-dobro-geral',
    label: 'Intimação para recolhimento em dobro',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0000296-75.2026.8.16.0103 Pet - CUSTAS EM DOBRO - INTEMEPSTIVO.pdf'
    ],
    whyMatched:
      'Base principal para cenários em que o preparo não foi comprovado no ato e a regularização adequada é o recolhimento em dobro.',
    excerpt:
      '“Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso especial, intime-se a parte recorrente (...) para (...) o pagamento das custas recursais em dobro.”'
  },
  'pagamento-em-dobro-agendamento': {
    id: 'pagamento-em-dobro-agendamento',
    label: 'Intimação em dobro com comprovantes ainda em agendamento',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0003802-77.2026.8.16.0000 Pet - INTIMAÇÃO DOBRO - AGENDAMENTO CUSTAS.pdf'
    ],
    whyMatched:
      'Usado quando a falha no preparo em dobro decorre de comprovantes pendentes, sem débito bancário finalizado.',
    excerpt:
      '“Verificou-se que a parte recorrente não comprovou o recolhimento do preparo, já que os comprovantes de agendamento bancário (...) não demonstram quitação efetiva.”'
  },
  'desercao-apos-intimacao': {
    id: 'desercao-apos-intimacao',
    label: 'Deserção após não cumprimento da regularização',
    confidence: 'alta',
    sourceFiles: [
      'minutas/GABY/0121833-90.2025.8.16.0000 Pet - INADMISSÃO POR DESERTO - INTIMADO EM DOBRO - PAGOU SIMPLES.pdf'
    ],
    whyMatched:
      'Referência-base para os cenários em que a parte já foi intimada a sanar o preparo e não regularizou corretamente no prazo.',
    excerpt:
      '“A recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal (...) o que não atende à determinação (...) e por isso este recurso é deserto.”'
  },
  'pagamento-destempo-derivado': {
    id: 'pagamento-destempo-derivado',
    label: 'Recolhimento feito a destempo',
    confidence: 'baixa',
    sourceFiles: [
      'minutas/DMG/0151935-95.2025.8.16.0000 Pet - intempestivo.pdf',
      'minutas/VANESSA/0000859-84.2026.8.16.0098 Pet.pdf'
    ],
    whyMatched:
      'A varredura integral do acervo não localizou exemplar literal de preparo “pago a destempo/PAD”. Os arquivos apontados são os mais próximos e confirmam a família de intempestividade por interposição após o prazo legal, razão pela qual o cenário segue por analogia normativa.',
    excerpt:
      'Sem PDF-base literal para PAD: os precedentes localizados tratam de recurso especial apresentado após o prazo legal e reforçam a solução normativa já modelada no fluxo.'
  },
  'autos-fisicos-derivado': {
    id: 'autos-fisicos-derivado',
    label: 'Autos físicos não digitalizados com porte de remessa',
    confidence: 'baixa',
    sourceFiles: [],
    whyMatched:
      'A busca integral de texto no acervo não encontrou ocorrência de “porte de remessa”, “porte de retorno”, “processo físico” ou “não digitalizado” em minuta equivalente. O fluxo foi preservado como fonte principal até que um exemplar literal seja incluído no banco.',
    excerpt:
      'Sem PDF-base literal no acervo após nova varredura: cenário mantido a partir da regra processual já modelada no aplicativo.'
  }
};

const REFERENCE_BY_INITIAL_OPTION: Record<string, string> = {
  'Agravo em REsp (AREsp)': 'sem-preparo-exigivel',
  'Agravo Interno (AgInt)': 'sem-preparo-exigivel',
  'Embargos de Declaração (EDcl)': 'sem-preparo-exigivel'
};

const REFERENCE_BY_STEP: Record<string, Record<string, string>> = {
  comp_falta_guia: {
    GRU: 'ausencia-guia-apenas-comprovante',
    FUNJUS: 'ausencia-guia-apenas-comprovante'
  },
  comp_falta_comprovante: {
    GRU: 'apenas-guias-sem-comprovante',
    FUNJUS: 'apenas-guias-sem-comprovante'
  },
  comp_irr_gru: {
    'Agendamento / em análise (transação não efetivada)': 'agendamento-gru-ou-autenticacao',
    'Valor divergente / insuficiente (e val. falso)': 'codigo-barras-ou-valor-divergente',
    'Sem número de processo / número incorreto': 'numero-processo-divergente',
    'Pago a destempo - PAD (após o prazo recursal)': 'pagamento-destempo-derivado',
    'Guia pertencente a outro processo': 'guia-de-outro-processo'
  },
  comp_irr_funjus: {
    'Agendamento / em análise': 'agendamento-funjus',
    'Valor divergente / insuficiente': 'codigo-barras-ou-valor-divergente',
    'Sem número de processo / número incorreto': 'numero-processo-divergente',
    'Pago a destempo - PAD': 'pagamento-destempo-derivado',
    'Guia pertencente a outro processo': 'guia-de-outro-processo'
  },
  dobro_falta_guia: {
    '2 agendamentos / em análise': 'pagamento-em-dobro-agendamento',
    '2 valores divergentes / insuficientes': 'codigo-barras-ou-valor-divergente',
    '2 guias sem número / número incorreto de processo': 'numero-processo-divergente',
    '2 não localizadas / não disponíveis (N/D)': 'pagamento-em-dobro-geral',
    '2 guias pertencentes a outros processos': 'guia-de-outro-processo'
  },
  dobro_falta_comprovante: {
    '2 agendamentos / em análise': 'pagamento-em-dobro-agendamento',
    '2 valores divergentes / insuficientes': 'codigo-barras-ou-valor-divergente',
    '2 guias sem número / número incorreto de processo': 'numero-processo-divergente',
    '2 não localizados / não disponíveis (N/D)': 'apenas-guias-sem-comprovante',
    '2 pertencentes a outros processos': 'guia-de-outro-processo'
  },
  dobro_nd: {
    '3 guias ausentes / incorretas (GRU + FUNJUS + porte de remessa)': 'autos-fisicos-derivado'
  },
  desercao_gru: {
    'Agendamento não efetivado': 'desercao-apos-intimacao',
    'Valor divergente (insuficiente)': 'desercao-apos-intimacao',
    'Sem número de processo / número incorreto': 'desercao-apos-intimacao',
    'Não localizada / não disponível (N/D)': 'desercao-apos-intimacao',
    'Guia pertencente a outro processo': 'guia-de-outro-processo'
  },
  desercao_ambas: {
    'Agendamentos não efetivados': 'desercao-apos-intimacao',
    'Valores divergentes': 'desercao-apos-intimacao',
    'Sem número de processo / número incorreto': 'desercao-apos-intimacao',
    'Não localizadas / não disponíveis (N/D)': 'desercao-apos-intimacao',
    'Guias pertencentes a outros processos': 'guia-de-outro-processo'
  },
  desercao_funjus: {
    'Agendamento não efetivado': 'desercao-apos-intimacao',
    'Valor divergente (insuficiente)': 'desercao-apos-intimacao',
    'Sem número de processo / número incorreto': 'desercao-apos-intimacao',
    'Não localizada / não disponível (N/D)': 'desercao-apos-intimacao',
    'Justaposição de guia FUNJUS': 'guia-de-outro-processo'
  }
};

export const findMinutaReference = (
  path: MinutaPathStepLike[]
): MinutaReference | undefined => {
  if (path.length === 1) {
    const initialReferenceId = REFERENCE_BY_INITIAL_OPTION[path[0].optionText];
    return initialReferenceId ? REFERENCE_DETAILS[initialReferenceId] : undefined;
  }

  const lastStep = path[path.length - 1];
  const referenceId = REFERENCE_BY_STEP[lastStep.stepKey]?.[lastStep.optionText];

  return referenceId ? REFERENCE_DETAILS[referenceId] : undefined;
};
