/**
 * minutaTemplates.ts
 * Textos extraídos integralmente dos PDFs de referência da pasta /minutas/.
 * Apenas os dados variáveis do caso concreto são representados por placeholders.
 * Nenhum conteúdo foi inventado — toda redação tem origem nos documentos reais.
 *
 * Caminhos sem PDF correspondente retornam 'AINDA SEM REFERENCIA DE MINUTAS'.
 */

export interface MinutaTemplatePathStep {
  stepKey: string;
  optionText: string;
}

export interface MinutaTemplate {
  id: string;
  title: string;
  /** Apenas o corpo da decisão (sem cabeçalho nem rodapé). */
  text: string;
  sourceFiles: readonly string[];
}

// ---------------------------------------------------------------------------
// Constante sentinel
// ---------------------------------------------------------------------------

const SEM_REFERENCIA = 'AINDA SEM REFERENCIA DE MINUTAS';

// ---------------------------------------------------------------------------
// Textos exatos extraídos dos PDFs confirmados
// ---------------------------------------------------------------------------

/**
 * Caso 01 — 0000102-44.2026.8.16.0081
 * stepKey: dobro_nd / optionText: '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido'
 * Situação: guia GRU juntada sem comprovante + FUNJUS não recolhida → dobro §4º
 */
const TEXTO_CASO_01 = "Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, já que juntou a guia de recolhimento das custas destinadas ao Superior Tribunal de Justiça (mov. [MOVIMENTO DA GUIA GRU]), sem o respectivo comprovante de pagamento. Ademais não realizou o recolhimento das custas locais.\n\nA jurisprudência do Superior Tribunal de Justiça é firme no sentido de que \"Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes.\" (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)\n\nAssim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.\n\nPara tanto, a parte recorrente deverá:\n\n1. apresentar o comprovante de pagamento referentes à guia de recolhimento de [MOVIMENTO DA GUIA GRU] e, ainda, realizar o recolhimento da importância de R$ [VALOR STJ COMPLEMENTAR EM DOBRO], referente às custas do Superior Tribunal de Justiça, conforme Tabela \"B\", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02.02.2025, eis que devidas em dobro;\n\n2. caso não seja possível juntar o documento mencionado no item 1, deverá realizar o recolhimento da importância de R$ [VALOR GRU TOTAL EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela \"B\", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026;\n\n3. realizar o recolhimento da importância de R$ [VALOR FUNJUS EM DOBRO], ao Fundo da Justiça – FUNJUS, por meio de guia gerada no site deste Tribunal de Justiça, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 21.868, de 18/12/2023).\n\nInsta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.";

/**
 * Caso 02 — 0000281-66.2026.8.16.0084
 * stepKey: comp_funjus / optionText: 'Juntou só a guia FUNJUS (sem comprovante de pagamento)'
 * Situação: guia FUNJUS juntada sem comprovante, GRU regular → complementação §2º
 */
const TEXTO_CASO_02 = "O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de recolhimento de mov. [MOVIMENTO DA GUIA FUNJUS], sem o respectivo comprovante de pagamento.\n\nSendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.\n\nPara tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no mov. [MOVIMENTO DA GUIA FUNJUS], no qual conste o código de barras de forma visível e legível, \" (...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento.\" (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).\n\nCaso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS, referente às custas do Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 21.868, de 18/12/2023.";

/**
 * Caso 05 — 0003021-52.2026.8.16.0001
 * stepKey: comp_funjus / optionText: 'Guia FUNJUS juntada + comprovante de agendamento bancário'
 * Situação: comprovante de agendamento bancário FUNJUS, GRU regular → complementação §2º
 */
const TEXTO_CASO_05 = "O recurso não foi devidamente preparado, visto que o pagamento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, já que o comprovante de agendamento bancário juntado no mov. [MOVIMENTO DO COMPROVANTE DE AGENDAMENTO] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).\n\nSendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.\n\nPara tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no mov. [MOVIMENTO DA GUIA FUNJUS], no qual conste o código de barras de forma visível e legível, \"(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento.\" (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).\n\nCaso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.\n\nInsta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.";

/**
 * Caso 07 — 0008661-39.2026.8.16.0000
 * stepKey: comp_funjus / optionText: 'Guia FUNJUS juntada + comprovante sem código de barras legível'
 * Situação: código de barras do comprovante diverge da guia FUNJUS, GRU regular → complementação §2º
 */
