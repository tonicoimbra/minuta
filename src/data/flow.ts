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
      option('Recurso Extraordinário (RE)', 'classif_irregularidade', 'Recurso Extraordinário (RE).'),
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
      ),
      option(
        'Preparo simples após questão de Justiça Gratuita',
        'preparo_simples_jg',
        'Trata-se de hipótese em que a discussão sobre justiça gratuita conduz ao recolhimento do preparo em valor simples.'
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
        'Juntou só a guia GRU (sem comprovante de pagamento)',
        'Constatada a juntada apenas da guia GRU, sem o respectivo comprovante de pagamento. Intime-se para regularizar a comprovação do recolhimento.'
      ),
      finalOption(
        'Juntou só o comprovante GRU (sem a guia de recolhimento)',
        'Constatada a juntada apenas do comprovante GRU, sem a respectiva guia de recolhimento. Intime-se para apresentar a guia correspondente ao pagamento já efetuado.'
      ),
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
        'Número único divergente do processo ou da árvore processual',
        'O número único constante na guia GRU não corresponde ao processo nem à árvore processual examinada, impedindo a vinculação segura do recolhimento ao feito. Intime-se para regularizar a identificação processual da guia.'
      ),
      finalOption(
        'Comprovante sem código de barras legível',
        'O comprovante da guia GRU não apresenta código de barras visível e legível, inviabilizando a conferência com a guia de recolhimento apresentada.'
      ),
      finalOption(
        'Divergência no código de barras da guia e do comprovante',
        'Não há correspondência entre o código de barras constante na guia GRU e o do comprovante de pagamento, impedindo a aferição da regularidade do preparo.'
      ),
      finalOption(
        'Pago a destempo - PAD (após o prazo recursal)',
        'O recolhimento da guia GRU foi efetuado após o prazo recursal (recolhimento intempestivo). Intime-se para, no prazo de 5 (cinco) dias úteis, regularizar o recolhimento da guia GRU, sob pena de deserção.'
      ),
      finalOption(
        'Comprovante não localizado (N/D)',
        'Não localizado nos autos o comprovante de pagamento da guia GRU, embora a guia tenha sido indicada no recurso.'
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
        'Juntou só a guia FUNJUS (sem comprovante de pagamento)',
        'Constatada a juntada apenas da guia FUNJUS, sem o respectivo comprovante de pagamento. Intime-se para regularizar a comprovação do recolhimento.'
      ),
      finalOption(
        'Juntou só o comprovante FUNJUS (sem a guia de recolhimento)',
        'Constatada a juntada apenas do comprovante FUNJUS, sem a respectiva guia de recolhimento. Intime-se para apresentar a guia correspondente ao pagamento já efetuado.'
      ),
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
        'Número único divergente do processo ou da árvore processual',
        'O número único constante na guia FUNJUS não corresponde ao processo nem à árvore processual examinada, impedindo a vinculação segura do recolhimento ao feito. Intime-se para regularizar a identificação processual da guia.'
      ),
      finalOption(
        'Comprovante sem código de barras legível',
        'O comprovante da guia FUNJUS não apresenta código de barras visível e legível, inviabilizando a conferência com a guia de recolhimento apresentada.'
      ),
      finalOption(
        'Divergência no código de barras da guia e do comprovante',
        'Não há correspondência entre o código de barras constante na guia FUNJUS e o do comprovante de pagamento, impedindo a aferição da regularidade do preparo.'
      ),
      finalOption(
        'Pago a destempo - PAD',
        'O recolhimento da guia FUNJUS foi efetuado após o prazo recursal. Intime-se para, no prazo de 5 (cinco) dias úteis, regularizar o recolhimento da guia FUNJUS, sob pena de deserção.'
      ),
      finalOption(
        'Comprovante não localizado (N/D)',
        'Não localizado nos autos o comprovante de pagamento da guia FUNJUS, embora a guia tenha sido indicada no recurso.'
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
      finalOption(
        'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)',
        'A parte juntou apenas as guias GRU e FUNJUS, sem os respectivos comprovantes de pagamento, não comprovando o preparo no ato da interposição.'
      ),
      finalOption(
        'Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)',
        'A parte juntou apenas os comprovantes GRU e FUNJUS, sem as respectivas guias de recolhimento, não comprovando regularmente o preparo no ato da interposição.'
      ),
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
      ),
      finalOption(
        'Preparo juntado após o ato da interposição (pagamento simples)',
        'A parte não comprovou o recolhimento do preparo no ato da interposição; o preparo foi juntado apenas posteriormente e em valor simples, impondo a complementação para perfazer o valor dobrado.'
      ),
      option(
        'Não pagou - precisa também juntar Decreto Judiciário (feriado/suspensão)',
        'dobro_decreto',
        'Além da ausência de preparo no ato da interposição, é necessário juntar Decreto Judiciário para comprovar feriado local ou suspensão de expediente.'
      ),
      option(
        'Não pagou - precisa também regularizar procuração',
        'dobro_proc',
        'Além da ausência de preparo no ato da interposição, é necessário regularizar a representação processual do advogado subscritor.'
      ),
      finalOption(
        'JG pedida no ato da interposição - depois desistiu ou renunciou ao pedido',
        'A parte formulou pedido de justiça gratuita no ato da interposição, mas depois desistiu ou renunciou ao pedido; como as custas não foram recolhidas no ato da interposição, aplica-se o recolhimento em dobro (art. 1.007, §4°, do CPC).'
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
    pergunta: 'Qual o problema específico nos documentos? (sujeito ao recolhimento em dobro)',
    opcoes: [
      finalOption(
        '2 agendamentos bancários como comprovante',
        'Os comprovantes das guias GRU e FUNJUS correspondem a agendamentos bancários não efetivados, o que não comprova o recolhimento do preparo.'
      ),
      finalOption(
        '2 comprovantes sem código de barras legível',
        'Os comprovantes das guias GRU e FUNJUS não apresentam código de barras de forma visível e legível, inviabilizando a conferência do preparo.'
      ),
      finalOption(
        '2 guias com número de processo ausente ou incorreto',
        'As guias GRU e FUNJUS não identificam o processo corretamente, inviabilizando a vinculação do recolhimento ao feito.'
      ),
      finalOption(
        'Número único divergente do processo ou da árvore processual',
        'O número único constante nos documentos de preparo não corresponde ao processo nem à árvore processual examinada, impedindo a validação do recolhimento.'
      ),
      finalOption(
        '2 documentos não localizados (N/D)',
        'Não localizados nos autos os documentos de recolhimento GRU e FUNJUS no ato da interposição.'
      ),
      finalOption(
        '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido',
        'Constatada a juntada de uma guia regular, mas o respectivo comprovante está ausente ou inválido; a outra guia não foi apresentada.'
      ),
      finalOption(
        'Comprovante GRU sem guia + FUNJUS não recolhida',
        'Juntado apenas o comprovante GRU, sem a respectiva guia de recolhimento; as custas FUNJUS não foram recolhidas.'
      ),
      finalOption(
        'Guia GRU sem comprovante + FUNJUS não recolhida',
        'Juntada a guia GRU sem o respectivo comprovante de pagamento; as custas FUNJUS não foram recolhidas.'
      ),
      finalOption(
        'Divergência entre código de barras da guia e do comprovante',
        'O código de barras constante na guia de recolhimento não coincide com o do comprovante de pagamento, impedindo a aferição da regularidade do preparo.'
      ),
      finalOption(
        "Comprovantes com status 'Em processo de autenticação'",
        "Os comprovantes exibem a informação 'Em processo de autenticação', não comprovando o recolhimento efetivo das custas."
      ),
      finalOption(
        '3 guias ausentes / incorretas (GRU + FUNJUS + porte de remessa)',
        'Tratando-se de processo físico não digitalizado, verificada a ausência ou irregularidade das guias de recolhimento (GRU, FUNJUS e porte de remessa e retorno). Intime-se para regularizar o preparo em dobro.'
      )
    ]
  },

  dobro_decreto: {
    pergunta: 'Qual a situação dos documentos de preparo? (Decreto Judiciário também ausente)',
    opcoes: [
      finalOption(
        'Juntou só comprovantes (sem guias de recolhimento) + Decreto não apresentado',
        'A parte juntou apenas comprovantes de pagamento sem as guias; o Decreto Judiciário para comprovar feriado/suspensão não foi apresentado.'
      ),
      finalOption(
        'Documentos de preparo não localizados (N/D) + Decreto não apresentado',
        'Não localizados documentos de preparo nos autos; o Decreto Judiciário também não foi apresentado.'
      )
    ]
  },

  dobro_proc: {
    pergunta: 'Qual a situação do preparo? (procuração também ausente/irregular)',
    opcoes: [
      finalOption(
        'Procuração e preparo em dobro - ambos ausentes',
        'A parte não regularizou a representação processual e não comprovou o recolhimento do preparo recursal; ambos devem ser sanados no mesmo prazo.'
      )
    ]
  },

  preparo_simples_jg: {
    pergunta: 'Qual a situação relacionada à Justiça Gratuita?',
    opcoes: [
      finalOption(
        'JG alegada - concessão não localizada nos autos',
        'A parte alegou ser beneficiária da justiça gratuita, mas o deferimento não foi localizado nos autos. Intime-se para recolher o preparo em valor simples, observada a regra aplicável ao caso concreto.'
      ),
      finalOption(
        'JG alegada - ato incompatível (pagamento anterior no recurso originário)',
        'A parte alegou justiça gratuita, mas praticou ato incompatível ao pagar o preparo do recurso originário. Intime-se para recolher o preparo em valor simples, observada a regra aplicável ao caso concreto.'
      )
    ]
  },

  desercao: {
    pergunta: 'Qual guia apresenta irregularidade definitiva (ensejando a deserção)?',
    opcoes: [
      finalOption(
        'Juntou só as guias GRU e FUNJUS (sem comprovantes)',
        'A parte juntou apenas as guias de recolhimento GRU e FUNJUS, sem os comprovantes de pagamento, não regularizando o preparo no prazo.'
      ),
      finalOption(
        'Juntou só os comprovantes GRU e FUNJUS (sem guias)',
        'A parte juntou apenas os comprovantes de pagamento GRU e FUNJUS, sem as guias de recolhimento, não regularizando o preparo no prazo.'
      ),
      option(
        'Não pagou N/D - ambas as guias (GRU + FUNJUS)',
        'desercao_nd_pgto',
        'Verificada ausência total de documentos de preparo GRU e FUNJUS, não regularizada no prazo assinado.'
      ),
      option(
        'Apresentou documentação só para GRU (FUNJUS regular ou não exigida)',
        'desercao_gru_pgto',
        'A irregularidade definitiva concentra-se na guia GRU, não regularizada no prazo assinado.'
      ),
      option(
        'Apresentou documentação só para FUNJUS (GRU regular ou não exigida)',
        'desercao_funjus_pgto',
        'A irregularidade definitiva concentra-se na guia FUNJUS, não regularizada no prazo assinado.'
      ),
      option(
        'Recurso intempestivo',
        'desercao_intempestivo',
        'O recurso é inadmissível por intempestividade.'
      ),
      option(
        'Após indeferimento de JG - intimado para preparo simples e não regularizou',
        'desercao_jg',
        'O pedido de justiça gratuita foi indeferido; após intimação para recolher o preparo simples, a parte não regularizou adequadamente.'
      ),
      option(
        'Intimado para juntar Decreto Judiciário + regularizar preparo - permaneceu inerte',
        'desercao_decreto',
        'A parte foi intimada para juntar Decreto Judiciário e regularizar o preparo, mas permaneceu inerte.'
      ),
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

  desercao_nd_pgto: {
    pergunta: 'Qual foi o tipo de intimação anterior para regularização do preparo?',
    opcoes: [
      option(
        'Intimado para complementar (§2º - pagamento simples)',
        'desercao_nd_1pgto',
        'A parte foi intimada para complementar o preparo em valor simples (§2º) e não regularizou no prazo.'
      ),
      option(
        'Intimado para pagar em dobro (§4º)',
        'desercao_nd_2pgto',
        'A parte foi intimada para recolher o preparo em dobro (§4º) e não regularizou no prazo.'
      )
    ]
  },

  desercao_nd_1pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção? (intimação §2º, ambas as guias)',
    opcoes: [
      finalOption(
        'Permaneceu inerte (certidão de decurso de prazo)',
        'A parte permaneceu inerte após intimação para complementar o preparo em valor simples; certificado o decurso de prazo, fica configurada a deserção.'
      ),
      finalOption(
        'Renunciou expressamente ao prazo',
        'A parte renunciou expressamente ao prazo concedido para complementar o preparo em valor simples, sem cumprir a determinação.'
      ),
      finalOption(
        'Agendamento bancário',
        'O comprovante apresentado corresponde a agendamento não efetivado, vício que não comprova o preparo após a intimação.'
      ),
      finalOption(
        'Sem código de barras legível',
        'O comprovante apresentado não contém código de barras visível e legível, impossibilitando a conferência do recolhimento.'
      ),
      finalOption(
        'Comprovação da complementação apresentada fora do prazo legal',
        'A regularização do preparo foi apresentada após o término do prazo de 5 dias concedido na intimação (§2º), configurando deserção.'
      )
    ]
  },

  desercao_nd_2pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção? (intimação §4º, ambas as guias)',
    opcoes: [
      finalOption(
        'Permaneceu inerte (certidão de decurso de prazo)',
        'A parte permaneceu inerte após intimação para recolher o preparo em dobro; certificado o decurso de prazo, fica configurada a deserção.'
      ),
      finalOption(
        'Renunciou expressamente ao prazo',
        'A parte renunciou expressamente ao prazo concedido para recolher o preparo em dobro, sem cumprir a determinação.'
      ),
      finalOption(
        'Documentos não localizados (N/D)',
        'Documentos de recolhimento não localizados após a intimação para pagamento em dobro.'
      ),
      finalOption(
        'Intimado para pagar em dobro e pagou em valor simples',
        'A parte foi intimada para recolher em dobro, mas apresentou guias e comprovantes em valor simples, não atendendo à determinação.'
      ),
      finalOption(
        'Pedido de JG após intimação para dobro (sem efeito retroativo)',
        'A parte formulou pedido de justiça gratuita somente após ser intimada para recolher o preparo em dobro; eventual deferimento não tem efeito retroativo sobre o preparo.'
      ),
      finalOption(
        'Comprovação do dobro apresentada fora do prazo legal',
        'A comprovação do recolhimento em dobro foi apresentada fora do prazo legal concedido na intimação, configurando deserção.'
      )
    ]
  },

  desercao_gru_pgto: {
    pergunta: 'Qual foi o tipo de intimação anterior para regularização da GRU?',
    opcoes: [
      option(
        'Intimado para complementar (§2º - pagamento simples)',
        'desercao_gru_1pgto',
        'A parte foi intimada para complementar a GRU (§2º) e não regularizou no prazo.'
      ),
      option(
        'Intimado para pagar em dobro (§4º)',
        'desercao_gru_2pgto',
        'A parte foi intimada para recolher a GRU em dobro (§4º) e não regularizou no prazo.'
      )
    ]
  },

  desercao_gru_1pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção na GRU? (intimação §2º)',
    opcoes: [
      finalOption('Agendamento bancário', 'Comprovante GRU corresponde a agendamento não efetivado, vício insanável após a intimação.'),
      finalOption('Sem código de barras legível', 'Comprovante GRU sem código de barras visível e legível, inviabilizando a conferência.'),
      finalOption('Divergência de código de barras', 'O código de barras da guia GRU não corresponde ao comprovante apresentado após a intimação.'),
      finalOption('Número de processo ausente ou incorreto', 'Guia GRU sem identificação processual correta após a intimação.'),
      finalOption('Juntou só o comprovante GRU (sem guia) após intimação', 'A parte apresentou apenas o comprovante de pagamento GRU, sem a respectiva guia de recolhimento, após a intimação para regularização.')
    ]
  },

  desercao_gru_2pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção na GRU? (intimação §4º)',
    opcoes: [
      finalOption('Agendamento bancário', 'Comprovante GRU corresponde a agendamento não efetivado após a intimação para dobro.'),
      finalOption('Sem código de barras legível', 'Comprovante GRU sem código de barras visível e legível após a intimação para dobro.'),
      finalOption('Divergência de código de barras', 'O código de barras da guia GRU não corresponde ao comprovante apresentado após a intimação para dobro.'),
      finalOption('Número de processo ausente ou incorreto', 'Guia GRU sem identificação processual correta após a intimação para dobro.'),
      finalOption('Documentos não localizados (N/D)', 'Documentos GRU não localizados após a intimação para dobro.')
    ]
  },

  desercao_funjus_pgto: {
    pergunta: 'Qual foi o tipo de intimação anterior para regularização da FUNJUS?',
    opcoes: [
      option(
        'Intimado para complementar (§2º - pagamento simples)',
        'desercao_funjus_1pgto',
        'A parte foi intimada para complementar a FUNJUS (§2º) e não regularizou no prazo.'
      ),
      option(
        'Intimado para pagar em dobro (§4º)',
        'desercao_funjus_2pgto',
        'A parte foi intimada para recolher a FUNJUS em dobro (§4º) e não regularizou no prazo.'
      )
    ]
  },

  desercao_funjus_1pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção na FUNJUS? (intimação §2º)',
    opcoes: [
      finalOption('Agendamento bancário', 'Comprovante FUNJUS corresponde a agendamento não efetivado, vício insanável após a intimação.'),
      finalOption('Sem código de barras legível', 'Comprovante FUNJUS sem código de barras visível e legível, inviabilizando a conferência.'),
      finalOption('Divergência de código de barras', 'O código de barras da guia FUNJUS não corresponde ao comprovante apresentado após a intimação.'),
      finalOption('Número de processo ausente ou incorreto', 'Guia FUNJUS sem identificação processual correta após a intimação.'),
      finalOption('Guia pertencente a outro processo', 'Guia FUNJUS pertence a outro processo após a intimação para regularização.')
    ]
  },

  desercao_funjus_2pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção na FUNJUS? (intimação §4º)',
    opcoes: [
      finalOption('Agendamento bancário', 'Comprovante FUNJUS corresponde a agendamento não efetivado após a intimação para dobro.'),
      finalOption('Sem código de barras legível', 'Comprovante FUNJUS sem código de barras visível e legível após a intimação para dobro.'),
      finalOption('Divergência de código de barras', 'O código de barras da guia FUNJUS não corresponde ao comprovante apresentado após a intimação para dobro.'),
      finalOption('Número de processo ausente ou incorreto', 'Guia FUNJUS sem identificação processual correta após a intimação para dobro.'),
      finalOption('Documentos não localizados (N/D)', 'Documentos FUNJUS não localizados após a intimação para dobro.')
    ]
  },

  desercao_intempestivo: {
    pergunta: 'Qual a natureza da intempestividade?',
    opcoes: [
      finalOption(
        'Pagamento realizado fora do prazo recursal',
        'O recolhimento do preparo foi efetuado após o término do prazo recursal.'
      ),
      finalOption(
        'Comprovante de pagamento juntado fora do prazo recursal',
        'O comprovante de pagamento das custas recursais foi juntado após o término do prazo recursal.'
      )
    ]
  },

  desercao_jg: {
    pergunta: 'Qual o resultado da intimação para preparo após indeferimento de JG?',
    opcoes: [
      finalOption(
        'Apresentou comprovantes sem código de barras (preparo irregular)',
        'Após intimação para recolher o preparo simples, a parte apresentou comprovantes sem código de barras legível, de modo que o preparo não foi comprovado regularmente.'
      ),
      finalOption(
        'Permaneceu inerte (certidão de decurso de prazo)',
        'A parte não se manifestou após a intimação para recolher o preparo simples na sequência do indeferimento da justiça gratuita.'
      ),
      finalOption(
        'Renunciou ao prazo expressamente (petição de renúncia)',
        'A parte recorrente, após intimada para recolher o preparo na sequência do indeferimento da justiça gratuita, renunciou expressamente ao prazo sem cumprir a determinação.'
      )
    ]
  },

  desercao_decreto: {
    pergunta: 'Qual a combinação da intimação (Decreto Judiciário + preparo)?',
    opcoes: [
      finalOption(
        'Decreto + complementação (§2º) - permaneceu inerte',
        'A parte foi intimada para juntar Decreto Judiciário e complementar o preparo (§2º), mas permaneceu inerte, configurando intempestividade e deserção.'
      ),
      finalOption(
        'Decreto + dobro (§4º) - permaneceu inerte',
        'A parte foi intimada para juntar Decreto Judiciário e pagar o preparo em dobro (§4º), mas permaneceu inerte, configurando intempestividade e deserção.'
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
