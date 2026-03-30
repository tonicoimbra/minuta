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

const sourceFiles = {
  semGuiaDobro: [
    'minutas/GABY/0019611-48.2025.8.16.0031 Pet - CUSTAS EM DOBRO RE - AUSENCIA GUIA RECOLHIMENTO - JUNTOU APENAS COMPROVANTE - EXTRAORDINARIO.pdf'
  ],
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
  numeroProcessoDobro: [
    'minutas/GABY/0148996-45.2025.8.16.0000 Pet - INTIMACAO N. UNICO PROCESSO GUIA GRU DIVERGENTE + FUNJUS.pdf'
  ],
  codigoBarrasDobro: [
    'minutas/GABY/0139226-28.2025.8.16.0000 Pet - DOBRO - VALOR NOVO GRU - CODIGO DE BARRAS nao corresponde .pdf',
    'minutas/GABY/0000562-09.2026.8.16.0153 Pet - INTIMACAO CUSTAS EM DOBRO - JUNTOU COMP GRU SEM CODIGO DE BARRAS + FUNJUS + DECRETO.pdf'
  ],
  outroProcessoDobro: [
    'minutas/GABY/0013980-20.2025.8.16.0130 Pet - INTIMACAO DOBRO - GUIAS DE OUTRO PROCESSO.pdf'
  ],
  dobroSemComprovante: [
    'minutas/GABY/0001137-80.2026.8.16.0035 Pet - CUSTAS EM DOBRO - JUNTOU APENAS AS GUIAS.pdf'
  ],
  dobroAgendamento: [
    'minutas/GABY/0003802-77.2026.8.16.0000 Pet - INTIMACAO DOBRO - AGENDAMENTO CUSTAS.pdf'
  ],
  dobroGeral: [
    'minutas/GABY/0000296-75.2026.8.16.0103 Pet - CUSTAS EM DOBRO - INTEMEPSTIVO.pdf'
  ],
  desercaoSemGuia: [
    'minutas/DMG/0001365-67.2026.8.16.0031 Pet deserto.pdf'
  ],
  desercaoAgendamentoFunjus: [
    'minutas/VANESSA/0003396-38.2025.8.16.0179 Pet.pdf'
  ],
  desercaoDobroSimples: [
    'minutas/GABY/0121833-90.2025.8.16.0000 Pet - INADMISSAO POR DESERTO - INTIMADO EM DOBRO - PAGOU SIMPLES.pdf'
  ],
  intempestividadeProxima: [
    'minutas/DMG/0151935-95.2025.8.16.0000 Pet - intempestivo.pdf',
    'minutas/VANESSA/0000859-84.2026.8.16.0098 Pet.pdf'
  ]
} as const;

const buildNoPrepTemplate = (kind: 'AREsp' | 'AgInt' | 'EDcl'): MinutaTemplate => {
  const bodies = {
    AREsp: `Trata-se de Agravo em Recurso Especial.

Considerando que o agravo em recurso especial nao esta sujeito a preparo recursal, nos termos do artigo 1.042, paragrafo 2o, do Codigo de Processo Civil, nao ha providencia de saneamento a ser determinada quanto ao preparo.

Certifique-se e prossiga-se com a tramitacao regular do recurso.`,
    AgInt: `Trata-se de Agravo Interno.

Considerando que o agravo interno nao se sujeita a preparo recursal, nao ha providencia de saneamento a ser determinada quanto ao preparo.

Certifique-se e prossiga-se com a tramitacao regular do recurso.`,
    EDcl: `Tratam-se de Embargos de Declaracao.

Considerando que os embargos de declaracao nao se sujeitam a preparo recursal, nos termos do artigo 1.023 do Codigo de Processo Civil, nao ha providencia de saneamento a ser determinada quanto ao preparo.

Certifique-se e prossiga-se com a tramitacao regular do recurso.`
  };

  return composeTemplate(
    `sem-preparo-${kind.toLowerCase()}`,
    `Sem preparo - ${kind}`,
    bodies[kind],
    []
  );
};

