export interface MinutaTemplatePathStep {
  stepKey: string;
  optionText: string;
}

export interface MinutaTemplate {
  id: string;
  title: string;
  text: string;
  sourceFiles: readonly string[];
}

type ResourceKind = 'resp' | 're';
type GuideKind = 'GRU' | 'FUNJUS';

interface ResourceProfile {
  kind: ResourceKind;
  shortLabel: string;
  fullLabel: string;
  superiorCourtName: string;
  superiorCourtShort: string;
  federalNormPlaceholder: string;
}

// O acervo real do TJPR mostra REsp e RE com custas locais (FUNJUS) e guia federal.
// O que muda, de forma determinante, e a Corte Superior destinataria da GRU.
const RESOURCE_PROFILES: Record<ResourceKind, ResourceProfile> = {
  resp: {
    kind: 'resp',
    shortLabel: 'REsp',
    fullLabel: 'Recurso Especial',
    superiorCourtName: 'Superior Tribunal de Justica',
    superiorCourtShort: 'STJ',
    federalNormPlaceholder: '[ATO NORMATIVO DE CUSTAS DO STJ VIGENTE]'
  },
  re: {
    kind: 're',
    shortLabel: 'RE',
    fullLabel: 'Recurso Extraordinario',
    superiorCourtName: 'Supremo Tribunal Federal',
    superiorCourtShort: 'STF',
    federalNormPlaceholder: '[ATO NORMATIVO DE CUSTAS DO STF VIGENTE]'
  }
};

const SOURCE_FILES = {
  common: {
    semComprovanteComplemento: [
      'minutas/VANESSA/0000281-66.2026.8.16.0084 Pet.pdf'
    ],
    agendamentoFunjusComplemento: [
      'minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf',
      'minutas/GABY/0003396-38.2025.8.16.0179 Pet - COMPROVANTE FUNJUS - EM PROCESSO DE AUTENTICACAO - INTIMADO COMPROVAR CORRETAMENTE - EQUIVALE A AGENDAMENTO.pdf'
    ],
    outroProcessoFunjusComplemento: [
      'minutas/VANESSA/0020823-03.2025.8.16.0194 Pet.pdf'
    ],
    dobroAgendamento: [
      'minutas/GABY/0003802-77.2026.8.16.0000 Pet - INTIMACAO DOBRO - AGENDAMENTO CUSTAS.pdf'
    ],
    dobroSemComprovante: [
      'minutas/GABY/0001137-80.2026.8.16.0035 Pet - CUSTAS EM DOBRO - JUNTOU APENAS AS GUIAS.pdf'
    ],
    intempestividadeProxima: [
      'minutas/DMG/0151935-95.2025.8.16.0000 Pet - intempestivo.pdf',
      'minutas/VANESSA/0000859-84.2026.8.16.0098 Pet.pdf'
    ],
    desercaoSemGuia: [
      'minutas/DMG/0001365-67.2026.8.16.0031 Pet deserto.pdf'
    ]
  },
  resp: {
    semGuiaDobro: [
      'minutas/GABY/0013980-20.2025.8.16.0130 Pet - INTIMACAO DOBRO - GUIAS DE OUTRO PROCESSO.pdf'
    ],
    codigoBarrasDobro: [
      'minutas/GABY/0139226-28.2025.8.16.0000 Pet - DOBRO - VALOR NOVO GRU - CODIGO DE BARRAS nao corresponde .pdf'
    ],
    numeroProcessoDobro: [
      'minutas/GABY/0148996-45.2025.8.16.0000 Pet - INTIMACAO N. UNICO PROCESSO GUIA GRU DIVERGENTE + FUNJUS.pdf'
    ],
    outroProcessoDobro: [
      'minutas/GABY/0013980-20.2025.8.16.0130 Pet - INTIMACAO DOBRO - GUIAS DE OUTRO PROCESSO.pdf'
    ],
    desercaoDobroSimples: [
      'minutas/GABY/0000550-66.2026.8.16.0000 Pet - INADMISSAO - DESERTO - DOBRO - COMPROVOU SIMPLES- RECONSIDERACAO.pdf',
      'minutas/VANESSA/0139226-28.2025.8.16.0000 Pet.pdf'
    ]
  },
  re: {
    semGuiaDobro: [
      'minutas/GABY/0019611-48.2025.8.16.0031 Pet - CUSTAS EM DOBRO RE - AUSENCIA GUIA RECOLHIMENTO - JUNTOU APENAS COMPROVANTE - EXTRAORDINARIO.pdf'
    ],
    codigoBarrasDobro: [
      'minutas/GABY/0019611-48.2025.8.16.0031 Pet - CUSTAS EM DOBRO RE - AUSENCIA GUIA RECOLHIMENTO - JUNTOU APENAS COMPROVANTE - EXTRAORDINARIO.pdf'
    ],
    numeroProcessoDobro: [
      'minutas/GABY/0019611-48.2025.8.16.0031 Pet - CUSTAS EM DOBRO RE - AUSENCIA GUIA RECOLHIMENTO - JUNTOU APENAS COMPROVANTE - EXTRAORDINARIO.pdf'
    ],
    outroProcessoDobro: [
      'minutas/GABY/0019611-48.2025.8.16.0031 Pet - CUSTAS EM DOBRO RE - AUSENCIA GUIA RECOLHIMENTO - JUNTOU APENAS COMPROVANTE - EXTRAORDINARIO.pdf'
    ],
    desercaoDobroSimples: [
      'minutas/GABY/0016324-38.2025.8.16.0044 Pet - INADMISSAO - DESERTO - J.G. INDEFERIDA - INTIMADA CUSTAS - DECORREU PRAZO - RE - EXTRAORDINARIO.pdf'
    ]
  }
} as const;

