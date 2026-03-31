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

const option = (texto: string, proximo: string, snippet: string): Option => ({
  texto,
  proximo,
  snippet
});

const finalOption = (texto: string, snippet: string): Option =>
  option(texto, 'final', snippet);

export const fluxo: Flow = {
  inicio: {
    pergunta: 'Qual o tipo de recurso excepcional em análise?',
    opcoes: [
      option(
        'Recurso Especial (REsp)',
        'classif_irregularidade',
        'Recurso Especial dirigido ao Superior Tribunal de Justiça.'
      ),
      option(
        'Recurso Extraordinário (RE)',
        'classif_irregularidade',
        'Recurso Extraordinário dirigido ao Supremo Tribunal Federal.'
      )
    ]
  },
  classif_irregularidade: {
    pergunta: 'Qual a classificação da irregularidade no preparo?',
    opcoes: [
      option(
        'Complementação — primeira irregularidade (parte ainda não foi intimada)',
        'complementacao',
        'Trata-se de caso de complementação de preparo.'
      ),
      option(
        'Pagamento em Dobro (preparo não comprovado no ato)',
        'dobro',
        'Trata-se de recolhimento não comprovado no ato da interposição, sujeito ao pagamento em dobro (art. 1.007, §4°, do CPC).'
      ),
      option(
        'Deserção — após intimação não atendida (prazo concedido e não cumprido)',
        'desercao',
        'Trata-se de hipótese de deserção por irregularidade insanável ou prazo de regularização não atendido.'
      ),
      option(
        'Intempestivo (recurso interposto fora do prazo)',
        'intempestivo',
        'O recurso foi interposto sem observância do prazo previsto no artigo 1.003, §5°, c/c artigo 219, ambos do Código de Processo Civil.'
      )
    ]
  },
  complementacao: {
    pergunta: 'Qual é a natureza da pendência documental?',
    opcoes: [
      option(
        'Falta só o comprovante de pagamento (guia presente, sem recibo)',
        'comp_falta_comprovante',
        'A guia foi juntada; todavia, o comprovante de débito efetivo está ausente.'
      ),
      option(
        'Irregularidade na guia GRU (FUNJUS está regular)',
        'comp_irr_gru',
        'Verificada irregularidade na guia GRU; a guia FUNJUS encontra-se regular.'
      ),
      option(
        'Irregularidade na guia FUNJUS (GRU está regular)',
        'comp_irr_funjus',
        'Verificada irregularidade na guia FUNJUS; a guia GRU encontra-se regular.'
      )
    ]
  },
  comp_falta_guia: {
    pergunta: 'Qual guia está ausente (a outra foi apresentada regularmente)?',
    opcoes: [
      finalOption(
        'GRU',
        'Constatada a ausência da guia GRU no ato da interposição. Intime-se a parte recorrente para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro das custas devidas ao Tribunal Superior, com juntada da guia GRU e comprovante de débito efetivo, sob pena de deserção (art. 1.007, §4°, do CPC).'
      ),
      finalOption(
        'FUNJUS',
        'Constatada a ausência da guia FUNJUS no ato da interposição. Intime-se a parte recorrente para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro das custas locais devidas a este Tribunal de Justiça, com juntada da guia FUNJUS e comprovante de débito efetivo, sob pena de deserção (art. 1.007, §4°, do CPC).'
      )
    ]
  },
  comp_falta_comprovante: {
    pergunta: 'Comprovante de qual guia está ausente?',
    opcoes: [
      option(
        'GRU',
        'comp_comp_gru',
        'A guia GRU foi juntada; o comprovante de débito efetivo está ausente ou apresenta irregularidade.'
      ),
      option(
        'FUNJUS',
        'comp_comp_funjus',
        'A guia FUNJUS foi juntada; o comprovante de débito efetivo está ausente ou apresenta irregularidade.'
      )
    ]
  },
  comp_comp_gru: {
    pergunta: 'Qual a situação do comprovante de pagamento da GRU?',
    opcoes: [
      finalOption(
        'Agendamento / em análise (transação não efetivada)',
        'O comprovante da guia GRU refere-se a agendamento bancário ainda não efetivado. Comprovante de agendamento não constitui prova de recolhimento efetivo.'
      ),
      finalOption(
        'Valor divergente / insuficiente',
        'O comprovante da guia GRU apresenta valor divergente do exigido (insuficiência de preparo).'
      )
    ]
  },
  comp_comp_funjus: {
    pergunta: 'Qual a situação do comprovante de pagamento da FUNJUS?',
    opcoes: [
      finalOption(
        'Agendamento / em análise',
        'O comprovante da guia FUNJUS refere-se a agendamento bancário ainda não efetivado. Comprovante de agendamento não constitui prova de recolhimento efetivo.'
      ),
      finalOption(
        'Valor divergente / insuficiente',
        'O comprovante da guia FUNJUS apresenta valor divergente do exigido.'
      )
    ]
  },
  comp_irr_gru: {
    pergunta: 'Qual a irregularidade constatada na guia GRU? (use somente se a parte ainda não foi intimada)',
    opcoes: [
      finalOption(
        'Sem número de processo / número incorreto',
        'A guia GRU não contém o número do processo ou apresenta numeração incorreta, impossibilitando a vinculação eletrônica do recolhimento ao feito. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar guia GRU com a correta identificação processual, sob pena de deserção (art. 1.007, §7°, do CPC).'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia GRU juntada pertence a outro processo ou recurso, não sendo imputável ao presente feito. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar a guia GRU correspondente a este processo, sob pena de deserção (art. 1.007, §7°, do CPC).'
      )
    ]
  },
  comp_irr_funjus: {
    pergunta: 'Qual a irregularidade constatada na guia FUNJUS? (use somente se a parte ainda não foi intimada)',
    opcoes: [
      finalOption(
        'Agendamento / em análise',
        'O comprovante da guia FUNJUS refere-se a agendamento bancário ainda não efetivado. Comprovante de agendamento não constitui prova de recolhimento efetivo. Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovante de débito definitivo da guia FUNJUS, sob pena de deserção (art. 1.007, §2°, do CPC).'
      ),
      finalOption(
        'Valor divergente / insuficiente',
        'O comprovante da guia FUNJUS apresenta valor divergente do exigido. Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento complementar da diferença na guia FUNJUS, sob pena de deserção (art. 1.007, §2°, do CPC).'
      ),
      finalOption(
        'Sem número de processo / número incorreto',
        'A guia FUNJUS não contém o número do processo ou apresenta numeração incorreta. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar guia FUNJUS com a correta identificação processual, sob pena de deserção (art. 1.007, §7°, do CPC).'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia FUNJUS juntada pertence a outro processo ou recurso. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar a guia FUNJUS correspondente a este processo, sob pena de deserção (art. 1.007, §7°, do CPC).'
      )
    ]
  },
  dobro: {
    pergunta: 'Qual é a situação documental do preparo no momento da interposição?',
    opcoes: [
      option(
        'Falta de uma guia (apenas GRU OU apenas FUNJUS ausente — a outra está regular)',
        'comp_falta_guia',
        'Constatada a ausência de uma única guia no ato da interposição: a outra guia está regular. Trata-se de ausência de preparo no ato, sujeita ao recolhimento em dobro (art. 1.007, §4°, do CPC).'
      ),
      option(
        'Falta só a guia (GRU federal + FUNJUS ausentes — sem nenhum documento)',
        'dobro_falta_guia',
        'Verificada a ausência das guias de recolhimento GRU e FUNJUS no ato da interposição.'
      ),
      option(
        'Falta só o comprovante (GRU federal + FUNJUS sem comprovante de débito)',
        'dobro_falta_comprovante',
        'As guias GRU e FUNJUS foram juntadas; os comprovantes de débito efetivo estão ausentes.'
      ),
      option(
        'Autos não digitalizados — processo físico (N/D) · uso raro',
        'dobro_nd',
        'Tratando-se de processo físico não digitalizado, verificada ausência ou irregularidade de recolhimento do preparo.'
      ),
      option(
        'Pagamento Intempestivo (recolhimento efetuado após o prazo recursal)',
        'dobro_intempestivo',
        'Verificado que o recolhimento do preparo foi efetuado após o prazo recursal, equiparando-se à ausência de preparo no ato da interposição, sujeito ao recolhimento em dobro (art. 1.007, §4°, do CPC).'
      )
    ]
  },
  dobro_falta_guia: {
    pergunta: 'Qual a razão identificada para a ausência das guias GRU e FUNJUS?',
    opcoes: [
      finalOption(
        '2 agendamentos / em análise',
        'Os documentos apresentados para GRU e FUNJUS referem-se a agendamentos bancários não efetivados, o que não constitui comprovação válida do preparo. Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro de GRU e FUNJUS com comprovantes de débito efetivo, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      ),
      finalOption(
        '2 valores divergentes / insuficientes',
        'As guias GRU e FUNJUS apresentam valores inferiores aos exigidos. Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro dos valores corretos de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      ),
      finalOption(
        '2 não localizadas / não disponíveis (N/D)',
        'Não localizados nos autos comprovantes de recolhimento das guias GRU e FUNJUS. Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      ),
      finalOption(
        '2 guias pertencentes a outros processos',
        'As guias GRU e FUNJUS juntadas pertencem a outros processos ou recursos, não sendo imputáveis ao presente feito. Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro das guias GRU e FUNJUS correspondentes a este processo, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      )
    ]
  },
  dobro_falta_comprovante: {
    pergunta: 'Qual a situação específica dos comprovantes ausentes (GRU + FUNJUS)?',
    opcoes: [
      finalOption(
        '2 agendamentos / em análise',
        'Os comprovantes das guias GRU e FUNJUS correspondem a agendamentos não efetivados. Agendamento bancário não constitui prova de quitação. Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovantes de débito definitivo em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      ),
      finalOption(
        '2 valores divergentes / insuficientes',
        'Os comprovantes das guias GRU e FUNJUS registram valores inferiores aos devidos. Intime-se para, no prazo de 5 (cinco) dias úteis, recolher em dobro os valores corretos de ambas as guias e apresentar os comprovantes correspondentes, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      ),
      finalOption(
        '2 não localizados / não disponíveis (N/D)',
        'Ausentes os comprovantes de quitação das guias GRU e FUNJUS. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar os comprovantes do recolhimento em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      )
    ]
  },
  dobro_nd: {
    pergunta: 'Qual a situação das guias em autos físicos (não digitalizados)?',
    opcoes: [
      finalOption(
        '3 guias ausentes / incorretas (GRU federal + FUNJUS + porte de remessa)',
        'Tratando-se de processo físico não digitalizado, verificada a ausência ou irregularidade das guias de recolhimento (GRU, FUNJUS e porte de remessa e retorno). Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro das guias GRU, FUNJUS e porte de remessa e retorno com a correta identificação processual, nos termos do art. 1.007, §4°, do CPC e Súmula 187/STJ, sob pena de não conhecimento do recurso.'
      )
    ]
  },
  dobro_intempestivo: {
    pergunta: 'Qual guia foi recolhida intempestivamente?',
    opcoes: [
      finalOption(
        'GRU (recolhimento após o prazo recursal)',
        'Verificado recolhimento intempestivo da guia GRU. Intime-se para recolhimento em dobro da GRU, nos termos do art. 1.007, §4°, do CPC.'
      ),
      finalOption(
        'FUNJUS (recolhimento após o prazo recursal)',
        'Verificado recolhimento intempestivo da guia FUNJUS. Intime-se para recolhimento em dobro da FUNJUS, nos termos do art. 1.007, §4°, do CPC.'
      ),
      finalOption(
        'GRU e FUNJUS (ambas recolhidas após o prazo recursal)',
        'Verificado recolhimento intempestivo das guias GRU e FUNJUS. Intime-se para recolhimento em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC.'
      )
    ]
  },
  desercao: {
    pergunta: 'Qual guia apresenta irregularidade definitiva após intimação não atendida?',
    opcoes: [
      option(
        'Irregularidade definitiva na GRU (FUNJUS regular)',
        'desercao_gru',
        'Verificada irregularidade definitiva na guia GRU, não regularizada no prazo assinado.'
      ),
      option(
        'Irregularidade definitiva em ambas (GRU + FUNJUS)',
        'desercao_ambas',
        'Verificada irregularidade definitiva nas guias GRU e FUNJUS, não regularizadas no prazo assinado.'
      ),
      option(
        'Irregularidade definitiva na FUNJUS (GRU regular)',
        'desercao_funjus',
        'Verificada irregularidade definitiva na guia FUNJUS, não regularizada no prazo assinado.'
      )
    ]
  },
  desercao_gru: {
    pergunta: 'Qual a irregularidade que fundamenta a deserção na GRU?',
    opcoes: [
      finalOption(
        'Agendamento não efetivado',
        'O comprovante da guia GRU refere-se a agendamento bancário que não foi efetivado, o que não constitui prova de quitação. Comprovante de agendamento não sana o preparo. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Valor divergente (insuficiente)',
        'O comprovante da guia GRU apresenta valor divergente do exigido, não tendo sido efetuada a complementação no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Intimado para pagar em dobro e pagou simples',
        'A parte foi intimada para recolhimento em dobro e apresentou comprovante de recolhimento apenas simples, sem correspondência entre o código de barras da guia e do comprovante. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Não localizada / não disponível (N/D)',
        'Ausente o comprovante de quitação da guia GRU, não tendo sido regularizado o preparo no prazo assinado. Decreto a deserção do recurso por falta de preparo (art. 1.007, §4°-5°, do CPC — Súmula 187/STJ).'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia GRU apresentada pertence a outro processo, não tendo sido juntada a guia correspondente a este feito no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Guia GRU não apresentada após intimação (nunca juntada)',
        'A parte foi intimada para juntar a guia GRU correspondente ao recolhimento das custas devidas ao Tribunal Superior e não atendeu à determinação no prazo assinado. Decreto a deserção do recurso por falta de comprovação regular do preparo (art. 1.007, §§ 4°-5°, do CPC — Súmula 187/STJ).'
      )
    ]
  },
  desercao_ambas: {
    pergunta: 'Qual a irregularidade que fundamenta a deserção nas guias GRU e FUNJUS?',
    opcoes: [
      finalOption(
        'Agendamentos não efetivados',
        'Os comprovantes das guias GRU e FUNJUS referem-se a agendamentos bancários não efetivados. Comprovante de agendamento não constitui prova de quitação. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Valores divergentes',
        'As guias GRU e FUNJUS apresentam valores divergentes dos exigidos, não tendo sido efetuada a regularização no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Sem número de processo / número incorreto',
        'As guias GRU e FUNJUS não identificam o processo corretamente, não tendo sido regularizadas no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Não localizadas / não disponíveis (N/D)',
        'Ausentes os comprovantes de quitação das guias GRU e FUNJUS, não tendo sido regularizado o preparo no prazo assinado. Decreto a deserção do recurso por falta de preparo (art. 1.007, §4°-5°, do CPC — Súmula 187/STJ).'
      ),
      finalOption(
        'Guias pertencentes a outros processos',
        'As guias GRU e FUNJUS apresentadas pertencem a outros processos, não tendo sido juntadas as guias correspondentes a este feito no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      )
    ]
  },
  desercao_funjus: {
    pergunta: 'Qual a irregularidade que fundamenta a deserção na FUNJUS?',
    opcoes: [
      finalOption(
        'Agendamento não efetivado',
        'O comprovante da guia FUNJUS refere-se a agendamento bancário não efetivado. Comprovante de agendamento não constitui prova de quitação. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Valor divergente (insuficiente)',
        'O comprovante da guia FUNJUS apresenta valor divergente do exigido, não tendo sido efetuada a regularização no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Sem número de processo / número incorreto',
        'A guia FUNJUS não identifica o processo ou apresenta numeração incorreta, não tendo sido regularizada no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Não localizada / não disponível (N/D)',
        'Ausente o comprovante de quitação da guia FUNJUS, não tendo sido regularizado o preparo no prazo assinado. Decreto a deserção do recurso por falta de preparo (art. 1.007, §4°-5°, do CPC — Súmula 187/STJ).'
      ),
      finalOption(
        'Justaposição de guia FUNJUS',
        'Verificada a justaposição de guia FUNJUS nos autos: o comprovante de recolhimento apresentado é o mesmo já utilizado em outro processo ou recurso anterior, não sendo hábil a comprovar o recolhimento neste feito. Trata-se de vício insanável. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Guia FUNJUS não apresentada após intimação (nunca juntada)',
        'A parte foi intimada para juntar a guia FUNJUS correspondente às custas locais devidas a este Tribunal de Justiça e não atendeu à determinação no prazo assinado. Decreto a deserção do recurso por falta de comprovação regular do preparo (art. 1.007, §§ 4°-5°, do CPC — Súmula 187/STJ).'
      )
    ]
  },
  intempestivo: {
    pergunta: 'Qual a natureza da intempestividade?',
    opcoes: [
      finalOption(
        'Pagamento realizado fora do prazo recursal',
        'O recurso não pode ser admitido, pois foi interposto sem observância do prazo previsto no artigo 1.003, §5°, c/c artigo 219, ambos do Código de Processo Civil. O recolhimento do preparo foi efetuado após o término do prazo recursal. Diante do exposto, inadmito o recurso interposto.'
      ),
      finalOption(
        'Comprovante de pagamento juntado fora do prazo recursal',
        'O recurso não pode ser admitido, pois foi interposto sem observância do prazo previsto no artigo 1.003, §5°, c/c artigo 219, ambos do Código de Processo Civil. O comprovante de pagamento das custas recursais foi juntado após o término do prazo recursal. Diante do exposto, inadmito o recurso interposto.'
      )
    ]
  }
};
