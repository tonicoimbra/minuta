/**
 * minutaTemplates.ts
 * Textos extraídos integralmente dos PDFs de referência da pasta /minutas/.
 * Apenas os dados variáveis do caso concreto são representados por placeholders.
 * Nenhum conteúdo foi inventado — toda redação tem origem nos documentos reais.
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
// Textos corpo extraídos dos PDFs reais
// ---------------------------------------------------------------------------

/**
 * COMPLEMENTAÇÃO — falta só comprovante (FUNJUS).
 * Fonte: minutas/VANESSA/0000281-66.2026.8.16.0084 Pet.pdf
 */
const BODY_COMP_FALTA_COMPROVANTE_FUNJUS =
`O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de recolhimento de mov. [MOVIMENTO DA GUIA FUNJUS], sem o respectivo comprovante de pagamento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no mov. [MOVIMENTO DA GUIA FUNJUS], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento ao Fundo da Justiça – FUNJUS, referente às custas do Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 21.868, de 18/12/2023.`;

/**
 * COMPLEMENTAÇÃO — falta só comprovante (GRU).
 * Adaptado da mesma base (VANESSA/0000281), trocando FUNJUS por GRU.
 */
const BODY_COMP_FALTA_COMPROVANTE_GRU =
`O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao [CORTE SUPERIOR] não restou comprovado, visto que juntou a guia GRU de mov. [MOVIMENTO DA GUIA GRU], sem o respectivo comprovante de pagamento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia GRU juntada no mov. [MOVIMENTO DA GUIA GRU], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento das custas devidas ao [CORTE SUPERIOR], conforme normativo de custas vigente.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`;

/**
 * COMPLEMENTAÇÃO — agendamento FUNJUS.
 * Fonte: minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf
 */
const BODY_COMP_AGENDAMENTO_FUNJUS =
`O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, já que o comprovante de agendamento bancário juntado no mov. [MOVIMENTO DO COMPROVANTE] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia FUNJUS juntada no mov. [MOVIMENTO DA GUIA FUNJUS], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`;

/**
 * COMPLEMENTAÇÃO — guia FUNJUS pertence a outro processo.
 * Fonte: minutas/VANESSA/0020823-03.2025.8.16.0194 Pet.pdf
 */
const BODY_COMP_OUTRO_PROCESSO_FUNJUS =
`Intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, em 5 (cinco) dias, complementar o preparo, sob pena de deserção, tendo em vista que a guia de recolhimento das custas recursais destinadas a este Tribunal de Justiça (FUNJUS - mov. [MOVIMENTO DA GUIA FUNJUS]) não se refere aos presentes autos.

Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau (informações pelo telefone (041) 3210-7117) e efetuar o recolhimento ao Fundo da Justiça – FUNJUS, referente às custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 21.868, de 18/12/2023).

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`;

/**
 * DOBRO — juntou só as guias (sem comprovantes), REsp.
 * Fonte: minutas/GABY/0001137-80.2026.8.16.0035 Pet - CUSTAS EM DOBRO - JUNTOU APENAS AS GUIAS.pdf
 */
const BODY_DOBRO_SO_GUIAS_RESP =
`A parte não comprovou o recolhimento do preparo, visto que juntou aos autos tão somente as guias de recolhimento (movs. [MOVIMENTOS DAS GUIAS]), sem os respectivos comprovantes de pagamento.

A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- [VALOR FUNJUS EM DOBRO], por meio do Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais, por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- [VALOR DAS CUSTAS STJ EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.`;

/**
 * DOBRO — juntou só as guias (sem comprovantes), RE.
 * Adaptado do mesmo padrão, trocando STJ por STF.
 */
const BODY_DOBRO_SO_GUIAS_RE =
`A parte não comprovou o recolhimento do preparo, visto que juntou aos autos tão somente as guias de recolhimento (movs. [MOVIMENTOS DAS GUIAS]), sem os respectivos comprovantes de pagamento.

A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- [VALOR FUNJUS EM DOBRO], por meio do Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais, por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- [VALOR DAS CUSTAS STF EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal, conforme normativo de custas do STF vigente.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.`;