const buildHeader = (): string => `TRIBUNAL DE JUSTICA DO ESTADO DO PARANA
1a VICE-PRESIDENCIA

Autos n. [NUMERO DO PROCESSO]

Recurso: [IDENTIFICACAO DO RECURSO]
Classe Processual: [CLASSE PROCESSUAL]
Assunto Principal: [ASSUNTO PRINCIPAL]
Requerente(s): [REQUERENTE(S)]
Requerido(s): [REQUERIDO(S)]`;

const buildFooter = (): string => `Diligencias necessarias.
Curitiba, data da assinatura digital.
Desembargador [NOME DO DESEMBARGADOR]
1o Vice-Presidente do Tribunal de Justica do Estado do Parana`;

const composeTemplate = (
  id: string,
  title: string,
  body: string,
  sourceFiles: readonly string[]
): MinutaTemplate => ({
  id,
  title,
  text: `${buildHeader()}

${body}

${buildFooter()}`,
  sourceFiles
});

const buildLocalSimpleLine = (): string =>
  `- [VALOR FUNJUS], ao Fundo da Justica - FUNJUS, referente ao recolhimento das custas locais devidas a este Tribunal de Justica, por meio de guia gerada no portal do TJPR.`;

const buildLocalDoubleLine = (): string =>
  `- [VALOR FUNJUS EM DOBRO], ao Fundo da Justica - FUNJUS, referente ao recolhimento em dobro das custas locais devidas a este Tribunal de Justica, por meio de guia gerada no portal do TJPR.`;

const buildFederalSimpleLine = (profile: ResourceProfile): string =>
  `- [VALOR DAS CUSTAS ${profile.superiorCourtShort}], por meio da guia GRU-COBRANCA, referente ao recolhimento das custas devidas ao ${profile.superiorCourtName}, conforme ${profile.federalNormPlaceholder}.`;

const buildFederalDoubleLine = (profile: ResourceProfile): string =>
  `- [VALOR DAS CUSTAS ${profile.superiorCourtShort} EM DOBRO], por meio da guia GRU-COBRANCA, referente ao recolhimento em dobro das custas devidas ao ${profile.superiorCourtName}, conforme ${profile.federalNormPlaceholder}.`;

const buildPorteDoubleLine = (): string =>
  `- [VALOR DO PORTE DE REMESSA E RETORNO EM DOBRO], referente ao recolhimento em dobro do porte de remessa e retorno, se exigivel no caso concreto.`;