const TEXTO_CASO_07 = "O presente recurso especial não foi devidamente preparado, visto que o recolhimento das custas devidas a este Tribunal de Justiça não restou comprovado, pois não há correspondência entre o código de barras constante na guia de recolhimento de mov. [MOVIMENTO DA GUIA FUNJUS] e o do comprovante de pagamento de mov. [MOVIMENTO DO COMPROVANTE FUNJUS].\n\nA jurisprudência do Superior Tribunal de Justiça é firme no sentido de que \"(...) a falta de correspondência entre o código de barras constante do comprovante de pagamento e o da guia de recolhimento do preparo implica pena de deserção, ante a irregularidade no pagamento. Incidência da Súmula 187 do STJ.\". (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021, DJe de 2/12/2021.)\n\nAssim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.\n\nPara tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. [MOVIMENTO DA GUIA FUNJUS].\n\nCaso não seja possível apresentação do referido documento, deverá ser realizado novo recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS.\n\nInsta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.";

/**
 * Caso 08 — 0001715-16.2026.8.16.0044
 * stepKey: comp_funjus / optionText: 'Guia FUNJUS juntada + comprovante não localizado (N/D)'
 * Situação: FUNJUS completamente ausente, GRU regular → complementação §2º
 */
const TEXTO_CASO_08 = "Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.\n\nPara tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº [LEI ESTADUAL FUNJUS VIGENTE], cujo novo valor passou a vigorar a partir de [DATA DE VIGÊNCIA DA LEI].\n\nInsta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.";

/**
 * Caso 10 — 0001137-80.2026.8.16.0035
 * stepKey: dobro / optionText: 'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)'
 * Situação: apenas guias GRU+FUNJUS, sem comprovantes → dobro §4º
 */
const TEXTO_CASO_10 = "A parte não comprovou o recolhimento do preparo, visto que juntou aos autos tão somente as guias de recolhimento (movs. [MOVIMENTOS DAS GUIAS GRU E FUNJUS]), sem os respectivos comprovantes de pagamento.\n\nA jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que \"Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes.\" (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)\n\nAssim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.\n\nPara tanto, a parte deverá comprovar o recolhimento dos seguintes valores:\n- R$ [VALOR FUNJUS EM DOBRO], por meio do Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº [LEI ESTADUAL FUNJUS VIGENTE]), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;\n- R$ [VALOR GRU EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela \"B\", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.\n\nCumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.";

/**
 * Caso 12 — 0003802-77.2026.8.16.0000
 * stepKey: dobro_nd / optionText: '2 agendamentos bancários como comprovante'
 * Situação: 2 comprovantes de agendamento bancário GRU+FUNJUS → dobro §4º
 */
const TEXTO_CASO_12 = "Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que os comprovantes de agendamento bancário juntados nos movs. [MOVIMENTOS DOS AGENDAMENTOS BANCÁRIOS] não são documentos aptos a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.). \n\nNesse sentido:\n\nPROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM RECURSO ESPECIAL. PREPARO RECURSAL. APRESENTAÇÃO DE COMPROVANTE DE AGENDAMENTO. IRREGULARIDADE. INTIMAÇÃO PARA RECOLHER EM DOBRO. JUNTADA POSTERIOR DA GUIA DE RECOLHIMENTO. PRECLUSÃO CONSUMATIVA. DESERÇÃO. SÚMULA 187/STJ.\n1. Tendo o recurso sido interposto contra decisão publicada na vigência do Código de Processo Civil de 2015, devem ser exigidos os requisitos de admissibilidade na forma nele previsto, conforme Enunciado Administrativo n. 3/2016/STJ.\n2. É deserto o recurso dirigido a esta Corte se a parte não comprova, adequada e tempestivamente, o recolhimento do preparo recursal, a despeito de haver sido regularmente intimada na forma do art. 1.007, § 4º, do CPC/2015. Precedentes.\n3. A juntada posterior de comprovante de pagamento de custas não é capaz de superar a deserção em razão da preclusão consumativa.\n4. Agravo interno não provido.\n(AgInt nos EREsp n. 1.848.579/CE, relator Ministro Benedito Gonçalves, Corte Especial, julgado em 27/9/2022, DJe de 3/10/2022.)\n\nAssim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.\n\nPara tanto, a parte recorrente deverá:\n\n1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de movs. [MOVIMENTOS DAS GUIAS GRU E FUNJUS];\n2. realizar o recolhimento da importância de R$ [VALOR STJ COMPLEMENTAR EM DOBRO], referente às custas do Superior Tribunal de Justiça, conforme Tabela \"B\", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02.02.2026, eis que devidas em dobro;\n3. realizar novo recolhimento da importância de R$ [VALOR FUNJUS COMPLEMENTAR EM DOBRO] ao Fundo da Justiça – FUNJUS (Lei Estadual nº 21.868, de 18/12/2023), eis que devido em dobro.\n\nRessalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:\n- R$ [VALOR GRU TOTAL EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela \"B\", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.\n- R$ [VALOR FUNJUS TOTAL EM DOBRO], ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 21.868, de 18/12/2023).\n\nInsta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.";

/**
 * Caso 13 — 0013879-48.2026.8.16.0000
 * stepKey: dobro_nd / optionText: '2 comprovantes sem código de barras legível'
 * Situação: comprovantes GRU+FUNJUS sem código de barras legível → dobro §4º
 */