const buildComplementTemplate = (
  id: string,
  title: string,
  bodyIntro: string,
  bodyOrder: string,
  files: readonly string[]
): MinutaTemplate =>
  composeTemplate(
    id,
    title,
    `${bodyIntro}

Sendo assim, intime-se a parte recorrente, nos termos do artigo 1.007, paragrafos 2o e 7o, do Codigo de Processo Civil, para que, no prazo de 5 (cinco) dias, regularize o preparo recursal, sob pena de deserção.

${bodyOrder}

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o codigo de barras de forma visivel e legivel, e imprescindivel para fins de comprovacao do efetivo recolhimento do preparo.`,
    files
  );

const buildDobroTemplate = (
  id: string,
  title: string,
  bodyIntro: string,
  bodyOrder: string,
  files: readonly string[]
): MinutaTemplate =>
  composeTemplate(
    id,
    title,
    `${bodyIntro}

Sendo assim, diante da ausencia de comprovacao do pagamento das custas no ato da interposicao do recurso, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, sob pena de desercao, nos termos do artigo 1.007, paragrafo 4o, do Codigo de Processo Civil, comprove o recolhimento em dobro do preparo recursal.

${bodyOrder}

Cumpre esclarecer que, para comprovacao do efetivo recolhimento do preparo, a parte devera providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o codigo de barras de forma visivel e legivel.`,
    files
  );