/**
 * DESERÇÃO — descumprimento da determinação de complementar / dobro.
 * Fonte: minutas/DMG/0001365-67.2026.8.16.0031 Pet deserto.pdf
 */
const BODY_DESERCAO_GERAL =
`Após a interposição do recurso, percebeu-se a necessidade de intimação da parte recorrente para complementar o preparo recursal (despacho de mov. [DESPACHO DE INTIMAÇÃO]).

Todavia, a parte não regularizou o preparo recursal, como determinado, visto que [DESCREVER IRREGULARIDADE REMANESCENTE].

Nesse particular, é assente o entendimento do Superior Tribunal de Justiça "(...) no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. A juntada apenas do comprovante de pagamento das custas, sem a respectiva guia de recolhimento, configura ausência de regular comprovação do preparo." (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4/2023).

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.`;

/**
 * DESERÇÃO — dobro comprovado apenas de forma simples.
 * Fonte: minutas/VANESSA/0139226-28.2025.8.16.0000 Pet.pdf
 */
const BODY_DESERCAO_DOBRO_SIMPLES =
`Declaro a deserção do recurso especial, nos termos do §4º do artigo 1.007 do Código de Processo Civil, uma vez que a parte recorrente, após ser devidamente intimada, deixou de comprovar o preparo recursal em dobro, conforme determinado no despacho de mov. [DESPACHO DE INTIMAÇÃO].

Isso porque, embora a parte tenha se manifestado no prazo legal, o fato é que não comprovou o pagamento das custas recursais devidas em dobro, visto que trouxe documentos que comprovam apenas o pagamento simples das custas recursais devidas ao Superior Tribunal de Justiça e a este Tribunal de Justiça (FUNJUS), pois não há correspondência entre o número do código de barras constante das guias de recolhimento e dos comprovantes de pagamento apresentados.

Nesse sentido:
"AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PREPARO RECURSAL. AUSÊNCIA DE CORRESPONDÊNCIA ENTRE O NÚMERO DE CÓDIGO DE BARRAS E DO COMPROVANTE DE PAGAMENTO BANCÁRIO. RECURSO DESERTO. AGRAVO INTERNO DESPROVIDO.
1. Nos termos da jurisprudência do Superior Tribunal de Justiça, 'a falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento enseja irregularidade no preparo do recurso especial e, portanto, sua deserção' (AgInt no AREsp 1.449.432/SP, Relator Ministro Luis Felipe Salomão, Quarta Turma, DJe de 12/5/2020).
2. É inviável a análise de questão meritória em recurso especial que não ultrapassa sequer o juízo de admissibilidade.
3. Agravo interno desprovido."
(AgInt no AREsp n. 2.665.947/MS, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 28/10/2024, DJe de 5/11/2024.).

Diante do exposto, inadmito o recurso especial interposto.`;

/**
 * INTEMPESTIVO — recurso fora do prazo.
 * Fonte: minutas/DMG/0151935-95.2025.8.16.0000 Pet - intempestivo.pdf
 *         minutas/VANESSA/0000859-84.2026.8.16.0098 Pet.pdf
 */