const TEXTO_CASO_13 = "Verifica-se que a parte recorrente não demonstrou o recolhimento do preparo no ato da interposição do recurso, pois os documentos juntados como comprovantes de pagamento no mov. [MOVIMENTO DOS COMPROVANTES] não são aptos a comprovar o efetivo recolhimento das custas recursais, já que não é possível visualizar o código de barras na sua integralidade, impossibilitando a comparação com os dados constantes nas guias de recolhimento apresentadas (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).\n\nAssim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.\n\nPara tanto, a parte recorrente deverá comprovar o recolhimento dos seguintes valores:\n- R$ [VALOR GRU EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela \"B\", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.\n- R$ [VALOR FUNJUS EM DOBRO], ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 21.868, de 18/12/2023).\n\nInsta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.";

// ---------------------------------------------------------------------------
// Helper
// ---------------------------------------------------------------------------

function semReferencia(id: string): MinutaTemplate {
  return {
    id,
    title: 'Sem referência disponível',
    text: SEM_REFERENCIA,
    sourceFiles: [],
  };
}

// ---------------------------------------------------------------------------
// Função principal
// ---------------------------------------------------------------------------

export function resolveMinutaTemplate(path: MinutaTemplatePathStep[]): MinutaTemplate {
  const id = path.map(s => s.stepKey + ':' + s.optionText).join(' > ');
  const isRE = path[0]?.optionText === 'Recurso Extraordinário (RE)';
  const last = path[path.length - 1];
  const stepKey = last?.stepKey ?? '';
  const optionText = last?.optionText ?? '';

  // RE não tem PDFs — sempre sem referência
  if (isRE) return semReferencia(id);

  switch (stepKey) {

    // ── Complementação — GRU ─────────────────────────────────────────────────
    case 'comp_gru':
      return semReferencia(id);

    // ── Complementação — FUNJUS ──────────────────────────────────────────────
    case 'comp_funjus':
      if (optionText === 'Juntou só a guia FUNJUS (sem comprovante de pagamento)') {
        return {
          id,
          title: 'Complementação — guia FUNJUS juntada sem comprovante (REsp)',
          text: TEXTO_CASO_02,
          sourceFiles: ['minutas/Caso 02.pdf'],
        };
      }
      if (optionText === 'Guia FUNJUS juntada + comprovante de agendamento bancário') {
        return {
          id,
          title: 'Complementação — comprovante de agendamento bancário FUNJUS (REsp)',
          text: TEXTO_CASO_05,
          sourceFiles: ['minutas/Caso 05.pdf'],
        };
      }
      if (optionText === 'Guia FUNJUS juntada + comprovante sem código de barras legível') {
        return {
          id,
          title: 'Complementação — código de barras divergente no comprovante FUNJUS (REsp)',
          text: TEXTO_CASO_07,
          sourceFiles: ['minutas/Caso 07.pdf'],
        };
      }
      if (optionText === 'Guia FUNJUS juntada + comprovante não localizado (N/D)') {
        return {
          id,
          title: 'Complementação — FUNJUS ausente, sem guia nem pagamento (REsp)',
          text: TEXTO_CASO_08,
          sourceFiles: ['minutas/Caso 08.pdf'],
        };
      }
      return semReferencia(id);

    // ── Pagamento em Dobro — situação documental ──────────────────────────────
    case 'dobro':
      if (optionText === 'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)') {
        return {
          id,
          title: 'Dobro §4º — guias GRU e FUNJUS sem comprovantes (REsp)',
          text: TEXTO_CASO_10,
          sourceFiles: ['minutas/Caso 10.pdf'],
        };
      }
      return semReferencia(id);

    // ── Pagamento em Dobro — documentos ausentes/inválidos ───────────────────
    case 'dobro_nd':
      if (optionText === '2 agendamentos bancários como comprovante') {
        return {
          id,
          title: 'Dobro §4º — 2 agendamentos bancários GRU+FUNJUS (REsp)',
          text: TEXTO_CASO_12,
          sourceFiles: ['minutas/Caso 12.pdf'],
        };
      }
      if (optionText === '2 comprovantes sem código de barras legível') {
        return {
          id,
          title: 'Dobro §4º — 2 comprovantes sem código de barras legível GRU+FUNJUS (REsp)',
          text: TEXTO_CASO_13,
          sourceFiles: ['minutas/Caso 13.pdf'],
        };
      }
      if (optionText === '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido') {
        return {
          id,
          title: 'Dobro §4º — guia GRU sem comprovante + FUNJUS não recolhida (REsp)',
          text: TEXTO_CASO_01,
          sourceFiles: ['minutas/Caso 01.pdf'],
        };
      }
      return semReferencia(id);

    // ── Deserção e demais nós ─────────────────────────────────────────────────
    default:
      return semReferencia(id);
  }
}
