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
  }
};
