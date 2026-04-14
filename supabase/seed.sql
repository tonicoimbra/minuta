-- =============================================================================
-- Gerador de Minutas — Seed: 8 templates iniciais migrados de minutaTemplates.ts
-- Execute APÓS o schema.sql no SQL Editor do Supabase.
-- =============================================================================

INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files) VALUES

-- Caso 02
('comp_funjus',
 'Juntou só a guia FUNJUS (sem comprovante de pagamento)',
 'Complementação — guia FUNJUS juntada sem comprovante (REsp)',
 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de recolhimento de mov. [MOVIMENTO DA GUIA FUNJUS], sem o respectivo comprovante de pagamento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no mov. [MOVIMENTO DA GUIA FUNJUS], no qual conste o código de barras de forma visível e legível, " (...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS, referente às custas do Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 21.868, de 18/12/2023.',
 ARRAY['minutas/Caso 02.pdf']),

-- Caso 05
('comp_funjus',
 'Guia FUNJUS juntada + comprovante de agendamento bancário',
 'Complementação — comprovante de agendamento bancário FUNJUS (REsp)',
 'O recurso não foi devidamente preparado, visto que o pagamento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, já que o comprovante de agendamento bancário juntado no mov. [MOVIMENTO DO COMPROVANTE DE AGENDAMENTO] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no mov. [MOVIMENTO DA GUIA FUNJUS], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.',
 ARRAY['minutas/Caso 05.pdf']),

-- Caso 07
('comp_funjus',
 'Guia FUNJUS juntada + comprovante sem código de barras legível',
 'Complementação — código de barras divergente no comprovante FUNJUS (REsp)',
 'O presente recurso especial não foi devidamente preparado, visto que o recolhimento das custas devidas a este Tribunal de Justiça não restou comprovado, pois não há correspondência entre o código de barras constante na guia de recolhimento de mov. [MOVIMENTO DA GUIA FUNJUS] e o do comprovante de pagamento de mov. [MOVIMENTO DO COMPROVANTE FUNJUS].

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "(...) a falta de correspondência entre o código de barras constante do comprovante de pagamento e o da guia de recolhimento do preparo implica pena de deserção, ante a irregularidade no pagamento. Incidência da Súmula 187 do STJ.". (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021, DJe de 2/12/2021.)

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. [MOVIMENTO DA GUIA FUNJUS].

Caso não seja possível apresentação do referido documento, deverá ser realizado novo recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.',
 ARRAY['minutas/Caso 07.pdf']),

-- Caso 08
('comp_funjus',
 'Guia FUNJUS juntada + comprovante não localizado (N/D)',
 'Complementação — FUNJUS ausente, sem guia nem pagamento (REsp)',
 'Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ [VALOR DAS CUSTAS FUNJUS] ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº [LEI ESTADUAL FUNJUS VIGENTE], cujo novo valor passou a vigorar a partir de [DATA DE VIGÊNCIA DA LEI].

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.',
 ARRAY['minutas/Caso 08.pdf']),

-- Caso 10
('dobro',
 'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)',
 'Dobro §4º — guias GRU e FUNJUS sem comprovantes (REsp)',
 'A parte não comprovou o recolhimento do preparo, visto que juntou aos autos tão somente as guias de recolhimento (movs. [MOVIMENTOS DAS GUIAS GRU E FUNJUS]), sem os respectivos comprovantes de pagamento.

A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ [VALOR FUNJUS EM DOBRO], por meio do Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº [LEI ESTADUAL FUNJUS VIGENTE]), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ [VALOR GRU EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.',
 ARRAY['minutas/Caso 10.pdf']),

