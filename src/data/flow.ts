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
    pergunta: 'Qual o tipo de recurso excepcional em analise?',
    opcoes: [
      option(
        'Recurso Especial (REsp)',
        'classif_irregularidade',
        'Recurso Especial dirigido ao Superior Tribunal de Justica.'
      ),
      option(
        'Recurso Extraordinario (RE)',
        'classif_irregularidade',
        'Recurso Extraordinario dirigido ao Supremo Tribunal Federal.'
      )
    ]
  },
  classif_irregularidade: {
    pergunta: 'Qual a classificacao da irregularidade no preparo?',
    opcoes: [
      option(
        'Complementacao (pagamento insuficiente / vicio formal)',
        'complementacao',
        'Trata-se de caso de complementacao de preparo.'
      ),
      option(
        'Pagamento em Dobro (preparo nao comprovado no ato)',
        'dobro',
        'Trata-se de recolhimento nao comprovado no ato da interposicao, sujeito ao pagamento em dobro (art. 1.007, paragrafo 4o, do CPC).'
      ),
      option(
        'Desercao (prazo de regularizacao esgotado)',
        'desercao',
        'Trata-se de hipotese de desercao por irregularidade insanavel ou prazo de regularizacao nao atendido.'
      )
    ]
  },
  complementacao: {
    pergunta: 'Qual e a natureza da pendencia documental?',
    opcoes: [
      option(
        'Falta so a guia (pagamento feito, mas formulario da GRU federal ou do FUNJUS nao foi juntado)',
        'comp_falta_guia',
        'Constatada a ausencia do formulario de guia de recolhimento, embora o comprovante de debito exista.'
      ),
      option(
        'Falta so o comprovante de pagamento (guia presente, sem recibo)',
        'comp_falta_comprovante',
        'A guia foi juntada; todavia, o comprovante de debito efetivo esta ausente.'
      ),
      option(
        'Irregularidade na guia GRU (FUNJUS esta regular)',
        'comp_irr_gru',
        'Verificada irregularidade na guia GRU; a guia FUNJUS encontra-se regular.'
      ),
      option(
        'Irregularidade na guia FUNJUS (GRU esta regular)',
        'comp_irr_funjus',
        'Verificada irregularidade na guia FUNJUS; a guia GRU encontra-se regular.'
      )
    ]
  },
  comp_falta_guia: {
    pergunta: 'Qual guia esta ausente?',
    opcoes: [
      finalOption(
        'GRU',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias uteis, proceder a juntada da guia GRU correspondente ao recolhimento ja efetuado, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      ),
      finalOption(
        'FUNJUS',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias uteis, proceder a juntada da guia FUNJUS correspondente ao recolhimento ja efetuado, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      )
    ]
  },
  comp_falta_comprovante: {
    pergunta: 'Comprovante de qual guia esta ausente?',
    opcoes: [
      finalOption(
        'GRU',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias uteis, juntar o comprovante de debito efetivo referente a guia GRU. Ressalta-se que comprovante de agendamento bancario nao constitui prova de quitacao, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      ),
      finalOption(
        'FUNJUS',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias uteis, juntar o comprovante de debito efetivo referente a guia FUNJUS. Ressalta-se que comprovante de agendamento bancario nao constitui prova de quitacao, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      )
    ]
  },
  comp_irr_gru: {
    pergunta: 'Qual a irregularidade constatada na guia GRU?',
    opcoes: [
      finalOption(
        'Agendamento / em analise (transacao nao efetivada)',
        'O comprovante da guia GRU refere-se a agendamento bancario ainda nao efetivado (transacao pendente/em analise). Comprovante de agendamento nao constitui prova de recolhimento efetivo. Intime-se para, no prazo de 5 (cinco) dias uteis, apresentar comprovante de debito definitivo da guia GRU, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      ),
      finalOption(
        'Valor divergente / insuficiente (e val. falso)',
        'O comprovante da guia GRU apresenta valor divergente do exigido (insuficiencia de preparo). Intime-se para, no prazo de 5 (cinco) dias uteis, efetuar o recolhimento complementar da diferenca na guia GRU, sob pena de desercao (art. 1.007, paragrafo 2o, do CPC).'
      ),
      finalOption(
        'Sem numero de processo / numero incorreto',
        'A guia GRU nao contem o numero do processo ou apresenta numeracao incorreta, impossibilitando a vinculacao eletronica do recolhimento ao feito. Intime-se para, no prazo de 5 (cinco) dias uteis, juntar guia GRU com a correta identificacao processual, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      ),
      finalOption(
        'Pago a destempo - PAD (apos o prazo recursal)',
        'O recolhimento da guia GRU foi efetuado apos o prazo recursal (recolhimento intempestivo). Intime-se para, no prazo de 5 (cinco) dias uteis, regularizar o recolhimento da guia GRU, sob pena de desercao.'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia GRU juntada pertence a outro processo ou recurso, nao sendo imputavel ao presente feito. Intime-se para, no prazo de 5 (cinco) dias uteis, juntar a guia GRU correspondente a este processo, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      )
    ]
  },
  comp_irr_funjus: {
    pergunta: 'Qual a irregularidade constatada na guia FUNJUS?',
    opcoes: [
      finalOption(
        'Agendamento / em analise',
        'O comprovante da guia FUNJUS refere-se a agendamento bancario ainda nao efetivado. Comprovante de agendamento nao constitui prova de recolhimento efetivo. Intime-se para, no prazo de 5 (cinco) dias uteis, apresentar comprovante de debito definitivo da guia FUNJUS, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      ),
      finalOption(
        'Valor divergente / insuficiente',
        'O comprovante da guia FUNJUS apresenta valor divergente do exigido. Intime-se para, no prazo de 5 (cinco) dias uteis, efetuar o recolhimento complementar da diferenca na guia FUNJUS, sob pena de desercao (art. 1.007, paragrafo 2o, do CPC).'
      ),
      finalOption(
        'Sem numero de processo / numero incorreto',
        'A guia FUNJUS nao contem o numero do processo ou apresenta numeracao incorreta. Intime-se para, no prazo de 5 (cinco) dias uteis, juntar guia FUNJUS com a correta identificacao processual, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      ),
      finalOption(
        'Pago a destempo - PAD',
        'O recolhimento da guia FUNJUS foi efetuado apos o prazo recursal. Intime-se para, no prazo de 5 (cinco) dias uteis, regularizar o recolhimento da guia FUNJUS, sob pena de desercao.'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia FUNJUS juntada pertence a outro processo ou recurso. Intime-se para, no prazo de 5 (cinco) dias uteis, juntar a guia FUNJUS correspondente a este processo, sob pena de desercao (art. 1.007, paragrafo 7o, do CPC).'
      )
    ]
  },
  dobro: {
    pergunta: 'Qual e a situacao documental do preparo no momento da interposicao?',
    opcoes: [
      option(
        'Falta so a guia (GRU federal + FUNJUS ausentes - sem nenhum documento)',
        'dobro_falta_guia',
        'Verificada a ausencia das guias de recolhimento federal e local no ato da interposicao.'
      ),
      option(
        'Falta so o comprovante (GRU federal + FUNJUS sem comprovante de debito)',
        'dobro_falta_comprovante',
        'As guias federal e local foram juntadas; os comprovantes de debito efetivo estao ausentes.'
      ),
      option(
        'Autos nao digitalizados - processo fisico (N/D)',
        'dobro_nd',
        'Tratando-se de processo fisico nao digitalizado, verificada ausencia ou irregularidade de recolhimento do preparo.'
      )
    ]
  },
  dobro_falta_guia: {
    pergunta: 'Qual a razao identificada para a ausencia das guias GRU e FUNJUS?',
    opcoes: [
      finalOption(
        '2 agendamentos / em analise',
        'Os documentos apresentados para GRU e FUNJUS referem-se a agendamentos bancarios nao efetivados, o que nao constitui comprovacao valida do preparo. Intime-se para, no prazo de 5 (cinco) dias uteis, efetuar o recolhimento em dobro de GRU e FUNJUS com comprovantes de debito efetivo, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 valores divergentes / insuficientes',
        'As guias GRU e FUNJUS apresentam valores inferiores aos exigidos. Intime-se para, no prazo de 5 (cinco) dias uteis, efetuar o recolhimento em dobro dos valores corretos de ambas as guias, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 guias sem numero / numero incorreto de processo',
        'As guias GRU e FUNJUS nao identificam o numero do processo ou apresentam numeracao incorreta. Intime-se para, no prazo de 5 (cinco) dias uteis, recolher em dobro GRU e FUNJUS com correta identificacao processual, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 nao localizadas / nao disponiveis (N/D)',
        'Nao localizados nos autos comprovantes de recolhimento das guias GRU e FUNJUS. Intime-se para, no prazo de 5 (cinco) dias uteis, efetuar o recolhimento em dobro de ambas as guias, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 guias pertencentes a outros processos',
        'As guias GRU e FUNJUS juntadas pertencem a outros processos ou recursos, nao sendo imputaveis ao presente feito. Intime-se para, no prazo de 5 (cinco) dias uteis, efetuar o recolhimento em dobro das guias GRU e FUNJUS correspondentes a este processo, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      )
    ]
  },
  dobro_falta_comprovante: {
    pergunta: 'Qual a situacao especifica dos comprovantes ausentes (GRU + FUNJUS)?',
    opcoes: [
      finalOption(
        '2 agendamentos / em analise',
        'Os comprovantes das guias GRU e FUNJUS correspondem a agendamentos nao efetivados. Agendamento bancario nao constitui prova de quitacao. Intime-se para, no prazo de 5 (cinco) dias uteis, apresentar comprovantes de debito definitivo em dobro de ambas as guias, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 valores divergentes / insuficientes',
        'Os comprovantes das guias GRU e FUNJUS registram valores inferiores aos devidos. Intime-se para, no prazo de 5 (cinco) dias uteis, recolher em dobro os valores corretos de ambas as guias e apresentar os comprovantes correspondentes, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 guias sem numero / numero incorreto de processo',
        'Os comprovantes das guias GRU e FUNJUS nao identificam o processo corretamente. Intime-se para, no prazo de 5 (cinco) dias uteis, apresentar comprovantes do recolhimento em dobro com a correta identificacao processual, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 nao localizados / nao disponiveis (N/D)',
        'Ausentes os comprovantes de quitacao das guias GRU e FUNJUS. Intime-se para, no prazo de 5 (cinco) dias uteis, juntar os comprovantes do recolhimento em dobro de ambas as guias, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      ),
      finalOption(
        '2 pertencentes a outros processos',
        'Os comprovantes juntados referem-se a guias de outros processos. Intime-se para, no prazo de 5 (cinco) dias uteis, apresentar comprovantes do recolhimento em dobro das guias GRU e FUNJUS deste feito, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      )
    ]
  },
  dobro_nd: {
    pergunta: 'Qual a situacao das guias em autos fisicos (nao digitalizados)?',
    opcoes: [
      finalOption(
        '3 guias ausentes / incorretas (GRU federal + FUNJUS + porte de remessa)',
        'Tratando-se de processo fisico nao digitalizado, verificada a ausencia ou irregularidade das guias de recolhimento da corte superior, do FUNJUS e do porte de remessa e retorno. Intime-se para, no prazo de 5 (cinco) dias uteis, efetuar o recolhimento em dobro dessas despesas com a correta identificacao processual, nos termos do art. 1.007, paragrafo 4o, do CPC, sob pena de nao conhecimento do recurso.'
      )
    ]
  },
  desercao: {
    pergunta: 'Qual guia apresenta irregularidade definitiva (ensejando a desercao)?',
    opcoes: [
      option(
        'Irregularidade definitiva na GRU (FUNJUS regular)',
        'desercao_gru',
        'Verificada irregularidade definitiva na guia GRU, nao regularizada no prazo assinado.'
      ),
      option(
        'Irregularidade definitiva em ambas (GRU + FUNJUS)',
        'desercao_ambas',
        'Verificada irregularidade definitiva nas guias GRU e FUNJUS, nao regularizadas no prazo assinado.'
      ),
      option(
        'Irregularidade definitiva na FUNJUS (GRU regular)',
        'desercao_funjus',
        'Verificada irregularidade definitiva na guia FUNJUS, nao regularizada no prazo assinado.'
      )
    ]
  },
  desercao_gru: {
    pergunta: 'Qual a irregularidade que fundamenta a desercao na GRU?',
    opcoes: [
      finalOption(
        'Agendamento nao efetivado',
        'O comprovante da guia GRU refere-se a agendamento bancario que nao foi efetivado, o que nao constitui prova de quitacao. Comprovante de agendamento nao sana o preparo. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Valor divergente (insuficiente)',
        'O comprovante da guia GRU apresenta valor divergente do exigido, nao tendo sido efetuada a complementacao no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Sem numero de processo / numero incorreto',
        'A guia GRU nao identifica o processo ou apresenta numeracao incorreta, nao tendo sido regularizada no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Nao localizada / nao disponivel (N/D)',
        'Ausente o comprovante de quitacao da guia GRU, nao tendo sido regularizado o preparo no prazo assinado. Decreto a desercao do recurso por falta de preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia GRU apresentada pertence a outro processo, nao tendo sido juntada a guia correspondente a este feito no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      )
    ]
  },
  desercao_ambas: {
    pergunta: 'Qual a irregularidade que fundamenta a desercao nas guias GRU e FUNJUS?',
    opcoes: [
      finalOption(
        'Agendamentos nao efetivados',
        'Os comprovantes das guias GRU e FUNJUS referem-se a agendamentos bancarios nao efetivados. Comprovante de agendamento nao constitui prova de quitacao. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Valores divergentes',
        'As guias GRU e FUNJUS apresentam valores divergentes dos exigidos, nao tendo sido efetuada a regularizacao no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Sem numero de processo / numero incorreto',
        'As guias GRU e FUNJUS nao identificam o processo corretamente, nao tendo sido regularizadas no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Nao localizadas / nao disponiveis (N/D)',
        'Ausentes os comprovantes de quitacao das guias GRU e FUNJUS, nao tendo sido regularizado o preparo no prazo assinado. Decreto a desercao do recurso por falta de preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Guias pertencentes a outros processos',
        'As guias GRU e FUNJUS apresentadas pertencem a outros processos, nao tendo sido juntadas as guias correspondentes a este feito no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      )
    ]
  },
  desercao_funjus: {
    pergunta: 'Qual a irregularidade que fundamenta a desercao na FUNJUS?',
    opcoes: [
      finalOption(
        'Agendamento nao efetivado',
        'O comprovante da guia FUNJUS refere-se a agendamento bancario nao efetivado. Comprovante de agendamento nao constitui prova de quitacao. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Valor divergente (insuficiente)',
        'O comprovante da guia FUNJUS apresenta valor divergente do exigido, nao tendo sido efetuada a regularizacao no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Sem numero de processo / numero incorreto',
        'A guia FUNJUS nao identifica o processo ou apresenta numeracao incorreta, nao tendo sido regularizada no prazo assinado. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Nao localizada / nao disponivel (N/D)',
        'Ausente o comprovante de quitacao da guia FUNJUS, nao tendo sido regularizado o preparo no prazo assinado. Decreto a desercao do recurso por falta de preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      ),
      finalOption(
        'Justaposicao de guia FUNJUS',
        'Verificada a justaposicao de guia FUNJUS nos autos: o comprovante de recolhimento apresentado e o mesmo ja utilizado em outro processo ou recurso anterior, nao sendo habil a comprovar o recolhimento neste feito. Trata-se de vicio insanavel. Decreto a desercao do recurso por irregularidade insanavel no preparo (art. 1.007, paragrafos 4o e 5o, do CPC).'
      )
    ]
  }
};