const buildDesercaoTemplate = (
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

Sendo assim, nos termos do artigo 1.007, paragrafos 4o e 5o, do Codigo de Processo Civil, declaro a desercao do recurso.

Diante do exposto, inadmito o recurso interposto.`,
    files
  );

const resolveComplementByGuide = (guide: 'GRU' | 'FUNJUS', optionText: string): MinutaTemplate => {
  const guideName = `guia ${guide}`;
  const movementLabel = guide === 'GRU' ? '[MOVIMENTO DA GUIA/COMPROVANTE GRU]' : '[MOVIMENTO DA GUIA/COMPROVANTE FUNJUS]';

  if (optionText === 'Agendamento / em análise (transação não efetivada)' || optionText === 'Agendamento / em análise') {
    return buildComplementTemplate(
      `complemento-agendamento-${guide.toLowerCase()}`,
      `Complementacao ${guide} - agendamento`,
      `O recurso nao foi devidamente preparado, visto que o recolhimento das custas recursais devidas por meio da ${guideName} nao restou comprovado, ja que o comprovante juntado em ${movementLabel} consiste em agendamento bancario ou operacao pendente, nao sendo documento apto a comprovar o efetivo recolhimento das custas.`,
      `Para tanto, a parte devera apresentar o comprovante de pagamento definitivo referente a ${guideName} juntada em ${movementLabel}. Caso nao seja possivel apresentar referido documento, devera efetuar novo recolhimento por meio da ${guideName} correspondente e juntar o respectivo comprovante de pagamento.`,
      sourceFiles.agendamentoFunjusComplemento
    );
  }

  if (optionText === 'Valor divergente / insuficiente (e val. falso)' || optionText === 'Valor divergente / insuficiente') {
    return buildComplementTemplate(
      `complemento-valor-${guide.toLowerCase()}`,
      `Complementacao ${guide} - valor divergente`,
      `Verifica-se irregularidade no preparo recursal, pois o valor recolhido por meio da ${guideName} mostra-se insuficiente, divergente ou materialmente inapto para a afericao da quitacao regular.`,
      `Para tanto, a parte devera complementar o valor devido da ${guideName}, juntando a nova guia e o respectivo comprovante de pagamento regular, ambos de forma legivel.`,
      sourceFiles.codigoBarrasDobro
    );
  }

  if (optionText === 'Sem número de processo / número incorreto') {
    return buildComplementTemplate(
      `complemento-numero-${guide.toLowerCase()}`,
      `Complementacao ${guide} - identificacao processual divergente`,
      `Verifica-se irregularidade no preparo recursal, pois a ${guideName} apresentada nao permite a vinculacao segura ao presente feito, diante da ausencia de numero do processo, numero incorreto ou outra falha de identificacao processual.`,
      `Para tanto, a parte devera gerar e juntar nova ${guideName} com a correta identificacao processual, acompanhada do respectivo comprovante de pagamento.`,
      sourceFiles.numeroProcessoDobro
    );
  }

  if (optionText === 'Pago a destempo - PAD (após o prazo recursal)' || optionText === 'Pago a destempo - PAD') {
    return buildComplementTemplate(
      `complemento-pad-${guide.toLowerCase()}`,
      `Complementacao ${guide} - recolhimento a destempo`,
      `Constata-se que o recolhimento indicado pela parte recorrente, em relacao a ${guideName}, foi efetuado a destempo, nao sendo suficiente para demonstrar a regularidade do preparo no momento exigido em lei.`,
      `Para tanto, a parte devera comprovar a regularizacao do preparo de acordo com o fundamento legal aplicavel ao caso concreto, mediante a apresentacao da ${guideName} regular e do respectivo comprovante de pagamento.`,
      sourceFiles.intempestividadeProxima
    );
  }

  return buildComplementTemplate(
    `complemento-outro-processo-${guide.toLowerCase()}`,
    `Complementacao ${guide} - guia de outro processo`,
    `Verifica-se irregularidade no preparo recursal, pois a ${guideName} apresentada nao se refere aos presentes autos, de modo que nao e apta a comprovar o recolhimento das custas devidas neste recurso.`,
    `Para tanto, a parte devera gerar e juntar a ${guideName} correspondente ao presente feito, acompanhada do respectivo comprovante de pagamento.`,
    guide === 'FUNJUS' ? sourceFiles.outroProcessoFunjusComplemento : sourceFiles.numeroProcessoDobro
  );
};

const buildMissingGuideComplement = (guide: 'GRU' | 'FUNJUS'): MinutaTemplate =>
  buildComplementTemplate(
    `complemento-falta-guia-${guide.toLowerCase()}`,
    `Complementacao ${guide} - ausencia de guia`,
    `A parte recorrente nao comprovou regularmente o preparo recursal, pois juntou o comprovante de pagamento referente a ${guide} sem a respectiva guia de recolhimento.`,
    `Para tanto, devera juntar a ${guide} correspondente ao recolhimento ja efetuado, em formato legivel e com a correta identificacao do processo.`,
    sourceFiles.semGuiaDobro
  );

const buildMissingReceiptComplement = (guide: 'GRU' | 'FUNJUS'): MinutaTemplate =>
  buildComplementTemplate(
    `complemento-falta-comprovante-${guide.toLowerCase()}`,
    `Complementacao ${guide} - ausencia de comprovante`,
    `O recurso nao foi devidamente preparado, visto que a parte recorrente juntou a ${guide === 'GRU' ? 'guia GRU' : 'guia FUNJUS'} sem o respectivo comprovante de pagamento.`,
    `Para tanto, devera apresentar o comprovante de pagamento definitivo referente a ${guide === 'GRU' ? 'guia GRU' : 'guia FUNJUS'} ja juntada, com codigo de barras visivel e legivel. Caso nao seja possivel faze-lo, devera efetuar novo recolhimento e juntar a nova guia com o respectivo comprovante.`,
    sourceFiles.semComprovanteComplemento
  );

const buildDobroByReason = (stepKey: string, optionText: string): MinutaTemplate => {
  if (optionText === '2 agendamentos / em análise') {
    return buildDobroTemplate(
      `dobro-agendamento-${stepKey}`,
      'Pagamento em dobro - agendamento',
      'Verifica-se que a parte recorrente nao comprovou o recolhimento do preparo no ato da interposicao do recurso, pois os documentos juntados correspondem a comprovantes de agendamento bancario ou operacoes ainda pendentes, nao aptos a demonstrar quitacao efetiva.',
      'Para tanto, a parte devera apresentar os comprovantes de pagamento definitivos das guias originalmente juntadas e, ainda, comprovar o recolhimento em dobro das custas recursais devidas.',
      sourceFiles.dobroAgendamento
    );
  }

  if (optionText === '2 valores divergentes / insuficientes' || optionText === '2 valores divergentes / insuficientes') {
    return buildDobroTemplate(
      `dobro-valor-${stepKey}`,
      'Pagamento em dobro - valor divergente',
      'Verifica-se que a parte recorrente nao comprovou o recolhimento regular do preparo no ato da interposicao do recurso, pois ha divergencia material entre guias e comprovantes e o valor efetivamente recolhido nao pode ser aferido com seguranca.',
      'Para tanto, devera comprovar o recolhimento em dobro das custas recursais devidas, com juntada das novas guias e dos respectivos comprovantes de pagamento.',
      sourceFiles.codigoBarrasDobro
    );
  }

  if (optionText === '2 guias sem número / número incorreto de processo') {
    return buildDobroTemplate(
      `dobro-numero-${stepKey}`,
      'Pagamento em dobro - identificacao processual divergente',
      'Verifica-se que as guias apresentadas nao permitem a vinculacao segura ao presente feito, diante da divergencia de numero unico do processo ou outra falha de identificacao processual.',
      'Para tanto, a parte devera comprovar o recolhimento em dobro das custas recursais por meio de guias corretamente vinculadas aos presentes autos, acompanhadas dos respectivos comprovantes de pagamento.',
      sourceFiles.numeroProcessoDobro
    );
  }

  if (optionText === '2 guias pertencentes a outros processos' || optionText === '2 pertencentes a outros processos') {
    return buildDobroTemplate(
      `dobro-outro-processo-${stepKey}`,
      'Pagamento em dobro - guia de outro processo',
      'Verifica-se que as guias ou comprovantes juntados nao se referem aos presentes autos, de modo que nao demonstram o recolhimento do preparo devido neste recurso.',
      'Para tanto, a parte devera comprovar o recolhimento em dobro das custas recursais devidas no presente feito, mediante juntada das guias corretas e dos respectivos comprovantes de pagamento.',
      sourceFiles.outroProcessoDobro
    );
  }

  return buildDobroTemplate(
    `dobro-geral-${stepKey}`,
    'Pagamento em dobro - ausencia de comprovacao no ato',
    stepKey === 'dobro_falta_guia'
      ? 'Verifica-se que a parte recorrente nao comprovou o recolhimento do preparo no ato da interposicao do recurso, seja porque nao juntou as guias correspondentes, seja porque nao localizados documentos idoneos que demonstrem a quitacao devida.'
      : 'Verifica-se que a parte recorrente nao comprovou o recolhimento do preparo no ato da interposicao do recurso, pois juntou apenas as guias de recolhimento, sem os respectivos comprovantes de pagamento.',
    'Para tanto, a parte devera comprovar o recolhimento em dobro das custas recursais devidas, mediante juntada das guias e dos respectivos comprovantes de pagamento, todos de forma legivel.',
    stepKey === 'dobro_falta_guia' ? sourceFiles.semGuiaDobro : sourceFiles.dobroSemComprovante
  );
};

const buildDesercaoByReason = (stepKey: string, optionText: string): MinutaTemplate => {
  if (optionText === 'Agendamento não efetivado' || optionText === 'Agendamentos não efetivados') {
    return buildDesercaoTemplate(
      `desercao-agendamento-${stepKey}`,
      'Desercao - agendamento nao efetivado',
      'A parte recorrente foi intimada para regularizar o preparo recursal, pois o documento apresentado correspondia a comprovante de agendamento bancario ou processo de autenticacao, sem aptidao para demonstrar quitacao efetiva das custas.',
      sourceFiles.desercaoAgendamentoFunjus
    );
  }

  if (optionText === 'Guia pertencente a outro processo' || optionText === 'Guias pertencentes a outros processos' || optionText === 'Justaposição de guia FUNJUS') {
    return buildDesercaoTemplate(
      `desercao-outro-processo-${stepKey}`,
      'Desercao - guia de outro processo',
      'A parte recorrente foi intimada para regularizar o preparo recursal, pois a guia ou o comprovante apresentado nao se referia aos presentes autos, sem, contudo, ter sanado a irregularidade no prazo assinado.',
      stepKey === 'desercao_funjus' ? sourceFiles.outroProcessoFunjusComplemento : sourceFiles.outroProcessoDobro
    );
  }

  if (optionText === 'Não localizada / não disponível (N/D)' || optionText === 'Não localizadas / não disponíveis (N/D)') {
    return buildDesercaoTemplate(
      `desercao-nd-${stepKey}`,
      'Desercao - ausencia de regularizacao',
      'A parte recorrente foi intimada para comprovar a regularizacao do preparo recursal, mas permaneceu sem apresentar documentacao idonea capaz de demonstrar o recolhimento devido.',
      sourceFiles.desercaoDobroSimples
    );
  }

  if (optionText === 'Sem número de processo / número incorreto' || optionText === 'Valores divergentes' || optionText === 'Valor divergente (insuficiente)') {
    return buildDesercaoTemplate(
      `desercao-irregularidade-material-${stepKey}`,
      'Desercao - irregularidade material do preparo',
      'A parte recorrente foi intimada para sanar irregularidade material do preparo recursal, relacionada a identificacao processual ou ao valor do recolhimento, mas nao regularizou o vicio no prazo assinado.',
      sourceFiles.desercaoDobroSimples
    );
  }

  return buildDesercaoTemplate(
    `desercao-sem-guia-${stepKey}`,
    'Desercao - ausencia de guia ou comprovacao regular',
    'A parte recorrente foi intimada para comprovar a complementacao do preparo recursal, mas nao cumpriu a determinacao, permanecendo sem a guia ou sem a comprovacao regular do recolhimento devido.',
    sourceFiles.desercaoSemGuia
  );
};

export const resolveMinutaTemplate = (path: MinutaTemplatePathStep[]): MinutaTemplate => {
  if (path.length === 1) {
    switch (path[0].optionText) {
      case 'Agravo em REsp (AREsp)':
        return buildNoPrepTemplate('AREsp');
      case 'Agravo Interno (AgInt)':
        return buildNoPrepTemplate('AgInt');
      case 'Embargos de Declaração (EDcl)':
        return buildNoPrepTemplate('EDcl');
      default:
        return composeTemplate(
          'sem-preparo-generico',
          'Sem preparo - generico',
          'Nao ha providencia de saneamento de preparo a ser determinada para o presente recurso.',
          []
        );
    }
  }

  const lastStep = path[path.length - 1];

  switch (lastStep.stepKey) {
    case 'comp_falta_guia':
      return buildMissingGuideComplement(lastStep.optionText as 'GRU' | 'FUNJUS');
    case 'comp_falta_comprovante':
      return buildMissingReceiptComplement(lastStep.optionText as 'GRU' | 'FUNJUS');
    case 'comp_irr_gru':
      return resolveComplementByGuide('GRU', lastStep.optionText);
    case 'comp_irr_funjus':
      return resolveComplementByGuide('FUNJUS', lastStep.optionText);
    case 'dobro_falta_guia':
    case 'dobro_falta_comprovante':
      return buildDobroByReason(lastStep.stepKey, lastStep.optionText);
    case 'dobro_nd':
      return buildDobroTemplate(
        'dobro-autos-fisicos',
        'Pagamento em dobro - autos fisicos nao digitalizados',
        'Tratando-se de processo fisico nao digitalizado, nao ha comprovacao regular do preparo recursal, abrangendo as guias devidas ao Tribunal de Justica, ao tribunal superior e, quando cabivel, o porte de remessa e retorno.',
        'Para tanto, a parte devera comprovar o recolhimento em dobro de todas as custas e despesas processuais exigiveis para a especie, inclusive porte de remessa e retorno, mediante juntada das guias correspondentes e dos respectivos comprovantes de pagamento.',
        []
      );
    case 'desercao_gru':
    case 'desercao_ambas':
    case 'desercao_funjus':
      return buildDesercaoByReason(lastStep.stepKey, lastStep.optionText);
    default:
      return composeTemplate(
        'fallback-template',
        'Fallback - regularizacao de preparo',
        'Intime-se a parte recorrente para regularizar o preparo recursal, no prazo legal, observando-se a irregularidade apontada e a consequencia processual aplicavel ao caso concreto.',
        []
      );
  }
};