const buildProofGuidance = (
  profile: ResourceProfile,
  includeFederalReceiptGuidance: boolean
): string => {
  const guidance = [
    'Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o codigo de barras de forma visivel e legivel, e imprescindivel para fins de comprovacao do efetivo recolhimento do preparo.'
  ];

  if (includeFederalReceiptGuidance) {
    guidance.push(
      `No caso do pagamento federal ter sido realizado por meio da plataforma digital PagTesouro, a parte devera apresentar o recibo enviado pelo ${profile.superiorCourtShort} por e-mail, contendo os dados de identificacao do contribuinte e o numero unico do processo.`
    );
  }

  return guidance.join('\n\n');
};

const buildDoubleAmountBlock = (
  profile: ResourceProfile,
  includePorte: boolean
): string => {
  const lines = [buildLocalDoubleLine(), buildFederalDoubleLine(profile)];

  if (includePorte) {
    lines.push(buildPorteDoubleLine());
  }

  return `Para tanto, a parte recorrente devera comprovar o recolhimento dos seguintes valores:\n${lines.join('\n')}`;
};

const buildComplementTemplate = (
  profile: ResourceProfile,
  id: string,
  title: string,
  bodyIntro: string,
  bodyOrder: string,
  files: readonly string[],
  includeFederalReceiptGuidance = false
): MinutaTemplate =>
  composeTemplate(
    id,
    title,
    `${bodyIntro}

Sendo assim, intime-se a parte recorrente, nos termos do artigo 1.007, paragrafos 2o e 7o, do Codigo de Processo Civil, para que, no prazo de 5 (cinco) dias, regularize o preparo recursal, sob pena de desercao.

${bodyOrder}

${buildProofGuidance(profile, includeFederalReceiptGuidance)}`,
    files
  );

const buildDobroTemplate = (
  profile: ResourceProfile,
  id: string,
  title: string,
  bodyIntro: string,
  bodyOrder: string,
  files: readonly string[],
  includeFederalReceiptGuidance = true
): MinutaTemplate =>
  composeTemplate(
    id,
    title,
    `${bodyIntro}

Sendo assim, diante da ausencia de comprovacao do pagamento das custas no ato da interposicao do ${profile.fullLabel.toLowerCase()}, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, sob pena de desercao, nos termos do artigo 1.007, paragrafo 4o, do Codigo de Processo Civil, comprove o recolhimento em dobro do preparo recursal.

${bodyOrder}

${buildProofGuidance(profile, includeFederalReceiptGuidance)}`,
    files
  );

const buildDesercaoTemplate = (
  profile: ResourceProfile,
  id: string,
  title: string,
  bodyIntro: string,
  files: readonly string[]
): MinutaTemplate =>
  composeTemplate(
    id,
    title,
    `${bodyIntro}

Todavia, a parte recorrente nao cumpriu a determinacao no prazo assinado, razao pela qual o vicio permanece insanado.

Sendo assim, nos termos do artigo 1.007, paragrafos 4o e 5o, do Codigo de Processo Civil, declaro a desercao do ${profile.fullLabel.toLowerCase()}.

Diante do exposto, inadmito o ${profile.fullLabel.toLowerCase()} interposto.`,
    files
  );

const mergeSources = (
  ...groups: readonly (readonly string[])[]
): readonly string[] =>
  groups.flatMap(group => [...group]);

const getResourceProfile = (path: MinutaTemplatePathStep[]): ResourceProfile => {
  const initialChoice = path[0]?.optionText;
  return initialChoice === 'Recurso Extraordinario (RE)' ||
    initialChoice === 'Recurso Extraordinário (RE)'
    ? RESOURCE_PROFILES.re
    : RESOURCE_PROFILES.resp;
};

const getGuideDescriptor = (profile: ResourceProfile, guide: GuideKind): string =>
  guide === 'GRU'
    ? `guia GRU referente as custas devidas ao ${profile.superiorCourtName}`
    : 'guia FUNJUS referente as custas locais devidas a este Tribunal de Justica';

const getProofPlaceholder = (guide: GuideKind): string =>
  guide === 'GRU'
    ? '[MOVIMENTO DA GUIA/COMPROVANTE GRU]'
    : '[MOVIMENTO DA GUIA/COMPROVANTE FUNJUS]';

