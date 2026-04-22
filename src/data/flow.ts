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

// eslint-disable-next-line @typescript-eslint/no-unused-vars
const finalOption = (texto: string, snippet: string): Option =>
  option(texto, 'final', snippet);

export const fluxo: Flow = {
  inicio: {
    pergunta: 'Qual o tipo de recurso excepcional em análise?',
    opcoes: [
      option(
        'Recurso Especial (REsp)',
        'classif',
        'Recurso Especial dirigido ao Superior Tribunal de Justiça.'
      ),
      option(
        'Recurso Extraordinário (RE)',
        'classif',
        'Recurso Extraordinário dirigido ao Supremo Tribunal Federal.'
      )
    ]
  },

  classif: {
    pergunta: 'Qual a classificação da situação do preparo?',
    opcoes: [
      option(
        'Complementação — primeira irregularidade (parte ainda não foi intimada)',
        'comp_guia',
        'Trata-se de hipótese de complementação de preparo, nos termos do art. 1.007, § 2º, do CPC.'
      ),
      option(
        'Pagamento em Dobro — preparo não comprovado no ato da interposição',
        'dobro',
        'Trata-se de ausência de comprovação do pagamento no ato da interposição, sujeitando a parte ao recolhimento em dobro (art. 1.007, § 4º, do CPC).'
      ),
      option(
        'Deserção — após intimação não atendida ou recurso intempestivo',
        'desercao',
        'Trata-se de hipótese de deserção por irregularidade insanável ou prazo não atendido.'
      )
    ]
  },

  comp_guia: {
    pergunta: 'Qual guia apresenta irregularidade? (a outra está regular)',
    opcoes: [
      option(
        'GRU — irregularidade nas custas devidas ao Tribunal Superior (FUNJUS regular)',
        'comp_gru',
        'Verificada irregularidade nas custas devidas ao Tribunal Superior (GRU); a guia FUNJUS encontra-se regular.'
      ),
      option(
        'FUNJUS — irregularidade nas custas locais deste Tribunal de Justiça (GRU regular)',
        'comp_funjus',
        'Verificada irregularidade nas custas locais (FUNJUS); a guia GRU encontra-se regular.'
      )
    ]
  },

  comp_gru: {
    pergunta: 'Qual a irregularidade constatada na GRU? (FUNJUS regular, parte ainda não intimada)',
    opcoes: [
      finalOption(
        'Juntou só a guia GRU (sem comprovante de pagamento)',
        'Constatada a juntada apenas da guia GRU, sem o respectivo comprovante de pagamento.'
      ),
      finalOption(
        'Juntou só o comprovante GRU (sem a guia de recolhimento)',
        'Constatada a juntada apenas do comprovante GRU, sem a respectiva guia de recolhimento.'
      ),
      finalOption(
        'Guia GRU juntada + comprovante de agendamento bancário',
        'O comprovante apresentado para a GRU é um agendamento bancário, não constituindo prova de recolhimento efetivo.'
      ),
      finalOption(
        'Guia GRU juntada + comprovante sem código de barras legível',
        'O comprovante da GRU não apresenta o código de barras de forma visível e legível, impossibilitando a verificação do recolhimento.'
      ),
      finalOption(
        'Guia GRU juntada + número de processo ausente ou incorreto',
        'A guia GRU não contém o número do processo ou apresenta numeração incorreta.'
      ),
      finalOption(
        'Guia GRU juntada + comprovante não localizado (N/D)',
        'Não localizado nos autos o comprovante de pagamento da guia GRU.'
      ),
      finalOption(
        'Guia GRU pertencente a outro processo',
        'A guia GRU apresentada pertence a outro processo ou recurso, não sendo imputável ao presente feito.'
      )
    ]
  },

  comp_funjus: {
    pergunta: 'Qual a irregularidade constatada na FUNJUS? (GRU regular, parte ainda não intimada)',
    opcoes: [
      finalOption(
        'Juntou só a guia FUNJUS (sem comprovante de pagamento)',
        'Constatada a juntada apenas da guia FUNJUS, sem o respectivo comprovante de pagamento.'
      ),
      finalOption(
        'Juntou só o comprovante FUNJUS (sem a guia de recolhimento)',
        'Constatada a juntada apenas do comprovante FUNJUS, sem a respectiva guia de recolhimento.'
      ),
      finalOption(
        'Guia FUNJUS juntada + comprovante de agendamento bancário',
        'O comprovante apresentado para a FUNJUS é um agendamento bancário, não constituindo prova de recolhimento efetivo.'
      ),
      finalOption(
        'Guia FUNJUS juntada + comprovante sem código de barras legível',
        'O comprovante da FUNJUS não apresenta o código de barras de forma visível e legível, impossibilitando a verificação do recolhimento.'
      ),
      finalOption(
        'Guia FUNJUS juntada + número de processo ausente ou incorreto',
        'A guia FUNJUS não contém o número do processo ou apresenta numeração incorreta.'
      ),
      finalOption(
        'Guia FUNJUS juntada + comprovante não localizado (N/D)',
        'Não localizado nos autos o comprovante de pagamento da guia FUNJUS.'
      ),
      finalOption(
        'Guia FUNJUS pertencente a outro processo',
        'A guia FUNJUS apresentada pertence a outro processo ou recurso, não sendo imputável ao presente feito.'
      ),
      finalOption(
        'Guia FUNJUS juntada + divergência no código de barras',
        'O código de barras constante na guia FUNJUS não coincide com o do comprovante de pagamento, inviabilizando a conferência.'
      )
    ]
  },

  dobro: {
    pergunta: 'Qual a situação dos documentos no ato da interposição do recurso?',
    opcoes: [
      finalOption(
        'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)',
        'Constatada a juntada de ambas as guias (GRU e FUNJUS) sem os respectivos comprovantes de pagamento.'
      ),
      finalOption(
        'Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)',
        'Constatada a juntada dos comprovantes (GRU e FUNJUS) sem as respectivas guias de recolhimento.'
      ),
      option(
        'Não pagou / documentos N/D (ausentes ou inválidos)',
        'dobro_nd',
        'Verificada ausência ou invalidade dos documentos de recolhimento (GRU e/ou FUNJUS) no ato da interposição.'
      ),
      finalOption(
        'JG alegada — concessão não localizada nos autos',
        'A parte alegou ser beneficiária de JG, mas o deferimento não foi localizado nos autos; não comprovou preparo nem requereu JG no ato da interposição do REsp.'
      ),
      finalOption(
        'JG alegada — ato incompatível (pagamento anterior no recurso originário)',
        'A parte alegou JG, mas praticou ato incompatível ao pagar o preparo do recurso originário; não comprovou preparo no REsp.'
      ),
      finalOption(
        'Preparo juntado após o ato da interposição (pagamento simples)',
        'A parte juntou o preparo após o ato da interposição; o recolhimento foi feito na forma simples, sujeito à incidência do §4º.'
      ),
      option(
        'Não pagou — precisa também juntar Decreto Judiciário (feriado/suspensão)',
        'dobro_decreto',
        'Além da ausência de preparo, é necessário juntar Decreto Judiciário para comprovar feriado local ou suspensão de expediente.'
      ),
      option(
        'Não pagou — precisa também regularizar procuração',
        'dobro_proc',
        'Além da ausência de preparo, é necessário regularizar a representação processual do advogado subscritor.'
      )
    ]
  },

  dobro_nd: {
    pergunta: 'Qual o problema específico nos documentos? (sujeito ao recolhimento em dobro)',
    opcoes: [
      finalOption(
        '2 agendamentos bancários como comprovante',
        'Os comprovantes das guias GRU e FUNJUS correspondem a agendamentos bancários não efetivados.'
      ),
      finalOption(
        '2 comprovantes sem código de barras legível',
        'Os comprovantes das guias GRU e FUNJUS não apresentam o código de barras de forma visível e legível.'
      ),
      finalOption(
        '2 guias com número de processo ausente ou incorreto',
        'As guias GRU e FUNJUS não identificam o processo corretamente.'
      ),
      finalOption(
        '2 documentos não localizados (N/D)',
        'Não localizados nos autos os documentos de recolhimento (GRU e FUNJUS).'
      ),
      finalOption(
        '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido',
        'Constatada a juntada de uma guia regularmente, mas o respectivo comprovante está ausente ou inválido; a outra guia não foi apresentada.'
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
        'O código de barras constante na guia de recolhimento não coincide com o do comprovante de pagamento.'
      ),
      finalOption(
        "Comprovantes com status 'Em processo de autenticação'",
        "Os comprovantes exibem a informação 'Em processo de autenticação', não comprovando o recolhimento efetivo das custas."
      )
    ]
  },

  desercao: {
    pergunta: 'Qual a situação documental que fundamenta a deserção?',
    opcoes: [
      finalOption(
        'Juntou só as guias GRU e FUNJUS (sem comprovantes)',
        'A parte juntou apenas as guias de recolhimento (GRU e FUNJUS) sem os comprovantes de pagamento, não regularizando o preparo no prazo.'
      ),
      finalOption(
        'Juntou só os comprovantes GRU e FUNJUS (sem guias)',
        'A parte juntou apenas os comprovantes de pagamento (GRU e FUNJUS) sem as guias de recolhimento, não regularizando o preparo no prazo.'
      ),
      option(
        'Não pagou N/D — ambas as guias (GRU + FUNJUS)',
        'desercao_nd_pgto',
        'Verificada ausência total de documentos de preparo (GRU e FUNJUS), não regularizada no prazo assinado.'
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
        'O recurso é inadmissível por intempestividade — interposto fora do prazo previsto no art. 1.003, § 5º, c/c art. 219, do CPC.'
      ),
      option(
        'Após indeferimento de JG — intimado para preparo simples e não regularizou',
        'desercao_jg',
        'O pedido de JG foi indeferido; após intimação para recolher o preparo simples (art. 99, §7º, CPC), a parte não regularizou adequadamente.'
      ),
      option(
        'Intimado para juntar Decreto Judiciário + regularizar preparo — permaneceu inerte',
        'desercao_decreto',
        'A parte foi intimada para juntar Decreto Judiciário (feriado/suspensão) e regularizar o preparo, mas permaneceu inerte.'
      )
    ]
  },

  desercao_nd_pgto: {
    pergunta: 'Qual foi o tipo de intimação anterior para regularização do preparo?',
    opcoes: [
      option(
        'Intimado para complementar (§2º — pagamento simples)',
        'desercao_nd_1pgto',
        'A parte foi intimada para complementar o preparo (§2º) e não regularizou no prazo.'
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
        'Agendamento bancário',
        'O comprovante apresentado corresponde a agendamento não efetivado — vício insanável.'
      ),
      finalOption(
        'Sem código de barras legível',
        'O comprovante não apresenta código de barras visível e legível — vício insanável.'
      ),
      finalOption(
        'Número de processo ausente ou incorreto',
        'A guia não identifica corretamente o processo — vício insanável.'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'A guia apresentada pertence a outro processo — vício insanável.'
      ),
      finalOption(
        'Comprovação da complementação apresentada fora do prazo legal',
        'A regularização do preparo foi apresentada após o término do prazo de 5 dias concedido na intimação (§2º) — deserção configurada.'
      ),
      finalOption(
        'Procuração regularizada, mas preparo não comprovado',
        'A parte regularizou a representação processual conforme intimada, mas deixou de comprovar a complementação do preparo recursal (§2º).'
      )
    ]
  },

  desercao_nd_2pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção? (intimação §4º, ambas as guias)',
    opcoes: [
      finalOption(
        'Guia pertencente a outro processo',
        'As guias apresentadas pertencem a outros processos — vício insanável após dobro.'
      ),
      finalOption(
        'Agendamento bancário',
        'Os comprovantes correspondem a agendamentos não efetivados — vício insanável após dobro.'
      ),
      finalOption(
        'Sem código de barras legível',
        'Os comprovantes não apresentam código de barras visível e legível — vício insanável após dobro.'
      ),
      finalOption(
        'Número de processo ausente ou incorreto',
        'As guias não identificam corretamente o processo — vício insanável após dobro.'
      ),
      finalOption(
        'Documentos não localizados (N/D)',
        'Documentos de recolhimento não localizados — vício insanável após dobro.'
      ),
      finalOption(
        'Intimado para pagar em dobro e pagou em valor simples',
        'A parte foi intimada para recolher em dobro, mas apresentou guias e comprovantes em valor simples — dobro não atendido.'
      ),
      finalOption(
        'Pedido de JG após intimação para dobro (sem efeito retroativo)',
        'A parte formulou pedido de JG somente após ser intimada para o dobro; eventual deferimento não tem efeito retroativo sobre o preparo.'
      )
    ]
  },

  desercao_gru_pgto: {
    pergunta: 'Qual foi o tipo de intimação anterior para regularização da GRU?',
    opcoes: [
      option(
        'Intimado para complementar (§2º — pagamento simples)',
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
      finalOption(
        'Agendamento bancário',
        'Comprovante GRU = agendamento não efetivado — vício insanável.'
      ),
      finalOption(
        'Sem código de barras legível',
        'Comprovante GRU sem código de barras visível e legível — vício insanável.'
      ),
      finalOption(
        'Número de processo ausente ou incorreto',
        'Guia GRU sem identificação processual correta — vício insanável.'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'Guia GRU pertence a outro processo — vício insanável.'
      ),
      finalOption(
        'Guia GRU não apresentada após intimação (juntou só o comprovante)',
        'A parte apresentou apenas o comprovante de pagamento GRU, sem a respectiva guia de recolhimento — vício insanável (§2º).'
      )
    ]
  },

  desercao_gru_2pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção na GRU? (intimação §4º)',
    opcoes: [
      finalOption(
        'Guia pertencente a outro processo',
        'Guia GRU pertence a outro processo — vício insanável após dobro.'
      ),
      finalOption(
        'Agendamento bancário',
        'Comprovante GRU = agendamento não efetivado — vício insanável após dobro.'
      ),
      finalOption(
        'Sem código de barras legível',
        'Comprovante GRU sem código de barras visível e legível — vício insanável após dobro.'
      ),
      finalOption(
        'Número de processo ausente ou incorreto',
        'Guia GRU sem identificação processual correta — vício insanável após dobro.'
      ),
      finalOption(
        'Documentos não localizados (N/D)',
        'Documentos GRU não localizados — vício insanável após dobro.'
      )
    ]
  },

  desercao_funjus_pgto: {
    pergunta: 'Qual foi o tipo de intimação anterior para regularização da FUNJUS?',
    opcoes: [
      option(
        'Intimado para complementar (§2º — pagamento simples)',
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
      finalOption(
        'Agendamento bancário',
        'Comprovante FUNJUS = agendamento não efetivado — vício insanável.'
      ),
      finalOption(
        'Sem código de barras legível',
        'Comprovante FUNJUS sem código de barras visível e legível — vício insanável.'
      ),
      finalOption(
        'Número de processo ausente ou incorreto',
        'Guia FUNJUS sem identificação processual correta — vício insanável.'
      ),
      finalOption(
        'Guia pertencente a outro processo',
        'Guia FUNJUS pertence a outro processo — vício insanável.'
      )
    ]
  },

  desercao_funjus_2pgto: {
    pergunta: 'Qual o vício que fundamenta a deserção na FUNJUS? (intimação §4º)',
    opcoes: [
      finalOption(
        'Guia pertencente a outro processo',
        'Guia FUNJUS pertence a outro processo — vício insanável após dobro.'
      ),
      finalOption(
        'Agendamento bancário',
        'Comprovante FUNJUS = agendamento não efetivado — vício insanável após dobro.'
      ),
      finalOption(
        'Sem código de barras legível',
        'Comprovante FUNJUS sem código de barras visível e legível — vício insanável após dobro.'
      ),
      finalOption(
        'Número de processo ausente ou incorreto',
        'Guia FUNJUS sem identificação processual correta — vício insanável após dobro.'
      ),
      finalOption(
        'Documentos não localizados (N/D)',
        'Documentos FUNJUS não localizados — vício insanável após dobro.'
      )
    ]
  },

  desercao_intempestivo: {
    pergunta: 'Qual a natureza da intempestividade?',
    opcoes: [
      finalOption(
        'Pagamento realizado fora do prazo recursal',
        'O recolhimento do preparo foi efetuado após o término do prazo recursal (art. 1.003, § 5º, c/c art. 219, do CPC).'
      ),
      finalOption(
        'Comprovante de pagamento juntado fora do prazo recursal',
        'O comprovante de pagamento das custas recursais foi juntado após o término do prazo recursal (art. 1.003, § 5º, c/c art. 219, do CPC).'
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
        'Procuração e preparo em dobro — ambos ausentes',
        'A parte não regularizou a representação processual e não comprovou o recolhimento do preparo recursal; ambos devem ser sanados no mesmo prazo.'
      )
    ]
  },

  desercao_jg: {
    pergunta: 'Qual o resultado da intimação para preparo após indeferimento de JG?',
    opcoes: [
      finalOption(
        'Apresentou comprovantes sem código de barras (preparo irregular)',
        'Após intimação para recolher o preparo simples (art. 99, §7º, CPC), a parte apresentou comprovantes sem código de barras legível — preparo não comprovado regularmente.'
      ),
      finalOption(
        'Permaneceu inerte (certidão de decurso de prazo)',
        'A parte não se manifestou após a intimação para recolher o preparo simples na sequência do indeferimento de JG.'
      )
    ]
  },

  desercao_decreto: {
    pergunta: 'Qual a combinação da intimação (Decreto Judiciário + preparo)?',
    opcoes: [
      finalOption(
        'Decreto + complementação (§2º) — permaneceu inerte',
        'A parte foi intimada para juntar Decreto Judiciário e complementar o preparo (§2º), mas permaneceu inerte — intempestividade e deserção configuradas.'
      ),
      finalOption(
        'Decreto + dobro (§4º) — permaneceu inerte',
        'A parte foi intimada para juntar Decreto Judiciário e pagar o preparo em dobro (§4º), mas permaneceu inerte — intempestividade e deserção configuradas.'
      )
    ]
  }
};