const BODY_INTEMPESTIVO =
`O recurso especial não pode ser admitido, pois foi interposto sem observância do prazo previsto no artigo 1.003, § 5º, c/c artigo 219, ambos do Código de Processo Civil.

Isto porque se verifica que a intimação do acórdão recorrido se deu pela disponibilização no DJEN na data de [DATA DE DISPONIBILIZAÇÃO] e, considerada como data da publicação o primeiro dia útil seguinte ao da disponibilização da informação (artigos 4º, §3º, da Lei 11.419/2006, e 224, do Código de Processo Civil), [DATA DA PUBLICAÇÃO], iniciou-se a contagem do prazo no primeiro dia útil seguinte ao da publicação, isto é, em [DATA DE INÍCIO DO PRAZO].

[OBSERVAÇÃO SOBRE FERIADOS, SE HOUVER]

Sendo assim, a petição recursal protocolada em [DATA DO PROTOCOLO] é intempestiva, já que o prazo de 15 (quinze) dias úteis para interposição do recurso findou em [DATA FINAL DO PRAZO].

Neste sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. RECURSO MANEJADO SOB A ÉGIDE DO NCPC. RECURSO INTEMPESTIVO. RECURSO ESPECIAL INTERPOSTO NA VIGÊNCIA DO NCPC. RECURSO ESPECIAL APRESENTADO FORA DO PRAZO LEGAL. INTEMPESTIVIDADE. APLICAÇÃO DOS ARTS. 219 E 1.003, § 5º, AMBOS DO NCPC. ADMISSIBILIDADE DO APELO NOBRE. JUÍZO BIFÁSICO. AUSÊNCIA DE VINCULAÇÃO DO STJ. AGRAVO INTERNO NÃO PROVIDO.
1. Aplica-se o NCPC a este julgamento ante os termos do Enunciado Administrativo nº 3, aprovado pelo Plenário do STJ na sessão de 9/3/2016: Aos recursos interpostos com fundamento no CPC/2015 (relativos a decisões publicadas a partir de 18 de março de 2016) serão exigidos os requisitos de admissibilidade recursal na forma do novo CPC.
2. A interposição de recurso especial após o prazo legal implica o seu não conhecimento, por intempestividade, nos termos dos arts. 219 e 1.003, § 5º, ambos do NCPC.
3. O juízo de admissibilidade do apelo nobre é bifásico, não ficando o STJ vinculado à decisão proferida pela Corte estadual.
4. Agravo interno não provido."
(AgInt no AREsp n. 2.039.729/RS, relator Ministro Moura Ribeiro, Terceira Turma, julgado em 9/5/2022, DJe de 11/5/2022.)

Diante do exposto, inadmito o recurso especial interposto.`;

// ---------------------------------------------------------------------------
// Helpers para identificar perfil de recurso
// ---------------------------------------------------------------------------

type ResourceKind = 'resp' | 're';

interface ResourceProfile {
  kind: ResourceKind;
  shortLabel: string;
  fullLabel: string;
  superiorCourtName: string;
  superiorCourtShort: string;
}

const RESOURCE_PROFILES: Record<ResourceKind, ResourceProfile> = {
  resp: {
    kind: 'resp',
    shortLabel: 'REsp',
    fullLabel: 'Recurso Especial',
    superiorCourtName: 'Superior Tribunal de Justiça',
    superiorCourtShort: 'STJ'
  },
  re: {
    kind: 're',
    shortLabel: 'RE',
    fullLabel: 'Recurso Extraordinário',
    superiorCourtName: 'Supremo Tribunal Federal',
    superiorCourtShort: 'STF'
  }
};

const getResourceProfile = (path: MinutaTemplatePathStep[]): ResourceProfile => {
  const initialChoice = path[0]?.optionText;
  return initialChoice === 'Recurso Extraordinário (RE)'
    ? RESOURCE_PROFILES.re
    : RESOURCE_PROFILES.resp;
};

// ---------------------------------------------------------------------------
// Resolução principal
// ---------------------------------------------------------------------------