const buildMissingGuideComplement = (
  profile: ResourceProfile,
  guide: GuideKind
): MinutaTemplate => {
  const guideDescriptor = getGuideDescriptor(profile, guide);
  const includeFederalReceiptGuidance = guide === 'GRU';

  return buildComplementTemplate(
    profile,
    `complemento-falta-guia-${profile.kind}-${guide.toLowerCase()}`,
    `${profile.shortLabel} - complementacao por ausencia de guia ${guide}`,
    guide === 'GRU'
      ? `A parte recorrente nao comprovou regularmente o preparo recursal, pois juntou apenas o comprovante de pagamento referente as custas devidas ao ${profile.superiorCourtName}, sem a respectiva guia GRU.`
      : 'A parte recorrente nao comprovou regularmente o preparo recursal, pois juntou apenas o comprovante de pagamento referente as custas locais, sem a respectiva guia FUNJUS.',
    `Para regularizacao, devera juntar a ${guideDescriptor} correspondente ao recolhimento ja efetuado, em formato legivel e com a correta identificacao do processo.`,
    guide === 'GRU'
      ? SOURCE_FILES[profile.kind].semGuiaDobro
      : SOURCE_FILES.common.agendamentoFunjusComplemento,
    includeFederalReceiptGuidance
  );
};

const buildMissingReceiptComplement = (
  profile: ResourceProfile,
  guide: GuideKind
): MinutaTemplate => {
  const guideDescriptor = getGuideDescriptor(profile, guide);
  const includeFederalReceiptGuidance = guide === 'GRU';

  return buildComplementTemplate(
    profile,
    `complemento-falta-comprovante-${profile.kind}-${guide.toLowerCase()}`,
    `${profile.shortLabel} - complementacao por ausencia de comprovante ${guide}`,
    `A parte recorrente juntou a ${guideDescriptor}, mas deixou de apresentar o respectivo comprovante de pagamento apto a demonstrar o efetivo recolhimento.`,
    `Para regularizacao, devera apresentar o comprovante de pagamento definitivo referente a ${guideDescriptor} ja juntada. Caso nao seja possivel faze-lo, devera efetuar novo recolhimento e juntar a nova guia com o respectivo comprovante.`,
    SOURCE_FILES.common.semComprovanteComplemento,
    includeFederalReceiptGuidance
  );
};