-- Caso 12
('dobro_nd',
 '2 agendamentos bancários como comprovante',
 'Dobro §4º — 2 agendamentos bancários GRU+FUNJUS (REsp)',
 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que os comprovantes de agendamento bancário juntados nos movs. [MOVIMENTOS DOS AGENDAMENTOS BANCÁRIOS] não são documentos aptos a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Nesse sentido:

PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM RECURSO ESPECIAL. PREPARO RECURSAL. APRESENTAÇÃO DE COMPROVANTE DE AGENDAMENTO. IRREGULARIDADE. INTIMAÇÃO PARA RECOLHER EM DOBRO. JUNTADA POSTERIOR DA GUIA DE RECOLHIMENTO. PRECLUSÃO CONSUMATIVA. DESERÇÃO. SÚMULA 187/STJ.
1. Tendo o recurso sido interposto contra decisão publicada na vigência do Código de Processo Civil de 2015, devem ser exigidos os requisitos de admissibilidade na forma nele previsto, conforme Enunciado Administrativo n. 3/2016/STJ.
2. É deserto o recurso dirigido a esta Corte se a parte não comprova, adequada e tempestivamente, o recolhimento do preparo recursal, a despeito de haver sido regularmente intimada na forma do art. 1.007, § 4º, do CPC/2015. Precedentes.
3. A juntada posterior de comprovante de pagamento de custas não é capaz de superar a deserção em razão da preclusão consumativa.
4. Agravo interno não provido.
(AgInt nos EREsp n. 1.848.579/CE, relator Ministro Benedito Gonçalves, Corte Especial, julgado em 27/9/2022, DJe de 3/10/2022.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:

1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de movs. [MOVIMENTOS DAS GUIAS GRU E FUNJUS];
2. realizar o recolhimento da importância de R$ [VALOR STJ COMPLEMENTAR EM DOBRO], referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02.02.2026, eis que devidas em dobro;
3. realizar novo recolhimento da importância de R$ [VALOR FUNJUS COMPLEMENTAR EM DOBRO] ao Fundo da Justiça – FUNJUS (Lei Estadual nº 21.868, de 18/12/2023), eis que devido em dobro.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ [VALOR GRU TOTAL EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ [VALOR FUNJUS TOTAL EM DOBRO], ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 21.868, de 18/12/2023).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.',
 ARRAY['minutas/Caso 12.pdf']),

-- Caso 13
('dobro_nd',
 '2 comprovantes sem código de barras legível',
 'Dobro §4º — 2 comprovantes sem código de barras legível GRU+FUNJUS (REsp)',
 'Verifica-se que a parte recorrente não demonstrou o recolhimento do preparo no ato da interposição do recurso, pois os documentos juntados como comprovantes de pagamento no mov. [MOVIMENTO DOS COMPROVANTES] não são aptos a comprovar o efetivo recolhimento das custas recursais, já que não é possível visualizar o código de barras na sua integralidade, impossibilitando a comparação com os dados constantes nas guias de recolhimento apresentadas (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá comprovar o recolhimento dos seguintes valores:
- R$ [VALOR GRU EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ [VALOR FUNJUS EM DOBRO], ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 21.868, de 18/12/2023).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.',
 ARRAY['minutas/Caso 13.pdf']),

-- Caso 01
('dobro_nd',
 '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido',
 'Dobro §4º — guia GRU sem comprovante + FUNJUS não recolhida (REsp)',
 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, já que juntou a guia de recolhimento das custas destinadas ao Superior Tribunal de Justiça (mov. [MOVIMENTO DA GUIA GRU]), sem o respectivo comprovante de pagamento. Ademais não realizou o recolhimento das custas locais.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:

1. apresentar o comprovante de pagamento referentes à guia de recolhimento de [MOVIMENTO DA GUIA GRU] e, ainda, realizar o recolhimento da importância de R$ [VALOR STJ COMPLEMENTAR EM DOBRO], referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02.02.2025, eis que devidas em dobro;

2. caso não seja possível juntar o documento mencionado no item 1, deverá realizar o recolhimento da importância de R$ [VALOR GRU TOTAL EM DOBRO], por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026;

3. realizar o recolhimento da importância de R$ [VALOR FUNJUS EM DOBRO], ao Fundo da Justiça – FUNJUS, por meio de guia gerada no site deste Tribunal de Justiça, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 21.868, de 18/12/2023).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.',
 ARRAY['minutas/Caso 01.pdf'])

ON CONFLICT (step_key, option_text) DO NOTHING;
