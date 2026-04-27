-- =============================================================================
-- Gerador de Minutas — Seed Completo: todos os templates de minuta
-- Execute APÓS o schema.sql no SQL Editor do Supabase.
-- Gerado automaticamente pelo script scripts/generate_seed_sql_from_pdfs.ts
--
-- VALORES ATUALIZADOS (Sprint 4):
--   GRU (REsp): R$ 270,12 — IN STJ/GP nº 13/2026, vigência 02/02/2026
--   FUNJUS: R$ 300,00 / R$ 600,00 (dobro) — Lei Estadual 22.956/2025, vigência 18/03/2026
--   RE: valores STF (usar [VALOR_STF] como placeholder)
--
-- NOTA: Templates com texto real dos PDFs = 22
--       Templates SEM_REFERENCIA = 79
--       Total = 101
-- =============================================================================

TRUNCATE minuta_templates;

INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files)
VALUES
('comp_gru', 'Juntou só a guia GRU (sem comprovante de pagamento)', 'Complementação GRU — Juntou só a guia GRU (sem comprovante de pagamento) (REsp)', 'Verifica-se que o recurso não foi devidamente preparado, pois a parte não comprovou o efetivo recolhimento das custas devidas ao Superior Tribunal de Justiça, uma vez que juntou tão somente a guia de recolhimento ([MOVIMENTO]), sem o respectivo comprovante de pagamento.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente para que apresente, no prazo de 5 (cinco) dias, sob pena de deserção, comprovante de pagamento referente à guia de recolhimento de [MOVIMENTO], no qual conste o código de barras de forma visível e legível, "para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02/02/2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.', ARRAY['670588']),
('comp_gru', 'Juntou só o comprovante GRU (sem a guia de recolhimento)', 'Complementação GRU — Juntou só o comprovante GRU (sem a guia de recolhimento) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_gru', 'Guia GRU juntada + comprovante de agendamento bancário', 'Complementação GRU — Guia GRU juntada + comprovante de agendamento bancário (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_gru', 'Guia GRU juntada + divergência de código de barras', 'Complementação GRU — Guia GRU juntada + divergência de código de barras (REsp)', 'O presente recurso não foi devidamente preparado, visto que o recolhimento ao Superior Tribunal de Justiça não restou comprovado, já que não há correspondência entre o código de barras constante na guia de recolhimento de [MOVIMENTO] e o do comprovante de pagamento de [MOVIMENTO].

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "A falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento impede a aferição da regularidade do preparo, tornando o recurso deserto." (AgInt nos EDcl no AREsp n. 2.664.415/SP, relatora Ministra Daniela Teixeira, Terceira Turma, julgado em 5/5/2025, DJEN de 8/5/2025.).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, junte aos autos o comprovante de pagamento referente à guia de recolhimento de [MOVIMENTO].

Caso não seja possível a apresentação do comprovante de pagamento, realizar novo recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.', ARRAY['628802']),
('comp_gru', 'Guia GRU juntada + comprovante sem código de barras legível', 'Complementação GRU — Guia GRU juntada + comprovante sem código de barras legível (REsp)', 'O presente recurso não foi devidamente preparado, visto que no comprovante de pagamento juntado no [MOVIMENTO] não consta o código de barras.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de [MOVIMENTO], em que conste o respectivo código de barras.

Caso não seja possível apresentação do referido documento, deverá ser realizado novo recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02/02/2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.', ARRAY['596798']),
('comp_gru', 'Guia GRU juntada + número de processo ausente ou incorreto', 'Complementação GRU — Guia GRU juntada + número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_gru', 'Número único não corresponde ao processo', 'Complementação GRU — Número único não corresponde ao processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_gru', 'Guia GRU juntada + comprovante não localizado (N/D)', 'Complementação GRU — Guia GRU juntada + comprovante não localizado (N/D) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_gru', 'Guia GRU pertencente a outro processo', 'Complementação GRU — Guia GRU pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_gru', 'Guia GRU juntada + valor divergente ou insuficiente', 'Complementação GRU — Guia GRU juntada + valor divergente ou insuficiente (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_funjus', 'Juntou só a guia FUNJUS (sem comprovante de pagamento)', 'Complementação FUNJUS — Juntou só a guia FUNJUS (sem comprovante de pagamento) (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de recolhimento de [MOVIMENTO], sem o respectivo comprovante de pagamento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no [MOVIMENTO], no qual conste o código de barras de forma visível e legível, "para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, deverá ser realizado o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.

Diligências necessárias.', ARRAY['596361']),
('comp_funjus', 'Juntou só o comprovante FUNJUS (sem a guia de recolhimento)', 'Complementação FUNJUS — Juntou só o comprovante FUNJUS (sem a guia de recolhimento) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + comprovante de agendamento bancário', 'Complementação FUNJUS — Guia FUNJUS juntada + comprovante de agendamento bancário (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, já que o comprovante de agendamento bancário juntado no [MOVIMENTO] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no [MOVIMENTO], no qual conste o código de barras de forma visível e legível, "para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, deverá ser realizado novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', ARRAY['nao_tem_comprovante_de_agendamento']),
('comp_funjus', 'Guia FUNJUS juntada + divergência de código de barras', 'Complementação FUNJUS — Guia FUNJUS juntada + divergência de código de barras (REsp)', 'O presente recurso não foi devidamente preparado, visto que o recolhimento das custas devidas a este Tribunal de Justiça não restou comprovado, pois não há correspondência entre o código de barras constante na guia de recolhimento e o do comprovante de pagamento ([MOVIMENTO]).

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "(...) a falta de correspondência entre o código de barras constante do comprovante de pagamento e o da guia de recolhimento do preparo implica pena de deserção, ante a irregularidade no pagamento." (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021, DJe de 2/12/2021.).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de [MOVIMENTO].

Caso não seja possível apresentação do referido documento, deverá ser realizado o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', ARRAY['596347']),
('comp_funjus', 'Guia FUNJUS juntada + comprovante sem código de barras legível', 'Complementação FUNJUS — Guia FUNJUS juntada + comprovante sem código de barras legível (REsp)', 'O presente recurso não foi devidamente preparado, visto que no documento juntado no [MOVIMENTO] como comprovante de pagamento não consta o código de barras.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de [MOVIMENTO], em que conste o respectivo código de barras.

Caso não seja possível apresentação do referido documento, deverá ser realizado o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', ARRAY['596757']),
('comp_funjus', 'Guia FUNJUS juntada + número de processo ausente ou incorreto', 'Complementação FUNJUS — Guia FUNJUS juntada + número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_funjus', 'Número único não corresponde ao processo', 'Complementação FUNJUS — Número único não corresponde ao processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + comprovante não localizado (N/D)', 'Complementação FUNJUS — Guia FUNJUS juntada + comprovante não localizado (N/D) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_funjus', 'Guia FUNJUS pertencente a outro processo', 'Complementação FUNJUS — Guia FUNJUS pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + valor divergente ou insuficiente', 'Complementação FUNJUS — Guia FUNJUS juntada + valor divergente ou insuficiente (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro', 'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)', 'Pagamento em Dobro — Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro', 'Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)', 'Pagamento em Dobro — Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento) (REsp)', 'Tendo em vista que a parte recorrente não comprovou o preparo no ato da interposição do recurso, visto que juntou os comprovantes de pagamento sem as respectivas guias, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo recursal.

A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Para tanto, a parte deverá:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento de [MOVIMENTO];
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.', ARRAY['677400']),
('dobro', 'Juntou guias com comprovante de agendamento bancário (ambos)', 'Pagamento em Dobro — Juntou guias com comprovante de agendamento bancário (ambos) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro_nd', '2 agendamentos bancários como comprovante', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 agendamentos bancários como comprovante (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro_nd', '2 comprovantes com divergência de código de barras', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 comprovantes com divergência de código de barras (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que não há correspondência entre o código de barras constante na guia de recolhimento de [MOVIMENTO] e o dos comprovantes de pagamento de [MOVIMENTO].

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "A falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento impede a aferição da regularidade do preparo, tornando o recurso deserto." (AgInt nos EDcl no AREsp n. 2.664.415/SP, relatora Ministra Daniela Teixeira, Terceira Turma, julgado em 5/5/2025, DJEN de 8/5/2025.).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de [MOVIMENTO];
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, prevista na Lei Estadual nº 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.', ARRAY['670902']),
('dobro_nd', '2 comprovantes sem código de barras legível', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 comprovantes sem código de barras legível (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro_nd', '2 documentos não localizados (N/D)', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 documentos não localizados (N/D) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro_nd', '2 valores divergentes ou insuficientes', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 valores divergentes ou insuficientes (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro_nd', '2 guias pertencentes a outros processos', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 guias pertencentes a outros processos (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('dobro_nd', 'Número único não corresponde ao processo', 'Pagamento em Dobro — documentos ausentes/irregulares — Número único não corresponde ao processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao', 'Juntou só as guias GRU e FUNJUS (sem comprovantes)', 'Deserção — Juntou só as guias GRU e FUNJUS (sem comprovantes) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao', 'Juntou só os comprovantes GRU e FUNJUS (sem guias)', 'Deserção — Juntou só os comprovantes GRU e FUNJUS (sem guias) (REsp)', 'O(A) Recorrente, devidamente intimado(a) para comprovar o recolhimento em dobro do preparo (despacho de [MOVIMENTO]), apresentou tão somente os comprovantes de pagamento ([MOVIMENTO]), deixando, portanto, de juntar as respectivas guias de recolhimento.

Cumpre esclarecer, que o Supremo Tribunal Federal consolidou o entendimento de que "(...) os recursos a si dirigidos devem estar acompanhados das guias de recolhimento devidamente preenchidas e dos respectivos comprovantes de pagamento, ambos de forma visível e legível, sob pena de deserção." (ARE 1.213.790/MG, Rel. Ministro DIAS TOFFOLI, julgado em 26/06/2019, DJe 24/06/2019).

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso.

Diante do exposto, inadmito o recurso interposto.

Intime-se.', ARRAY['596274','596190']),
('desercao_nd_1pgto', 'Agendamento bancário', 'Deserção §2º — vício (ambas) — Agendamento bancário (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_1pgto', 'Divergência de código de barras', 'Deserção §2º — vício (ambas) — Divergência de código de barras (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_1pgto', 'Sem código de barras legível', 'Deserção §2º — vício (ambas) — Sem código de barras legível (REsp)', 'Declaro a deserção do recurso, nos termos do § 2º do artigo 1.007 do Código de Processo Civil, uma vez que a complementação do preparo não se deu validamente. Isso porque, não consta o número do código de barras no documento indicado como comprovante de pagamento ([MOVIMENTO]), inviabilizando a conferência com a guia de recolhimento apresentada ([MOVIMENTO]).

Nesse sentido:
"DIREITO PROCESSUAL CIVIL. EMBARGOS DE DECLARAÇÃO. PREPARO RECURSAL. AUSÊNCIA DE VÍCIO DE CONTRADIÇÃO. EMBARGOS REJEITADOS.
1. Embargos de declaração opostos contra acórdão que negou provimento a agravo interno no recurso especial, em razão da ausência do número de código de barras no comprovante de pagamento bancário, caracterizando irregularidade no preparo do recurso especial e tornando-o deserto.
2. A ausência do número de código de barras no comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-o deserto, conforme jurisprudência consolidada do STJ.
3. Não há contradição quando os fundamentos e a conclusão do julgado guardam coerência lógica entre si, sendo a contradição apta a ensejar embargos de declaração aquela interna ao corpo textual da decisão.
4. Os embargos de declaração não se prestam à rediscussão do mérito da causa ou à modificação do julgado, salvo para a supressão de vícios internos da decisão.
5. Embargos de declaração rejeitados."
(EDcl no AgInt no REsp n. 2.145.179/SP, relatora Ministra Daniela Teixeira, Terceira Turma, julgado em 5/5/2025, DJEN de 8/5/2025.)

Diante do exposto, inadmito o recurso interposto.

Intimem-se.', ARRAY['596836']),
('desercao_nd_1pgto', 'Número de processo ausente ou incorreto', 'Deserção §2º — vício (ambas) — Número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_1pgto', 'Número único não corresponde ao processo', 'Deserção §2º — vício (ambas) — Número único não corresponde ao processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_1pgto', 'Guia pertencente a outro processo', 'Deserção §2º — vício (ambas) — Guia pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_1pgto', 'Valores divergentes ou insuficientes (ambas as guias)', 'Deserção §2º — vício (ambas) — Valores divergentes ou insuficientes (ambas as guias) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Guia pertencente a outro processo', 'Deserção §4º — vício (ambas) — Guia pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Agendamento bancário', 'Deserção §4º — vício (ambas) — Agendamento bancário (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Comprovou pagamento em valor simples (em vez de dobro)', 'Deserção §4º — vício (ambas) — Comprovou pagamento em valor simples (em vez de dobro) (REsp)', 'A Recorrente foi intimada para comprovar o pagamento em dobro do preparo recursal, conforme determinado no despacho de [MOVIMENTO].

Entretanto, não cumpriu a determinação, vez que, em que pese tenha comprovado o recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça ([MOVIMENTO]), o fato é que realizou o recolhimento das custas destinadas a este Tribunal de Justiça na forma simples ([MOVIMENTO]).

Assim sendo, tendo em vista que a Recorrente, devidamente intimada, não comprovou o recolhimento em dobro do preparo recursal, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso interposto.

Nesse sentido, os seguintes precedentes:
"Direito Processual Civil. Agravo interno em recurso extraordinário com agravo. Recurso extraordinário. Ausência de comprovação do preparo no ato da interposição. Determinação de recolhimento em dobro não observada. Recurso deserto.
(...)
4. O recurso extraordinário não foi devidamente preparado. Determinado o recolhimento em dobro, na forma do art. 1.007, § 4º, do Código de Processo Civil, a parte recorrente realizou o preparo na forma simples. 5. A jurisprudência desta Corte é no sentido de que ''a comprovação do pagamento do preparo deve ocorrer no momento da interposição do recurso, sob pena de deserção.''" (ARE 1494440 AgR, Relator(a): EDSON FACHIN (Vice-Presidente), Tribunal Pleno, julgado em 27/11/2024).

Diante do exposto, inadmito o recurso interposto.

Intime-se.', ARRAY['604326']),
('desercao_nd_2pgto', 'Divergência de código de barras', 'Deserção §4º — vício (ambas) — Divergência de código de barras (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Sem código de barras legível', 'Deserção §4º — vício (ambas) — Sem código de barras legível (REsp)', 'Declaro a deserção do recurso, uma vez que após ser indeferido o pedido de justiça gratuita formulado na petição recursal ([DECISÃO]), a parte recorrente foi devidamente intimada para efetuar o preparo do recurso ([DESPACHO]), tendo se manifestado nos autos para apresentar as guias de recolhimento e os comprovantes de pagamento de [MOVIMENTO], os quais, contudo, não se revelam suficientes a comprovar o respectivo pagamento, na medida em que não consta o número do código de barras, inviabilizando assim a conferência com as guias de recolhimento juntadas ([MOVIMENTO]).

Ressalta-se que o despacho de [MOVIMENTO] mencionou que para comprovação do efetivo recolhimento do preparo a parte deveria providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual constasse o código de barras de forma visível e legível.

A Corte Superior firmou entendimento no sentido de que "A ausência do número de código de barras no comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-se, portanto, deserto" (AgInt nos EDcl nos EREsp n. 1.563.122/RS, relatora Ministra Maria Isabel Gallotti, Corte Especial, julgado em 24/10/2023, DJe de 30/10/2023).

Diante do exposto, o recurso interposto é inadmitido.

Intimem-se.', ARRAY['600045']),
('desercao_nd_2pgto', 'Número de processo ausente ou incorreto', 'Deserção §4º — vício (ambas) — Número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Número único não corresponde ao processo', 'Deserção §4º — vício (ambas) — Número único não corresponde ao processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Documentos não localizados (N/D)', 'Deserção §4º — vício (ambas) — Documentos não localizados (N/D) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Valores divergentes ou insuficientes (ambas as guias)', 'Deserção §4º — vício (ambas) — Valores divergentes ou insuficientes (ambas as guias) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_nd_2pgto', 'Ausência de manifestação', 'Deserção §4º — vício (ambas) — Ausência de manifestação (REsp)', 'A parte recorrente, devidamente intimada para comprovar o recolhimento em dobro do preparo recursal (despacho de [MOVIMENTO]), não se manifestou (certidão de decurso de prazo de [MOVIMENTO]).

Sendo assim, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso.

Nesse sentido, o seguinte precedente:
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM AGRAVO EM RECURSO ESPECIAL. PREPARO. COMPROVAÇÃO. AUSÊNCIA. INTIMAÇÃO. ART. 1.007, § 4º, DO CPC. JUNTADA DE DOCUMENTO. DESERÇÃO. DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos termos do art. 1.007, § 4º, do CPC, a parte não comprovar o pagamento em dobro ou a prévia concessão de gratuidade de justiça no prazo assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos Ferreira, Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)

Diante do exposto, inadmito o recurso interposto.

Intime-se.', ARRAY['596230']),
('desercao_nd_2pgto', 'Renúncia de prazo', 'Deserção §4º — vício (ambas) — Renúncia de prazo (REsp)', 'Declaro a deserção do recurso, uma vez que a parte recorrente devidamente intimada da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e determinou o recolhimento do preparo ([MOVIMENTO]), renunciou ao prazo sem cumpri-lo ([MOVIMENTO]).

Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. DECISÃO DO RELATOR NO TRIBUNAL DE ORIGEM QUE NEGOU SEGUIMENTO AO RECURSO DE APELAÇÃO. VIOLAÇÃO DOS ARTS. 489 E 1.022 DO CPC. NÃO OCORRÊNCIA. DENEGAÇÃO DO PEDIDO DE JUSTIÇA GRATUITA. AUSÊNCIA DE RECOLHIMENTO DO PREPARO NO PRAZO ASSINALADO. DESERÇÃO. DECISÃO MANTIDA. AGRAVO INTERNO NÃO PROVIDO.
(...)
3. Contudo, se mesmo após ter sido intimada na forma do dispositivo acima mencionado, a parte não efetuar o recolhimento do preparo recursal no prazo assinalado, a consequência é o reconhecimento da deserção do recurso, e não uma nova intimação a fim de possibilitar o recolhimento em dobro, na esteira do que dispõe o art. 1.007, § 4º, do CPC.
4. Agravo interno não provido".
(AgInt no AREsp n. 2.624.581/MS, relator Ministro Moura Ribeiro, Terceira Turma, julgado em 24/2/2025, DJEN de 28/2/2025.)

Diante do exposto, inadmito o recurso interposto.

Intimem-se.', ARRAY['0002812','apos-indeferimento-de-jg-intimado-para-preparo-simples-e-nao-regularizou']),
('desercao_nd_2pgto', 'Decurso de prazo', 'Deserção §4º — vício (ambas) — Decurso de prazo (REsp)', 'Declaro a deserção do recurso, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, uma vez que a parte recorrente não regularizou o preparo recursal, conforme determinado no despacho de [MOVIMENTO] (certidão de decurso de prazo de [MOVIMENTO]).

Nesse sentido, o seguinte precedente:
"RECURSO – DESERÇÃO – ARTIGO 1.007 DO CÓDIGO DE PROCESSO CIVIL DE 2015. Se o extraordinário foi interposto na vigência do Código de Processo Civil de 2015, a comprovação do recolhimento do preparo há de ser feita no prazo do recurso, ou naquele fixado para a respectiva regularização, sob pena de deserção." (ARE 1081517 AgR, Relator(a): Min. MARCO AURÉLIO, Primeira Turma, julgado em 13/03/2018.)

Diante do exposto, inadmito o recurso interposto.

Intime-se.', ARRAY['596237']),
('desercao_gru_1pgto', 'Agendamento bancário', 'Deserção §2º — vício (GRU) — Agendamento bancário (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_1pgto', 'Divergência de código de barras', 'Deserção §2º — vício (GRU) — Divergência de código de barras (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_1pgto', 'Sem código de barras legível', 'Deserção §2º — vício (GRU) — Sem código de barras legível (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_1pgto', 'Número de processo ausente ou incorreto', 'Deserção §2º — vício (GRU) — Número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_1pgto', 'Número único não corresponde ao processo (GRU)', 'Deserção §2º — vício (GRU) — Número único não corresponde ao processo (GRU) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_1pgto', 'Guia GRU não apresentada após intimação (nunca juntada)', 'Deserção §2º — vício (GRU) — Guia GRU não apresentada após intimação (nunca juntada) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_1pgto', 'Guia GRU pertencente a outro processo', 'Deserção §2º — vício (GRU) — Guia GRU pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_1pgto', 'Valor divergente ou insuficiente (GRU)', 'Deserção §2º — vício (GRU) — Valor divergente ou insuficiente (GRU) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Guia pertencente a outro processo', 'Deserção §4º — vício (GRU) — Guia pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Agendamento bancário', 'Deserção §4º — vício (GRU) — Agendamento bancário (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Comprovou pagamento em valor simples (em vez de dobro)', 'Deserção §4º — vício (GRU) — Comprovou pagamento em valor simples (em vez de dobro) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Divergência de código de barras', 'Deserção §4º — vício (GRU) — Divergência de código de barras (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Sem código de barras legível', 'Deserção §4º — vício (GRU) — Sem código de barras legível (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Número de processo ausente ou incorreto', 'Deserção §4º — vício (GRU) — Número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Número único não corresponde ao processo (GRU)', 'Deserção §4º — vício (GRU) — Número único não corresponde ao processo (GRU) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Guia GRU não apresentada após intimação (nunca juntada)', 'Deserção §4º — vício (GRU) — Guia GRU não apresentada após intimação (nunca juntada) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Documentos não localizados (N/D)', 'Deserção §4º — vício (GRU) — Documentos não localizados (N/D) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Valor divergente ou insuficiente (GRU)', 'Deserção §4º — vício (GRU) — Valor divergente ou insuficiente (GRU) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Ausência de manifestação', 'Deserção §4º — vício (GRU) — Ausência de manifestação (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Renúncia de prazo', 'Deserção §4º — vício (GRU) — Renúncia de prazo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_gru_2pgto', 'Decurso de prazo', 'Deserção §4º — vício (GRU) — Decurso de prazo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Agendamento bancário', 'Deserção §2º — vício (FUNJUS) — Agendamento bancário (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Divergência de código de barras', 'Deserção §2º — vício (FUNJUS) — Divergência de código de barras (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Sem código de barras legível', 'Deserção §2º — vício (FUNJUS) — Sem código de barras legível (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Número de processo ausente ou incorreto', 'Deserção §2º — vício (FUNJUS) — Número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Número único não corresponde ao processo (FUNJUS)', 'Deserção §2º — vício (FUNJUS) — Número único não corresponde ao processo (FUNJUS) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Guia FUNJUS não apresentada após intimação (nunca juntada)', 'Deserção §2º — vício (FUNJUS) — Guia FUNJUS não apresentada após intimação (nunca juntada) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Guia pertencente a outro processo', 'Deserção §2º — vício (FUNJUS) — Guia pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_1pgto', 'Valor divergente ou insuficiente (FUNJUS)', 'Deserção §2º — vício (FUNJUS) — Valor divergente ou insuficiente (FUNJUS) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Guia pertencente a outro processo', 'Deserção §4º — vício (FUNJUS) — Guia pertencente a outro processo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Agendamento bancário', 'Deserção §4º — vício (FUNJUS) — Agendamento bancário (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Comprovou pagamento em valor simples (em vez de dobro)', 'Deserção §4º — vício (FUNJUS) — Comprovou pagamento em valor simples (em vez de dobro) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Divergência de código de barras', 'Deserção §4º — vício (FUNJUS) — Divergência de código de barras (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Sem código de barras legível', 'Deserção §4º — vício (FUNJUS) — Sem código de barras legível (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Número de processo ausente ou incorreto', 'Deserção §4º — vício (FUNJUS) — Número de processo ausente ou incorreto (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Número único não corresponde ao processo (FUNJUS)', 'Deserção §4º — vício (FUNJUS) — Número único não corresponde ao processo (FUNJUS) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Guia FUNJUS não apresentada após intimação (nunca juntada)', 'Deserção §4º — vício (FUNJUS) — Guia FUNJUS não apresentada após intimação (nunca juntada) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Documentos não localizados (N/D)', 'Deserção §4º — vício (FUNJUS) — Documentos não localizados (N/D) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Valor divergente ou insuficiente (FUNJUS)', 'Deserção §4º — vício (FUNJUS) — Valor divergente ou insuficiente (FUNJUS) (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Ausência de manifestação', 'Deserção §4º — vício (FUNJUS) — Ausência de manifestação (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Renúncia de prazo', 'Deserção §4º — vício (FUNJUS) — Renúncia de prazo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desercao_funjus_2pgto', 'Decurso de prazo', 'Deserção §4º — vício (FUNJUS) — Decurso de prazo (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('intempestivo', 'Pagamento realizado fora do prazo recursal', 'Intempestivo — Pagamento realizado fora do prazo recursal (REsp)', 'A parte recorrente foi intimada para comprovar a complementação do preparo no prazo de 5 (cinco) dias, na forma do despacho de [MOVIMENTO].

Verifica-se que a leitura de intimação do referido despacho foi confirmada em [DATA], de modo que o prazo de 5 (cinco) dias concedido para regularização do preparo passou a fluir em [DATA] e findou em [DATA], sendo certificado o decurso do prazo em [DATA] ([MOVIMENTO]).

Sendo assim, e considerando que a regularização do preparo foi feita intempestivamente, na medida em que os documentos foram apresentados em [DATA] ([MOVIMENTO]), nos termos do § 2º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso.

Nesse sentido, o seguinte precedente:
"TRIBUTÁRIO E PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. RECURSO ESPECIAL. PREPARO INSUFICIENTE. INTIMAÇÃO PARA COMPLEMENTAÇÃO DO PREPARO, NO PRAZO DE 5 (CINCO) DIAS, PREVISTO NO ART. 1.007, § 2º, DO CPC/2015. NÃO ATENDIMENTO, NO PRAZO LEGAL. DESERÇÃO. SÚMULA 187/STJ. AGRAVO INTERNO IMPROVIDO. (...)
III. A extemporânea comprovação da complementação do preparo recursal inviabiliza o conhecimento do presente recurso, nos termos da Súmula 187 desta Corte."
(AgInt no AREsp n. 1.788.290/MS, relatora Ministra Assusete Magalhães, Segunda Turma, julgado em 29/3/2021, DJe de 6/4/2021.)

Diante do exposto, inadmito o recurso interposto.

Intime-se.', ARRAY['607948']),
('intempestivo', 'Comprovante de pagamento juntado fora do prazo recursal', 'Intempestivo — Comprovante de pagamento juntado fora do prazo recursal (REsp)', 'A parte recorrente foi intimada para comprovar a complementação do preparo no prazo de 5 (cinco) dias, na forma do despacho de [MOVIMENTO].

Verifica-se que a leitura de intimação do referido despacho foi confirmada em [DATA], de modo que o prazo de 5 (cinco) dias concedido para regularização do preparo passou a fluir em [DATA] e findou em [DATA], sendo certificado o decurso do prazo em [DATA] ([MOVIMENTO]).

Sendo assim, e considerando que a regularização do preparo foi feita intempestivamente, na medida em que os documentos foram apresentados em [DATA] ([MOVIMENTO]), nos termos do § 2º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso.

Nesse sentido, o seguinte precedente:
"TRIBUTÁRIO E PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. RECURSO ESPECIAL. PREPARO INSUFICIENTE. INTIMAÇÃO PARA COMPLEMENTAÇÃO DO PREPARO, NO PRAZO DE 5 (CINCO) DIAS, PREVISTO NO ART. 1.007, § 2º, DO CPC/2015. NÃO ATENDIMENTO, NO PRAZO LEGAL. DESERÇÃO. SÚMULA 187/STJ. AGRAVO INTERNO IMPROVIDO. (...)
III. A extemporânea comprovação da complementação do preparo recursal inviabiliza o conhecimento do presente recurso, nos termos da Súmula 187 desta Corte."
(AgInt no AREsp n. 1.788.290/MS, relatora Ministra Assusete Magalhães, Segunda Turma, julgado em 29/3/2021, DJe de 6/4/2021.)

Diante do exposto, inadmito o recurso interposto.

Intime-se.', ARRAY['607948']),
('desistencia_jg', 'Custas em dobro — GRU', 'Desistência de J.G. — custas em dobro — Custas em dobro — GRU (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desistencia_jg', 'Custas em dobro — FUNJUS', 'Desistência de J.G. — custas em dobro — Custas em dobro — FUNJUS (REsp)', 'AINDA SEM REFERENCIA DE MINUTAS', '{}'),
('desistencia_jg', 'Custas em dobro — GRU e FUNJUS (ambas)', 'Desistência de J.G. — custas em dobro — Custas em dobro — GRU e FUNJUS (ambas) (REsp)', 'A parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, em razão do pedido de gratuidade nele formulado.

Considerando que o pedido foi manifestado sem que fossem apresentados elementos a comprovar a necessidade do benefício, nos termos do art. 99, § 2º, CPC/2015, restou oportunizado ao recorrente a juntada de documentos, a fim de aferir adequadamente a sua condição financeira, na forma do despacho de [MOVIMENTO].

Todavia, a parte desistiu do pedido da gratuidade da Justiça ([MOVIMENTO]).

Daí que "nesse contexto, em que as custas não foram recolhidas no ato da interposição do recurso especial, bem como a renúncia ao pedido de gratuidade, imperiosa a observância do art. 1.007, § 4º do CPC, com o recolhimento em dobro" (STJ. AREsp n. 2.403.697, Ministra Maria Thereza de Assis Moura, DJe de 14/08/2023.).

Assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se o Recorrente para que, no prazo de 5 (cinco) dias, efetue o pagamento das custas em dobro, sob pena de deserção.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 2.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.', ARRAY['0015914']),
('apos_indeferimento_jg', 'Inércia — não manifestação após intimação', 'Após indeferimento de J.G. — Inércia — não manifestação após intimação (REsp)', 'Declaro a deserção do recurso, uma vez que a parte recorrente devidamente intimada da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e determinou o recolhimento do preparo ([MOVIMENTO]), permaneceu inerte ([MOVIMENTO]).

Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. DECISÃO DO RELATOR NO TRIBUNAL DE ORIGEM QUE NEGOU SEGUIMENTO AO RECURSO DE APELAÇÃO. VIOLAÇÃO DOS ARTS. 489 E 1.022 DO CPC. NÃO OCORRÊNCIA. DENEGAÇÃO DO PEDIDO DE JUSTIÇA GRATUITA. AUSÊNCIA DE RECOLHIMENTO DO PREPARO NO PRAZO ASSINALADO. DESERÇÃO. DECISÃO MANTIDA. AGRAVO INTERNO NÃO PROVIDO.
(...)
3. Contudo, se mesmo após ter sido intimada na forma do dispositivo acima mencionado, a parte não efetuar o recolhimento do preparo recursal no prazo assinalado, a consequência é o reconhecimento da deserção do recurso, e não uma nova intimação a fim de possibilitar o recolhimento em dobro, na esteira do que dispõe o art. 1.007, § 4º, do CPC.
4. Agravo interno não provido".
(AgInt no AREsp n. 2.624.581/MS, relator Ministro Moura Ribeiro, Terceira Turma, julgado em 24/2/2025, DJEN de 28/2/2025.)

Diante do exposto, inadmito o recurso interposto.

Intimem-se.', ARRAY['606190','672340']),
('apos_indeferimento_jg', 'Renúncia ao prazo', 'Após indeferimento de J.G. — Renúncia ao prazo (REsp)', 'Declaro a deserção do recurso, uma vez que a parte recorrente devidamente intimada da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e determinou o recolhimento do preparo ([MOVIMENTO]), renunciou ao prazo sem cumpri-lo ([MOVIMENTO]).

Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. DECISÃO DO RELATOR NO TRIBUNAL DE ORIGEM QUE NEGOU SEGUIMENTO AO RECURSO DE APELAÇÃO. VIOLAÇÃO DOS ARTS. 489 E 1.022 DO CPC. NÃO OCORRÊNCIA. DENEGAÇÃO DO PEDIDO DE JUSTIÇA GRATUITA. AUSÊNCIA DE RECOLHIMENTO DO PREPARO NO PRAZO ASSINALADO. DESERÇÃO. DECISÃO MANTIDA. AGRAVO INTERNO NÃO PROVIDO.
(...)
3. Contudo, se mesmo após ter sido intimada na forma do dispositivo acima mencionado, a parte não efetuar o recolhimento do preparo recursal no prazo assinalado, a consequência é o reconhecimento da deserção do recurso, e não uma nova intimação a fim de possibilitar o recolhimento em dobro, na esteira do que dispõe o art. 1.007, § 4º, do CPC.
4. Agravo interno não provido".
(AgInt no AREsp n. 2.624.581/MS, relator Ministro Moura Ribeiro, Terceira Turma, julgado em 24/2/2025, DJEN de 28/2/2025.)

Diante do exposto, inadmito o recurso interposto.

Intimem-se.', ARRAY['0002812','apos-indeferimento-de-jg-intimado-para-preparo-simples-e-nao-regularizou']),
('apos_indeferimento_jg', 'Decurso de prazo', 'Após indeferimento de J.G. — Decurso de prazo (REsp)', 'Declaro a deserção do recurso, uma vez que a parte recorrente devidamente intimada da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e determinou o recolhimento do preparo ([MOVIMENTO]), não se manifestou (certidão de decurso de prazo de [MOVIMENTO]).

Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. DECISÃO DO RELATOR NO TRIBUNAL DE ORIGEM QUE NEGOU SEGUIMENTO AO RECURSO DE APELAÇÃO. VIOLAÇÃO DOS ARTS. 489 E 1.022 DO CPC. NÃO OCORRÊNCIA. DENEGAÇÃO DO PEDIDO DE JUSTIÇA GRATUITA. AUSÊNCIA DE RECOLHIMENTO DO PREPARO NO PRAZO ASSINALADO. DESERÇÃO. DECISÃO MANTIDA. AGRAVO INTERNO NÃO PROVIDO.
(...)
3. Contudo, se mesmo após ter sido intimada na forma do dispositivo acima mencionado, a parte não efetuar o recolhimento do preparo recursal no prazo assinalado, a consequência é o reconhecimento da deserção do recurso, e não uma nova intimação a fim de possibilitar o recolhimento em dobro, na esteira do que dispõe o art. 1.007, § 4º, do CPC.
4. Agravo interno não provido".
(AgInt no AREsp n. 2.624.581/MS, relator Ministro Moura Ribeiro, Terceira Turma, julgado em 24/2/2025, DJEN de 28/2/2025.)

Diante do exposto, inadmito o recurso interposto.

Intimem-se.', ARRAY['606190','672340'])
ON CONFLICT (step_key, option_text) DO UPDATE SET
  title = EXCLUDED.title,
  template_text = EXCLUDED.template_text,
  source_files = EXCLUDED.source_files,
  updated_at = NOW();