export const resolveMinutaTemplate = (path: MinutaTemplatePathStep[]): MinutaTemplate => {
  const profile = getResourceProfile(path);
  const lastStep = path[path.length - 1];

  switch (lastStep.stepKey) {

    // --- COMPLEMENTAÇÃO: falta guia ---
    case 'comp_falta_guia': {
      const guide = lastStep.optionText; // 'GRU' ou 'FUNJUS'
      if (guide === 'GRU') {
        return {
          id: `comp-falta-guia-gru-${profile.kind}`,
          title: `${profile.shortLabel} — complementação por ausência da guia GRU`,
          text: `O recurso não foi devidamente preparado, visto que a parte juntou o comprovante de pagamento referente às custas devidas ao ${profile.superiorCourtName}, mas não juntou o respectivo formulário de guia GRU.

Nesse particular, é assente o entendimento do Superior Tribunal de Justiça no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4/2023).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, juntar a guia GRU correspondente ao recolhimento já efetuado, sob pena de deserção.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
          sourceFiles: ['minutas/DMG/0001365-67.2026.8.16.0031 Pet deserto.pdf']
        };
      }
      // FUNJUS
      return {
        id: `comp-falta-guia-funjus-${profile.kind}`,
        title: `${profile.shortLabel} — complementação por ausência da guia FUNJUS`,
        text: `O recurso não foi devidamente preparado, visto que a parte juntou o comprovante de pagamento referente às custas locais devidas a este Tribunal de Justiça, mas não juntou o respectivo formulário de guia FUNJUS.

Nesse particular, é assente o entendimento do Superior Tribunal de Justiça no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4/2023).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, juntar a guia FUNJUS correspondente ao recolhimento já efetuado, sob pena de deserção.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
        sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
      };
    }

    // --- COMPLEMENTAÇÃO: falta comprovante ---
    case 'comp_falta_comprovante': {
      const guide = lastStep.optionText;
      if (guide === 'GRU') {
        return {
          id: `comp-falta-comprovante-gru-${profile.kind}`,
          title: `${profile.shortLabel} — complementação por ausência de comprovante GRU`,
          text: BODY_COMP_FALTA_COMPROVANTE_GRU.replace(/\[CORTE SUPERIOR\]/g, profile.superiorCourtName),
          sourceFiles: ['minutas/VANESSA/0000281-66.2026.8.16.0084 Pet.pdf']
        };
      }
      return {
        id: `comp-falta-comprovante-funjus-${profile.kind}`,
        title: `${profile.shortLabel} — complementação por ausência de comprovante FUNJUS`,
        text: BODY_COMP_FALTA_COMPROVANTE_FUNJUS,
        sourceFiles: ['minutas/VANESSA/0000281-66.2026.8.16.0084 Pet.pdf']
      };
    }

    // --- COMPLEMENTAÇÃO: comprovante GRU com situação específica ---
    case 'comp_comp_gru': {
      const opt = lastStep.optionText;
      if (opt === 'Agendamento / em análise (transação não efetivada)') {
        return {
          id: `comp-comp-agend-gru-${profile.kind}`,
          title: `${profile.shortLabel} — complementação por comprovante GRU em agendamento`,
          text: `O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao ${profile.superiorCourtName} não restou comprovado, já que o comprovante de agendamento bancário juntado no mov. [MOVIMENTO DO COMPROVANTE GRU] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento definitivo referente à guia GRU juntada no mov. [MOVIMENTO DA GUIA GRU], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento das custas devidas ao ${profile.superiorCourtName}, conforme normativo de custas vigente.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
          sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
        };
      }
      // Valor divergente / insuficiente
      return {
        id: `comp-comp-valor-gru-${profile.kind}`,
        title: `${profile.shortLabel} — complementação por comprovante GRU com valor divergente`,
        text: `O recurso não foi devidamente preparado, visto que o valor recolhido por meio da guia GRU referente às custas devidas ao ${profile.superiorCourtName} mostra-se insuficiente ou divergente do valor exigido.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá juntar nova guia GRU com o valor correto das custas devidas ao ${profile.superiorCourtName}, acompanhada do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
        sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
      };
    }

    // --- COMPLEMENTAÇÃO: comprovante FUNJUS com situação específica ---
    case 'comp_comp_funjus': {
      const opt = lastStep.optionText;
      if (opt === 'Agendamento / em análise') {
        return {
          id: `comp-comp-agend-funjus-${profile.kind}`,
          title: `${profile.shortLabel} — complementação por comprovante FUNJUS em agendamento`,
          text: BODY_COMP_AGENDAMENTO_FUNJUS,
          sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
        };
      }
      // Valor divergente / insuficiente
      return {
        id: `comp-comp-valor-funjus-${profile.kind}`,
        title: `${profile.shortLabel} — complementação por comprovante FUNJUS com valor divergente`,
        text: `O recurso não foi devidamente preparado, visto que o valor recolhido por meio da guia FUNJUS referente às custas locais devidas a este Tribunal de Justiça mostra-se insuficiente ou divergente do valor exigido.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá gerar nova guia FUNJUS com o valor correto das custas devidas a este Tribunal de Justiça, no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau, acompanhada do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
        sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
      };
    }

    // --- COMPLEMENTAÇÃO: irregularidade GRU ---
    case 'comp_irr_gru': {
      const opt = lastStep.optionText;

      if (opt === 'Agendamento / em análise (transação não efetivada)') {
        return {
          id: `comp-agend-gru-${profile.kind}`,
          title: `${profile.shortLabel} — complementação GRU por agendamento`,
          text: `O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao ${profile.superiorCourtName} não restou comprovado, já que o comprovante de agendamento bancário juntado no mov. [MOVIMENTO DO COMPROVANTE GRU] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento definitivo referente à guia GRU juntada no mov. [MOVIMENTO DA GUIA GRU], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento das custas devidas ao ${profile.superiorCourtName}, conforme normativo de custas vigente.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo ${profile.superiorCourtShort} por e-mail, contendo os dados de identificação do contribuinte e o número único do processo.`,
          sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
        };
      }

      if (opt === 'Valor divergente / insuficiente (é val. falso)') {
        return {
          id: `comp-valor-gru-${profile.kind}`,
          title: `${profile.shortLabel} — complementação GRU por valor divergente`,
          text: `O recurso não foi devidamente preparado, visto que o valor recolhido por meio da guia GRU referente às custas devidas ao ${profile.superiorCourtName} mostra-se insuficiente ou divergente do valor exigido.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá juntar nova guia GRU com o valor correto das custas devidas ao ${profile.superiorCourtName}, acompanhada do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
          sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
        };
      }

      if (opt === 'Sem número de processo / número incorreto') {
        return {
          id: `comp-numero-gru-${profile.kind}`,
          title: `${profile.shortLabel} — complementação GRU por identificação processual divergente`,
          text: `O recurso não foi devidamente preparado, visto que a guia GRU referente às custas devidas ao ${profile.superiorCourtName} apresentada não permite a vinculação segura ao presente feito, diante da ausência do número do processo, número incorreto ou outra falha de identificação processual.

Nesse particular, é assente o entendimento do Superior Tribunal de Justiça no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4/2023.)

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar o preparo recursal, sob pena de deserção.

Para regularização, a parte deverá gerar e juntar nova guia GRU com a correta identificação processual, acompanhada do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
          sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
        };
      }

      if (opt === 'Pago a destempo — PAD (após o prazo recursal)') {
        return {
          id: `comp-pad-gru-${profile.kind}`,
          title: `${profile.shortLabel} — complementação GRU por recolhimento a destempo`,
          text: `O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao ${profile.superiorCourtName} foi efetuado após o prazo recursal, não sendo suficiente para demonstrar a regularidade do preparo no momento exigido em lei.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar o preparo recursal, sob pena de deserção.

Para regularização, a parte deverá comprovar o recolhimento tempestivo ou, se for o caso, apresentar novo preparo conforme o fundamento jurídico aplicável ao caso concreto, acompanhado da respectiva guia GRU e do comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
          sourceFiles: [
            'minutas/DMG/0151935-95.2025.8.16.0000 Pet - intempestivo.pdf',
            'minutas/VANESSA/0000859-84.2026.8.16.0098 Pet.pdf'
          ]
        };
      }

      // Guia pertencente a outro processo
      return {
        id: `comp-outro-processo-gru-${profile.kind}`,
        title: `${profile.shortLabel} — complementação GRU por guia de outro processo`,
        text: `O recurso não foi devidamente preparado, visto que a guia GRU referente às custas devidas ao ${profile.superiorCourtName} apresentada não se refere aos presentes autos, de modo que não é apta a comprovar o recolhimento devido neste recurso.

Nesse particular, é assente o entendimento do Superior Tribunal de Justiça no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4/2023.)

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar o preparo recursal, sob pena de deserção.

Para regularização, a parte deverá gerar e juntar a guia GRU correspondente ao presente feito, acompanhada do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
        sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
      };
    }

    // --- COMPLEMENTAÇÃO: irregularidade FUNJUS ---
    case 'comp_irr_funjus': {
      const opt = lastStep.optionText;

      if (opt === 'Agendamento / em análise') {
        return {
          id: `comp-agend-funjus-${profile.kind}`,
          title: `${profile.shortLabel} — complementação FUNJUS por agendamento`,
          text: BODY_COMP_AGENDAMENTO_FUNJUS,
          sourceFiles: [
            'minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf',
            'minutas/GABY/0003396-38.2025.8.16.0179 Pet - COMPROVANTE FUNJUS - EM PROCESSO DE AUTENTICACAO - INTIMADO COMPROVAR CORRETAMENTE - EQUIVALE A AGENDAMENTO.pdf'
          ]
        };
      }

      if (opt === 'Valor divergente / insuficiente') {
        return {
          id: `comp-valor-funjus-${profile.kind}`,
          title: `${profile.shortLabel} — complementação FUNJUS por valor divergente`,
          text: `O recurso não foi devidamente preparado, visto que o valor recolhido por meio da guia FUNJUS referente às custas locais devidas a este Tribunal de Justiça mostra-se insuficiente ou divergente do valor exigido.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá gerar nova guia FUNJUS com o valor correto das custas devidas a este Tribunal de Justiça, no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau, acompanhada do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
          sourceFiles: ['minutas/GABY/0003021-52.2026.8.16.0001 Pet - INTIMADO COMPLEMENTAR CUSTAS - AGENDAMENTO FUNJUS.pdf']
        };
      }

      if (opt === 'Sem número de processo / número incorreto') {
        return {
          id: `comp-numero-funjus-${profile.kind}`,
          title: `${profile.shortLabel} — complementação FUNJUS por identificação processual divergente`,
          text: BODY_COMP_OUTRO_PROCESSO_FUNJUS,
          sourceFiles: ['minutas/VANESSA/0020823-03.2025.8.16.0194 Pet.pdf']
        };
      }

      if (opt === 'Pago a destempo — PAD') {
        return {
          id: `comp-pad-funjus-${profile.kind}`,
          title: `${profile.shortLabel} — complementação FUNJUS por recolhimento a destempo`,
          text: `O recurso não foi devidamente preparado, visto que o recolhimento das custas locais devidas a este Tribunal de Justiça (FUNJUS) foi efetuado após o prazo recursal, não sendo suficiente para demonstrar a regularidade do preparo no momento exigido em lei.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar o preparo recursal, sob pena de deserção.

Para regularização, a parte deverá comprovar o recolhimento tempestivo ou, se for o caso, apresentar novo preparo, gerando nova guia FUNJUS no sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau, acompanhada do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.`,
          sourceFiles: [
            'minutas/DMG/0151935-95.2025.8.16.0000 Pet - intempestivo.pdf',
            'minutas/VANESSA/0000859-84.2026.8.16.0098 Pet.pdf'
          ]
        };
      }

      // Guia pertencente a outro processo
      return {
        id: `comp-outro-processo-funjus-${profile.kind}`,
        title: `${profile.shortLabel} — complementação FUNJUS por guia de outro processo`,
        text: BODY_COMP_OUTRO_PROCESSO_FUNJUS,
        sourceFiles: ['minutas/VANESSA/0020823-03.2025.8.16.0194 Pet.pdf']
      };
    }

    // --- DOBRO: falta guia ---
    case 'dobro_falta_guia': {
      const bodyBase = profile.kind === 'resp' ? BODY_DOBRO_SO_GUIAS_RESP : BODY_DOBRO_SO_GUIAS_RE;
      return {
        id: `dobro-falta-guia-${profile.kind}`,
        title: `${profile.shortLabel} — pagamento em dobro (ausência de guias)`,
        text: bodyBase,
        sourceFiles: ['minutas/GABY/0001137-80.2026.8.16.0035 Pet - CUSTAS EM DOBRO - JUNTOU APENAS AS GUIAS.pdf']
      };
    }

    // --- DOBRO: falta comprovante ---
    case 'dobro_falta_comprovante': {
      const bodyBase = profile.kind === 'resp' ? BODY_DOBRO_SO_GUIAS_RESP : BODY_DOBRO_SO_GUIAS_RE;
      return {
        id: `dobro-falta-comprovante-${profile.kind}`,
        title: `${profile.shortLabel} — pagamento em dobro (ausência de comprovantes)`,
        text: bodyBase,
        sourceFiles: ['minutas/GABY/0001137-80.2026.8.16.0035 Pet - CUSTAS EM DOBRO - JUNTOU APENAS AS GUIAS.pdf']
      };
    }

    // --- DOBRO: pagamento intempestivo ---
    case 'dobro_intempestivo': {
      const bodyBase = profile.kind === 'resp' ? BODY_DOBRO_SO_GUIAS_RESP : BODY_DOBRO_SO_GUIAS_RE;
      return {
        id: `dobro-intempestivo-${profile.kind}`,
        title: `${profile.shortLabel} — pagamento em dobro (recolhimento intempestivo)`,
        text: bodyBase,
        sourceFiles: ['minutas/GABY/0001137-80.2026.8.16.0035 Pet - CUSTAS EM DOBRO - JUNTOU APENAS AS GUIAS.pdf']
      };
    }

    // --- DOBRO: autos físicos N/D ---
    case 'dobro_nd': {
      const corteLabel = profile.superiorCourtShort;
      return {
        id: `dobro-nd-${profile.kind}`,
        title: `${profile.shortLabel} — pagamento em dobro (autos físicos não digitalizados)`,
        text: `A parte não comprovou o recolhimento do preparo, visto que se trata de processo físico não digitalizado, no qual não há comprovação regular do preparo recursal, abrangendo as custas locais, as custas devidas ao ${profile.superiorCourtName} e, quando cabível, o porte de remessa e retorno.

A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil e Súmula 187/${corteLabel}, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- [VALOR FUNJUS EM DOBRO], por meio do Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais, por meio de guia gerada no próprio sítio deste Tribunal de Justiça;
- [VALOR DAS CUSTAS ${corteLabel} EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao ${profile.superiorCourtName};
- [VALOR DO PORTE DE REMESSA E RETORNO EM DOBRO], referente ao recolhimento em dobro do porte de remessa e retorno, se exigível no caso concreto.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.`,
        sourceFiles: []
      };
    }

    // --- DESERÇÃO GRU ---
    case 'desercao_gru':
    // --- DESERÇÃO AMBAS ---
    case 'desercao_ambas':
    // --- DESERÇÃO FUNJUS ---
    case 'desercao_funjus': {
      const opt = lastStep.optionText;
      // Caso de deserção por código de barras / simples x dobro
      if (
        opt === 'Valores divergentes' ||
        opt === 'Valor divergente (insuficiente)' ||
        opt === 'Intimado para pagar em dobro e pagou simples' ||
        opt === 'Guia pertencente a outro processo' ||
        opt === 'Guias pertencentes a outros processos'
      ) {
        return {
          id: `desercao-irregularidade-${profile.kind}-${lastStep.stepKey}`,
          title: `${profile.shortLabel} — deserção por irregularidade material`,
          text: BODY_DESERCAO_DOBRO_SIMPLES,
          sourceFiles: ['minutas/VANESSA/0139226-28.2025.8.16.0000 Pet.pdf']
        };
      }
      // Demais casos (agendamento, N/D, justaposição)
      return {
        id: `desercao-${profile.kind}-${lastStep.stepKey}`,
        title: `${profile.shortLabel} — deserção`,
        text: BODY_DESERCAO_GERAL,
        sourceFiles: [
          'minutas/DMG/0001365-67.2026.8.16.0031 Pet deserto.pdf',
          'minutas/VANESSA/0139226-28.2025.8.16.0000 Pet.pdf'
        ]
      };
    }

    // --- INTEMPESTIVO ---
    case 'intempestivo': {
      return {
        id: `intempestivo-${profile.kind}`,
        title: `${profile.shortLabel} — inadmissão por intempestividade`,
        text: BODY_INTEMPESTIVO,
        sourceFiles: [
          'minutas/DMG/0151935-95.2025.8.16.0000 Pet - intempestivo.pdf',
          'minutas/VANESSA/0000859-84.2026.8.16.0098 Pet.pdf'
        ]
      };
    }

    default:
      return {
        id: 'fallback-template',
        title: `${profile.shortLabel} — regularização de preparo`,
        text: `Intime-se a parte recorrente para regularizar o preparo recursal do ${profile.fullLabel.toLowerCase()}, no prazo legal, observando-se a irregularidade apontada e a consequência processual aplicável ao caso concreto.`,
        sourceFiles: []
      };
  }
};