const resolveComplementByGuide = (
  profile: ResourceProfile,
  guide: GuideKind,
  optionText: string
): MinutaTemplate => {
  const guideDescriptor = getGuideDescriptor(profile, guide);
  const proofPlaceholder = getProofPlaceholder(guide);
  const includeFederalReceiptGuidance = guide === 'GRU';

  if (optionText === 'Agendamento / em analise (transacao nao efetivada)' || optionText === 'Agendamento / em análise (transação não efetivada)' || optionText === 'Agendamento / em analise' || optionText === 'Agendamento / em análise') {
    return buildComplementTemplate(
      profile,
      `complemento-agendamento-${profile.kind}-${guide.toLowerCase()}`,
      `${profile.shortLabel} - complementacao ${guide} por agendamento`,
      `O recurso nao foi devidamente preparado, visto que o comprovante juntado em ${proofPlaceholder} consiste em agendamento bancario, operacao pendente ou documento equivalente, nao sendo apto a demonstrar o efetivo recolhimento da ${guideDescriptor}.`,
      `Para regularizacao, a parte devera apresentar o comprovante de pagamento definitivo referente a ${guideDescriptor} juntada em ${proofPlaceholder}. Caso nao seja possivel apresentar referido documento, devera efetuar novo recolhimento e juntar a respectiva guia com o comprovante de pagamento.`,
      guide === 'FUNJUS'
        ? SOURCE_FILES.common.agendamentoFunjusComplemento
        : SOURCE_FILES.common.dobroAgendamento,
      includeFederalReceiptGuidance
    );
  }

  if (optionText === 'Valor divergente / insuficiente (e val. falso)' || optionText === 'Valor divergente / insuficiente' || optionText === 'Valor divergente (insuficiente)' || optionText === 'Valores divergentes') {
    return buildComplementTemplate(
      profile,
      `complemento-valor-${profile.kind}-${guide.toLowerCase()}`,
      `${profile.shortLabel} - complementacao ${guide} por valor divergente`,
      `Verifica-se irregularidade no preparo recursal, pois o valor recolhido por meio da ${guideDescriptor} mostra-se insuficiente, divergente ou materialmente inapto para a afericao da quitacao regular.`,
      guide === 'GRU'
        ? `Para regularizacao, a parte devera complementar o valor devido das custas destinadas ao ${profile.superiorCourtName}, juntando nova guia GRU, o respectivo comprovante de pagamento e, se necessario, a demonstracao do valor atualizado nos termos de ${profile.federalNormPlaceholder}.`
        : 'Para regularizacao, a parte devera complementar o valor devido do FUNJUS, juntando nova guia e o respectivo comprovante de pagamento, ambos de forma legivel.',
      SOURCE_FILES[profile.kind].codigoBarrasDobro,
      includeFederalReceiptGuidance
    );
  }

  if (optionText === 'Sem numero de processo / numero incorreto' || optionText === 'Sem número de processo / número incorreto') {
    return buildComplementTemplate(
      profile,
      `complemento-numero-${profile.kind}-${guide.toLowerCase()}`,
      `${profile.shortLabel} - complementacao ${guide} por identificacao processual divergente`,
      `Verifica-se irregularidade no preparo recursal, pois a ${guideDescriptor} apresentada nao permite a vinculacao segura ao presente feito, diante da ausencia de numero do processo, numero incorreto ou outra falha de identificacao processual.`,
      `Para regularizacao, a parte devera gerar e juntar nova ${guideDescriptor} com a correta identificacao processual, acompanhada do respectivo comprovante de pagamento.`,
      guide === 'GRU'
        ? SOURCE_FILES[profile.kind].numeroProcessoDobro
        : SOURCE_FILES.common.outroProcessoFunjusComplemento,
      includeFederalReceiptGuidance
    );
  }

  if (optionText === 'Pago a destempo - PAD (apos o prazo recursal)' || optionText === 'Pago a destempo - PAD (após o prazo recursal)' || optionText === 'Pago a destempo - PAD') {
    return buildComplementTemplate(
      profile,
      `complemento-pad-${profile.kind}-${guide.toLowerCase()}`,
      `${profile.shortLabel} - complementacao ${guide} por recolhimento a destempo`,
      `Constata-se que o recolhimento indicado pela parte recorrente, em relacao a ${guideDescriptor}, foi efetuado a destempo, nao sendo suficiente para demonstrar a regularidade do preparo no momento exigido em lei.`,
      `Para regularizacao, a parte devera comprovar o recolhimento tempestivo ou, se for o caso, apresentar novo preparo conforme o fundamento juridico aplicavel ao caso concreto, acompanhado da respectiva guia e do comprovante de pagamento.`,
      SOURCE_FILES.common.intempestividadeProxima,
      includeFederalReceiptGuidance
    );
  }

  return buildComplementTemplate(
    profile,
    `complemento-outro-processo-${profile.kind}-${guide.toLowerCase()}`,
    `${profile.shortLabel} - complementacao ${guide} por guia de outro processo`,
    `Verifica-se irregularidade no preparo recursal, pois a ${guideDescriptor} apresentada nao se refere aos presentes autos, de modo que nao e apta a comprovar o recolhimento das custas devidas neste recurso.`,
    `Para regularizacao, a parte devera gerar e juntar a ${guideDescriptor} correspondente ao presente feito, acompanhada do respectivo comprovante de pagamento.`,
    guide === 'FUNJUS'
      ? SOURCE_FILES.common.outroProcessoFunjusComplemento
      : SOURCE_FILES[profile.kind].outroProcessoDobro,
    includeFederalReceiptGuidance
  );
};

