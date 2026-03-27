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
    pergunta: 'Qual o tipo de recurso/ação em análise?',
    opcoes: [
      option('Apelação', 'classif_irregularidade', 'Recurso de Apelação.'),
      option('Recurso Inominado (JEC)', 'classif_irregularidade', 'Recurso Inominado (Juizados Especiais).'),
      option('Agravo de Instrumento', 'classif_irregularidade', 'Agravo de Instrumento.'),
      option('Recurso Especial (REsp)', 'classif_irregularidade', 'Recurso Especial (REsp).'),
      finalOption(
        'Agravo em REsp (AREsp)',
        'Agravo em Recurso Especial (AREsp). Não há exigência de preparo recursal para o AREsp (art. 1.042, §2°, do CPC). Recurso regular quanto ao preparo.'
      ),
      finalOption(
        'Agravo Interno (AgInt)',
        'Agravo Interno/Regimental. O AgInt não está sujeito a preparo recursal. Recurso regular quanto ao preparo.'
      ),
      finalOption(
        'Embargos de Declaração (EDcl)',
        'Embargos de Declaração. Os EDcl não se sujeitam a preparo (art. 1.023, do CPC). Recurso regular quanto ao preparo.'
      )
    ]
  },
  classif_irregularidade: {
    pergunta: 'Qual a classificação da irregularidade no preparo?',
    opcoes: [
      option(
        'Complementação (pagamento insuficiente / vício formal)',
        'complementacao',
        'Trata-se de caso de complementação de preparo.'
      ),
      option(
        'Pagamento em Dobro (preparo não comprovado no ato)',
        'dobro',
        'Trata-se de recolhimento não comprovado no ato da interposição, sujeito ao pagamento em dobro (art. 1.007, §4°, do CPC).'
      ),
      option(
        'Deserção (prazo de regularização esgotado)',
        'desercao',
        'Trata-se de hipótese de deserção por irregularidade insanável ou prazo de regularização não atendido.'
      )
    ]
  },
  complementacao: {
    pergunta: 'Qual é a natureza da pendência documental?',
    opcoes: [
      option(
        'Falta só a guia (pagamento feito, mas formulário GRU/FUNJUS não juntado)',
        'comp_falta_guia',
        'Constatada a ausência do formulário de guia de recolhimento, embora o comprovante de débito exista.'
      ),
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
    pergunta: 'Qual guia (documento) está ausente?',
    opcoes: [
      finalOption(
        'GRU',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias úteis, proceder à juntada da guia GRU correspondente ao recolhimento já efetuado, sob pena de deserção (art. 1.007, §7°, do CPC).'
      ),
      finalOption(
        'FUNJUS',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias úteis, proceder à juntada da guia FUNJUS correspondente ao recolhimento já efetuado, sob pena de deserção (art. 1.007, §7°, do CPC).'
      )
    ]
  },
  comp_falta_comprovante: {
    pergunta: 'Comprovante de qual guia está ausente?',
    opcoes: [
      finalOption(
        'GRU',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias úteis, juntar o comprovante de débito efetivo referente à guia GRU. Ressalta-se que comprovante de agendamento bancário não constitui prova de quitação, sob pena de deserção (art. 1.007, §7°, do CPC).'
      ),
      finalOption(
        'FUNJUS',
        'Intime-se a parte recorrente para, no prazo de 5 (cinco) dias úteis, juntar o comprovante de débito efetivo referente à guia FUNJUS. Ressalta-se que comprovante de agendamento bancário não constitui prova de quitação, sob pena de deserção (art. 1.007, §7°, do CPC).'
      )
    ]
  },
  comp_irr_gru: {
    pergunta: 'Qual a irregularidade constatada na guia GRU?',
    opcoes: [
      finalOption(
        'Agendamento / em análise (transação não efetivada)',
        'O comprovante da guia GRU refere-se a agendamento bancário ainda não efetivado (transação pendente/em análise). Comprovante de agendamento não constitui prova de recolhimento efetivo. Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovante de débito definitivo da guia GRU, sob pena de deserção (art. 1.007, §7°, do CPC).'
      ),
      finalOption(
        'Valor divergente / insuficiente (e val. falso)',
        'O comprovante da guia GRU apresenta valor divergente do exigido (insuficiência de preparo). Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento complementar da diferença na guia GRU, sob pena de deserção (art. 1.007, §2°, do CPC).'
      ),
      finalOption(
        'Sem número de processo / número incorreto',
        'A guia GRU não contém o número do processo ou apresenta numeração incorreta, impossibilitando a vinculação eletrônica do recolhimento ao feito. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar guia GRU com a correta identificação processual, sob pena de deserção (art. 1.007, §7°, do CPC).'
      ),
      finalOption(
        'Pago a destempo - PAD (após o prazo recursal)',
        'O recolhimento da guia GRU foi efetuado após o prazo recursal (recolhimento intempestivo). Intime-se para, no prazo de 5 (cinco) dias úteis, regularizar o recolhimento da guia GRU, sob pena de deserção.'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia GRU juntada pertence a outro processo ou recurso, não sendo imputável ao presente feito. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar a guia GRU correspondente a este processo, sob pena de deserção (art. 1.007, §7°, do CPC).'
      )
    ]
  },
  comp_irr_funjus: {
    pergunta: 'Qual a irregularidade constatada na guia FUNJUS?',
    opcoes: [
      finalOption(
        'Agendamento / em análise',
        'O comprovante da guia FUNJUS refere-se a agendamento bancário ainda não efetivado. Comprovante de agendamento não constitui prova de recolhimento efetivo. Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovante de débito definitivo da guia FUNJUS, sob pena de deserção (art. 1.007, §7°, do CPC).'
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
        'Pago a destempo - PAD',
        'O recolhimento da guia FUNJUS foi efetuado após o prazo recursal. Intime-se para, no prazo de 5 (cinco) dias úteis, regularizar o recolhimento da guia FUNJUS, sob pena de deserção.'
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
        'Falta só a guia (GRU + FUNJUS ausentes - sem nenhum documento)',
        'dobro_falta_guia',
        'Verificada a ausência das guias de recolhimento GRU e FUNJUS no ato da interposição.'
      ),
      option(
        'Falta só o comprovante (GRU + FUNJUS sem comprovante de débito)',
        'dobro_falta_comprovante',
        'As guias GRU e FUNJUS foram juntadas; os comprovantes de débito efetivo estão ausentes.'
      ),
      option(
        'Autos não digitalizados - processo físico (N/D)',
        'dobro_nd',
        'Tratando-se de processo físico não digitalizado, verificada ausência ou irregularidade de recolhimento do preparo.'
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
        '2 guias sem número / número incorreto de processo',
        'As guias GRU e FUNJUS não identificam o número do processo ou apresentam numeração incorreta. Intime-se para, no prazo de 5 (cinco) dias úteis, recolher em dobro GRU e FUNJUS com correta identificação processual, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
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
        '2 guias sem número / número incorreto de processo',
        'Os comprovantes das guias GRU e FUNJUS não identificam o processo corretamente. Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovantes do recolhimento em dobro com a correta identificação processual, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      ),
      finalOption(
        '2 não localizados / não disponíveis (N/D)',
        'Ausentes os comprovantes de quitação das guias GRU e FUNJUS. Intime-se para, no prazo de 5 (cinco) dias úteis, juntar os comprovantes do recolhimento em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      ),
      finalOption(
        '2 pertencentes a outros processos',
        'Os comprovantes juntados referem-se a guias de outros processos. Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovantes do recolhimento em dobro das guias GRU e FUNJUS deste feito, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.'
      )
    ]
  },
  dobro_nd: {
    pergunta: 'Qual a situação das guias em autos físicos (não digitalizados)?',
    opcoes: [
      finalOption(
        '3 guias ausentes / incorretas (GRU + FUNJUS + porte de remessa)',
        'Tratando-se de processo físico não digitalizado, verificada a ausência ou irregularidade das guias de recolhimento (GRU, FUNJUS e porte de remessa e retorno). Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro das guias GRU, FUNJUS e porte de remessa e retorno com a correta identificação processual, nos termos do art. 1.007, §4°, do CPC e Súmula 187/STJ, sob pena de não conhecimento do recurso.'
      )
    ]
  },
  desercao: {
    pergunta: 'Qual guia apresenta irregularidade definitiva (ensejando a deserção)?',
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
        'Sem número de processo / número incorreto',
        'A guia GRU não identifica o processo ou apresenta numeração incorreta, não tendo sido regularizada no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      ),
      finalOption(
        'Não localizada / não disponível (N/D)',
        'Ausente o comprovante de quitação da guia GRU, não tendo sido regularizado o preparo no prazo assinado. Decreto a deserção do recurso por falta de preparo (art. 1.007, §4°-5°, do CPC - Súmula 187/STJ).'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia GRU apresentada pertence a outro processo, não tendo sido juntada a guia correspondente a este feito no prazo assinado. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
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
        'Ausentes os comprovantes de quitação das guias GRU e FUNJUS, não tendo sido regularizado o preparo no prazo assinado. Decreto a deserção do recurso por falta de preparo (art. 1.007, §4°-5°, do CPC - Súmula 187/STJ).'
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
        'Ausente o comprovante de quitação da guia FUNJUS, não tendo sido regularizado o preparo no prazo assinado. Decreto a deserção do recurso por falta de preparo (art. 1.007, §4°-5°, do CPC - Súmula 187/STJ).'
      ),
      finalOption(
        'Justaposição de guia FUNJUS',
        'Verificada a justaposição de guia FUNJUS nos autos: o comprovante de recolhimento apresentado é o mesmo já utilizado em outro processo ou recurso anterior, não sendo hábil a comprovar o recolhimento neste feito. Trata-se de vício insanável. Decreto a deserção do recurso por irregularidade insanável no preparo (art. 1.007, §4°-5°, do CPC).'
      )
    ]
  }
};