const buildDobroByReason = (
  profile: ResourceProfile,
  stepKey: string,
  optionText: string
): MinutaTemplate => {
  if (optionText === '2 agendamentos / em analise' || optionText === '2 agendamentos / em análise') {
    return buildDobroTemplate(
      profile,
      `dobro-agendamento-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - pagamento em dobro por agendamento`,
      'Verifica-se que a parte recorrente nao comprovou o recolhimento do preparo no ato da interposicao, pois os documentos juntados correspondem a comprovantes de agendamento bancario ou operacoes ainda pendentes, nao aptos a demonstrar quitacao efetiva.',
      `Caso a parte pretenda aproveitar as guias ja juntadas, devera apresentar os comprovantes de pagamento definitivos correspondentes. Nao sendo possivel, devera comprovar novo recolhimento em dobro, observando os valores abaixo:\n${buildDoubleAmountBlock(profile, false)}`,
      SOURCE_FILES.common.dobroAgendamento
    );
  }

  if (optionText === '2 valores divergentes / insuficientes') {
    return buildDobroTemplate(
      profile,
      `dobro-valor-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - pagamento em dobro por valor divergente`,
      `Verifica-se que a parte recorrente nao comprovou o recolhimento regular do preparo no ato da interposicao, pois ha divergencia material entre guias e comprovantes e o valor efetivamente recolhido nao pode ser aferido com seguranca, tanto em relacao as custas locais quanto as custas devidas ao ${profile.superiorCourtName}.`,
      buildDoubleAmountBlock(profile, false),
      SOURCE_FILES[profile.kind].codigoBarrasDobro
    );
  }

  if (optionText === '2 guias sem numero / numero incorreto de processo' || optionText === '2 guias sem número / número incorreto de processo') {
    return buildDobroTemplate(
      profile,
      `dobro-numero-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - pagamento em dobro por identificacao processual divergente`,
      'Verifica-se que as guias apresentadas nao permitem a vinculacao segura ao presente feito, diante da divergencia de numero unico do processo ou de outra falha de identificacao processual.',
      buildDoubleAmountBlock(profile, false),
      SOURCE_FILES[profile.kind].numeroProcessoDobro
    );
  }

  if (optionText === '2 guias pertencentes a outros processos' || optionText === '2 pertencentes a outros processos') {
    return buildDobroTemplate(
      profile,
      `dobro-outro-processo-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - pagamento em dobro por guia de outro processo`,
      'Verifica-se que as guias ou comprovantes juntados nao se referem aos presentes autos, de modo que nao demonstram o recolhimento do preparo devido neste recurso.',
      buildDoubleAmountBlock(profile, false),
      SOURCE_FILES[profile.kind].outroProcessoDobro
    );
  }

  return buildDobroTemplate(
    profile,
    `dobro-geral-${profile.kind}-${stepKey}`,
    `${profile.shortLabel} - pagamento em dobro por ausencia de comprovacao no ato`,
    stepKey === 'dobro_falta_guia'
      ? 'Verifica-se que a parte recorrente nao comprovou o recolhimento do preparo no ato da interposicao do recurso, seja porque nao juntou as guias correspondentes, seja porque nao foram localizados documentos idoneos que demonstrem a quitacao devida.'
      : 'Verifica-se que a parte recorrente nao comprovou o recolhimento do preparo no ato da interposicao do recurso, pois juntou apenas as guias de recolhimento, sem os respectivos comprovantes de pagamento.',
    buildDoubleAmountBlock(profile, false),
    stepKey === 'dobro_falta_guia'
      ? SOURCE_FILES[profile.kind].semGuiaDobro
      : SOURCE_FILES.common.dobroSemComprovante
  );
};

const buildDesercaoByReason = (
  profile: ResourceProfile,
  stepKey: string,
  optionText: string
): MinutaTemplate => {
  if (optionText === 'Agendamento nao efetivado' || optionText === 'Agendamento não efetivado' || optionText === 'Agendamentos nao efetivados' || optionText === 'Agendamentos não efetivados') {
    return buildDesercaoTemplate(
      profile,
      `desercao-agendamento-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - desercao por agendamento nao efetivado`,
      `A parte recorrente foi intimada para regularizar o preparo recursal, pois o documento apresentado correspondia a comprovante de agendamento bancario ou de operacao pendente, sem aptidao para demonstrar quitacao efetiva das custas locais ou das custas devidas ao ${profile.superiorCourtName}.`,
      mergeSources(SOURCE_FILES.common.agendamentoFunjusComplemento, SOURCE_FILES.common.dobroAgendamento)
    );
  }

  if (optionText === 'Guia pertencente a outro processo' || optionText === 'Guias pertencentes a outros processos' || optionText === 'Justaposicao de guia FUNJUS' || optionText === 'Justaposição de guia FUNJUS') {
    return buildDesercaoTemplate(
      profile,
      `desercao-outro-processo-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - desercao por guia de outro processo`,
      'A parte recorrente foi intimada para regularizar o preparo recursal, pois a guia ou o comprovante apresentado nao se referia aos presentes autos, sem, contudo, ter sanado a irregularidade no prazo assinado.',
      stepKey === 'desercao_funjus'
        ? SOURCE_FILES.common.outroProcessoFunjusComplemento
        : SOURCE_FILES[profile.kind].outroProcessoDobro
    );
  }

  if (optionText === 'Nao localizada / nao disponivel (N/D)' || optionText === 'Não localizada / não disponível (N/D)' || optionText === 'Nao localizadas / nao disponiveis (N/D)' || optionText === 'Não localizadas / não disponíveis (N/D)') {
    return buildDesercaoTemplate(
      profile,
      `desercao-nd-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - desercao por ausencia de regularizacao`,
      `A parte recorrente foi intimada para comprovar a regularizacao do preparo recursal, mas permaneceu sem apresentar documentacao idonea capaz de demonstrar o recolhimento devido, inclusive em relacao as custas dirigidas ao ${profile.superiorCourtName}.`,
      SOURCE_FILES[profile.kind].desercaoDobroSimples
    );
  }

  if (optionText === 'Sem numero de processo / numero incorreto' || optionText === 'Sem número de processo / número incorreto' || optionText === 'Valores divergentes' || optionText === 'Valor divergente (insuficiente)') {
    return buildDesercaoTemplate(
      profile,
      `desercao-irregularidade-material-${profile.kind}-${stepKey}`,
      `${profile.shortLabel} - desercao por irregularidade material do preparo`,
      `A parte recorrente foi intimada para sanar irregularidade material do preparo recursal, relacionada a identificacao processual, ao valor do recolhimento ou a correspondencia entre guias e comprovantes, mas nao regularizou o vicio no prazo assinado.`,
      SOURCE_FILES[profile.kind].desercaoDobroSimples
    );
  }

  return buildDesercaoTemplate(
    profile,
    `desercao-sem-guia-${profile.kind}-${stepKey}`,
    `${profile.shortLabel} - desercao por ausencia de guia ou comprovacao regular`,
    'A parte recorrente foi intimada para comprovar a complementacao do preparo recursal, mas nao cumpriu a determinacao, permanecendo sem a guia ou sem a comprovacao regular do recolhimento devido.',
    SOURCE_FILES.common.desercaoSemGuia
  );
};

export const resolveMinutaTemplate = (path: MinutaTemplatePathStep[]): MinutaTemplate => {
  const profile = getResourceProfile(path);
  const lastStep = path[path.length - 1];

  switch (lastStep.stepKey) {
    case 'comp_falta_guia':
      return buildMissingGuideComplement(profile, lastStep.optionText as GuideKind);
    case 'comp_falta_comprovante':
      return buildMissingReceiptComplement(profile, lastStep.optionText as GuideKind);
    case 'comp_irr_gru':
      return resolveComplementByGuide(profile, 'GRU', lastStep.optionText);
    case 'comp_irr_funjus':
      return resolveComplementByGuide(profile, 'FUNJUS', lastStep.optionText);
    case 'dobro_falta_guia':
    case 'dobro_falta_comprovante':
      return buildDobroByReason(profile, lastStep.stepKey, lastStep.optionText);
    case 'dobro_nd':
      return buildDobroTemplate(
        profile,
        `dobro-autos-fisicos-${profile.kind}`,
        `${profile.shortLabel} - pagamento em dobro em autos fisicos`,
        `Tratando-se de processo fisico nao digitalizado, nao ha comprovacao regular do preparo recursal, abrangendo as custas locais, as custas devidas ao ${profile.superiorCourtName} e, quando cabivel, o porte de remessa e retorno.`,
        buildDoubleAmountBlock(profile, true),
        []
      );
    case 'desercao_gru':
    case 'desercao_ambas':
    case 'desercao_funjus':
      return buildDesercaoByReason(profile, lastStep.stepKey, lastStep.optionText);
    default:
      return composeTemplate(
        'fallback-template',
        'Fallback - regularizacao de preparo',
        `Intime-se a parte recorrente para regularizar o preparo recursal do ${profile.fullLabel.toLowerCase()}, no prazo legal, observando-se a irregularidade apontada e a consequencia processual aplicavel ao caso concreto.`,
        []
      );
  }
};
