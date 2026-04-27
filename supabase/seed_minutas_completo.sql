-- =============================================================================
-- Gerador de Minutas — Seed Completo: todos os templates de minuta
-- Execute APÓS o schema.sql no SQL Editor do Supabase.
-- Gerado automaticamente pelo script scripts/generate_seed_sql.ts
--
-- VALORES ATUALIZADOS (Sprint 4):
--   GRU (REsp): R$ 270,12 — IN STJ/GP nº 13/2026, vigência 02/02/2026
--   FUNJUS: R$ 300,00 / R$ 600,00 (dobro) — Lei Estadual 22.956/2025, vigência 18/03/2026
--   RE: valores STF (usar [VALOR_STF] como placeholder)
-- =============================================================================

-- Remover template obsoleto (removido do fluxo — S0-T6: só 1 guia → complementação, não dobro)
DELETE FROM minuta_templates WHERE option_text = '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido';

INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files)
VALUES
('comp_gru', 'Juntou só a guia GRU (sem comprovante de pagamento)', 'Complementação GRU — Juntou só a guia GRU (sem comprovante de pagamento) (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Valor a ser recolhido: R$ 270,12, referente às custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026;

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Juntou só o comprovante GRU (sem a guia de recolhimento)', 'Complementação GRU — Juntou só o comprovante GRU (sem a guia de recolhimento) (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Valor a ser recolhido: R$ 270,12, referente às custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026;

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Guia GRU juntada + comprovante de agendamento bancário', 'Complementação GRU — Guia GRU juntada + comprovante de agendamento bancário (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

O comprovante apresentado para a GRU é um agendamento bancário, não constituindo prova de recolhimento efetivo (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025).

Intime-se a parte recorrente, nos termos do art. 1.007, § 2º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá apresentar o comprovante de pagamento definitivo referente à guia já juntada ou, caso não seja possível, realizar novo recolhimento;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Guia GRU juntada + divergência de código de barras', 'Complementação GRU — Guia GRU juntada + divergência de código de barras (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

O comprovante da GRU não permite a verificação do recolhimento, pois o código de barras não corresponde ao da guia de recolhimento, nos termos da jurisprudência: "(...) a falta de correspondência entre o código de barras(...) implica pena de deserção" (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021).

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Guia GRU juntada + comprovante sem código de barras legível', 'Complementação GRU — Guia GRU juntada + comprovante sem código de barras legível (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

O comprovante da GRU não permite a verificação do recolhimento, pois não apresenta o código de barras de forma visível e legível, nos termos da jurisprudência: "(...) a falta de correspondência entre o código de barras(...) implica pena de deserção" (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021).

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Guia GRU juntada + número de processo ausente ou incorreto', 'Complementação GRU — Guia GRU juntada + número de processo ausente ou incorreto (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Número único não corresponde ao processo', 'Complementação GRU — Número único não corresponde ao processo (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

O número único de referência constante no documento não corresponde ao número do processo nem à árvore processual.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Guia GRU juntada + comprovante não localizado (N/D)', 'Complementação GRU — Guia GRU juntada + comprovante não localizado (N/D) (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 2º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá apresentar o comprovante de pagamento definitivo referente à guia já juntada ou, caso não seja possível, realizar novo recolhimento;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Guia GRU pertencente a outro processo', 'Complementação GRU — Guia GRU pertencente a outro processo (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

A guia GRU apresentada pertence a outro processo ou recurso, não sendo imputável ao presente feito.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_gru', 'Guia GRU juntada + valor divergente ou insuficiente', 'Complementação GRU — Guia GRU juntada + valor divergente ou insuficiente (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas ao Superior Tribunal de Justiça apresenta irregularidade.

O valor recolhido na GRU é divergente ou insuficiente em relação ao montante exigido.

Intime-se a parte recorrente, nos termos do art. 1.007, § 2º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 270,12, ao Fundo Especial do STJ, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da guia GRU-COBRANÇA.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Juntou só a guia FUNJUS (sem comprovante de pagamento)', 'Complementação FUNJUS — Juntou só a guia FUNJUS (sem comprovante de pagamento) (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Valor a ser recolhido: R$ 300,00, referente às custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025;

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Juntou só o comprovante FUNJUS (sem a guia de recolhimento)', 'Complementação FUNJUS — Juntou só o comprovante FUNJUS (sem a guia de recolhimento) (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Valor a ser recolhido: R$ 300,00, referente às custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025;

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + comprovante de agendamento bancário', 'Complementação FUNJUS — Guia FUNJUS juntada + comprovante de agendamento bancário (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

O comprovante apresentado para a FUNJUS é um agendamento bancário, não constituindo prova de recolhimento efetivo (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025).

Intime-se a parte recorrente, nos termos do art. 1.007, § 2º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá apresentar o comprovante de pagamento definitivo referente à guia já juntada ou, caso não seja possível, realizar novo recolhimento;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + divergência de código de barras', 'Complementação FUNJUS — Guia FUNJUS juntada + divergência de código de barras (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

O comprovante da FUNJUS não permite a verificação do recolhimento, pois o código de barras não corresponde ao da guia de recolhimento, nos termos da jurisprudência: "(...) a falta de correspondência entre o código de barras(...) implica pena de deserção" (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021).

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + comprovante sem código de barras legível', 'Complementação FUNJUS — Guia FUNJUS juntada + comprovante sem código de barras legível (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

O comprovante da FUNJUS não permite a verificação do recolhimento, pois não apresenta o código de barras de forma visível e legível, nos termos da jurisprudência: "(...) a falta de correspondência entre o código de barras(...) implica pena de deserção" (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021).

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + número de processo ausente ou incorreto', 'Complementação FUNJUS — Guia FUNJUS juntada + número de processo ausente ou incorreto (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Número único não corresponde ao processo', 'Complementação FUNJUS — Número único não corresponde ao processo (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

O número único de referência constante no documento não corresponde ao número do processo nem à árvore processual.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + comprovante não localizado (N/D)', 'Complementação FUNJUS — Guia FUNJUS juntada + comprovante não localizado (N/D) (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

Intime-se a parte recorrente, nos termos do art. 1.007, § 2º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá apresentar o comprovante de pagamento definitivo referente à guia já juntada ou, caso não seja possível, realizar novo recolhimento;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Guia FUNJUS pertencente a outro processo', 'Complementação FUNJUS — Guia FUNJUS pertencente a outro processo (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

A guia FUNJUS apresentada pertence a outro processo ou recurso, não sendo imputável ao presente feito.

Intime-se a parte recorrente, nos termos do art. 1.007, § 7º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('comp_funjus', 'Guia FUNJUS juntada + valor divergente ou insuficiente', 'Complementação FUNJUS — Guia FUNJUS juntada + valor divergente ou insuficiente (REsp)', 'O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça apresenta irregularidade.

O valor recolhido na FUNJUS é divergente ou insuficiente em relação ao montante exigido.

Intime-se a parte recorrente, nos termos do art. 1.007, § 2º do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, a parte deverá regularizar a irregularidade apontada;

Caso não seja possível a regularização, a parte deverá realizar novo recolhimento da importância de R$ 300,00, ao Fundo da Justiça – FUNJUS, referente às custas locais, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('dobro', 'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)', 'Pagamento em Dobro — Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento) (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro', 'Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)', 'Pagamento em Dobro — Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento) (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro', 'Juntou guias com comprovante de agendamento bancário (ambos)', 'Pagamento em Dobro — Juntou guias com comprovante de agendamento bancário (ambos) (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro_nd', '2 agendamentos bancários como comprovante', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 agendamentos bancários como comprovante (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro_nd', '2 comprovantes com divergência de código de barras', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 comprovantes com divergência de código de barras (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro_nd', '2 comprovantes sem código de barras legível', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 comprovantes sem código de barras legível (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro_nd', '2 documentos não localizados (N/D)', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 documentos não localizados (N/D) (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro_nd', '2 valores divergentes ou insuficientes', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 valores divergentes ou insuficientes (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro_nd', '2 guias pertencentes a outros processos', 'Pagamento em Dobro — documentos ausentes/irregulares — 2 guias pertencentes a outros processos (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('dobro_nd', 'Número único não corresponde ao processo', 'Pagamento em Dobro — documentos ausentes/irregulares — Número único não corresponde ao processo (REsp)', 'Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026, por meio da guia GRU-COBRANÇA;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025, por meio de guia gerada no sítio https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail.', '{}'),
('desercao', 'Juntou só as guias GRU e FUNJUS (sem comprovantes)', 'Deserção — Juntou só as guias GRU e FUNJUS (sem comprovantes) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao', 'Juntou só os comprovantes GRU e FUNJUS (sem guias)', 'Deserção — Juntou só os comprovantes GRU e FUNJUS (sem guias) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_1pgto', 'Agendamento bancário', 'Deserção §2º — vício (ambas) — Agendamento bancário (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_1pgto', 'Divergência de código de barras', 'Deserção §2º — vício (ambas) — Divergência de código de barras (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_1pgto', 'Sem código de barras legível', 'Deserção §2º — vício (ambas) — Sem código de barras legível (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_1pgto', 'Número de processo ausente ou incorreto', 'Deserção §2º — vício (ambas) — Número de processo ausente ou incorreto (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_1pgto', 'Número único não corresponde ao processo', 'Deserção §2º — vício (ambas) — Número único não corresponde ao processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_1pgto', 'Guia pertencente a outro processo', 'Deserção §2º — vício (ambas) — Guia pertencente a outro processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_1pgto', 'Valores divergentes ou insuficientes (ambas as guias)', 'Deserção §2º — vício (ambas) — Valores divergentes ou insuficientes (ambas as guias) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Guia pertencente a outro processo', 'Deserção §4º — vício (ambas) — Guia pertencente a outro processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Agendamento bancário', 'Deserção §4º — vício (ambas) — Agendamento bancário (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Comprovou pagamento em valor simples (em vez de dobro)', 'Deserção §4º — vício (ambas) — Comprovou pagamento em valor simples (em vez de dobro) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada para recolher o preparo em dobro e comprovou o pagamento em valor simples, não atendendo à determinação judicial.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Divergência de código de barras', 'Deserção §4º — vício (ambas) — Divergência de código de barras (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Sem código de barras legível', 'Deserção §4º — vício (ambas) — Sem código de barras legível (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Número de processo ausente ou incorreto', 'Deserção §4º — vício (ambas) — Número de processo ausente ou incorreto (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Número único não corresponde ao processo', 'Deserção §4º — vício (ambas) — Número único não corresponde ao processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Documentos não localizados (N/D)', 'Deserção §4º — vício (ambas) — Documentos não localizados (N/D) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Valores divergentes ou insuficientes (ambas as guias)', 'Deserção §4º — vício (ambas) — Valores divergentes ou insuficientes (ambas as guias) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Ausência de manifestação', 'Deserção §4º — vício (ambas) — Ausência de manifestação (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada e não se manifestou.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Renúncia de prazo', 'Deserção §4º — vício (ambas) — Renúncia de prazo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte renunciou ao prazo para regularização.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_nd_2pgto', 'Decurso de prazo', 'Deserção §4º — vício (ambas) — Decurso de prazo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente às guias GRU e FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Decorrido o prazo para regularização sem manifestação da parte.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Agendamento bancário', 'Deserção §2º — vício (GRU) — Agendamento bancário (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Divergência de código de barras', 'Deserção §2º — vício (GRU) — Divergência de código de barras (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Sem código de barras legível', 'Deserção §2º — vício (GRU) — Sem código de barras legível (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Número de processo ausente ou incorreto', 'Deserção §2º — vício (GRU) — Número de processo ausente ou incorreto (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Número único não corresponde ao processo (GRU)', 'Deserção §2º — vício (GRU) — Número único não corresponde ao processo (GRU) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Guia GRU não apresentada após intimação (nunca juntada)', 'Deserção §2º — vício (GRU) — Guia GRU não apresentada após intimação (nunca juntada) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada para juntar a guia GRU correspondente e não atendeu à determinação no prazo assinado.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Guia GRU pertencente a outro processo', 'Deserção §2º — vício (GRU) — Guia GRU pertencente a outro processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_1pgto', 'Valor divergente ou insuficiente (GRU)', 'Deserção §2º — vício (GRU) — Valor divergente ou insuficiente (GRU) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Guia pertencente a outro processo', 'Deserção §4º — vício (GRU) — Guia pertencente a outro processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Agendamento bancário', 'Deserção §4º — vício (GRU) — Agendamento bancário (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Comprovou pagamento em valor simples (em vez de dobro)', 'Deserção §4º — vício (GRU) — Comprovou pagamento em valor simples (em vez de dobro) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada para recolher o preparo em dobro e comprovou o pagamento em valor simples, não atendendo à determinação judicial.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Divergência de código de barras', 'Deserção §4º — vício (GRU) — Divergência de código de barras (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Sem código de barras legível', 'Deserção §4º — vício (GRU) — Sem código de barras legível (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Número de processo ausente ou incorreto', 'Deserção §4º — vício (GRU) — Número de processo ausente ou incorreto (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Número único não corresponde ao processo (GRU)', 'Deserção §4º — vício (GRU) — Número único não corresponde ao processo (GRU) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Guia GRU não apresentada após intimação (nunca juntada)', 'Deserção §4º — vício (GRU) — Guia GRU não apresentada após intimação (nunca juntada) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada para juntar a guia GRU correspondente e não atendeu à determinação no prazo assinado.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Documentos não localizados (N/D)', 'Deserção §4º — vício (GRU) — Documentos não localizados (N/D) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Valor divergente ou insuficiente (GRU)', 'Deserção §4º — vício (GRU) — Valor divergente ou insuficiente (GRU) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Ausência de manifestação', 'Deserção §4º — vício (GRU) — Ausência de manifestação (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada e não se manifestou.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Renúncia de prazo', 'Deserção §4º — vício (GRU) — Renúncia de prazo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte renunciou ao prazo para regularização.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_gru_2pgto', 'Decurso de prazo', 'Deserção §4º — vício (GRU) — Decurso de prazo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia GRU, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Decorrido o prazo para regularização sem manifestação da parte.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Agendamento bancário', 'Deserção §2º — vício (FUNJUS) — Agendamento bancário (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Divergência de código de barras', 'Deserção §2º — vício (FUNJUS) — Divergência de código de barras (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Sem código de barras legível', 'Deserção §2º — vício (FUNJUS) — Sem código de barras legível (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Número de processo ausente ou incorreto', 'Deserção §2º — vício (FUNJUS) — Número de processo ausente ou incorreto (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Número único não corresponde ao processo (FUNJUS)', 'Deserção §2º — vício (FUNJUS) — Número único não corresponde ao processo (FUNJUS) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Guia FUNJUS não apresentada após intimação (nunca juntada)', 'Deserção §2º — vício (FUNJUS) — Guia FUNJUS não apresentada após intimação (nunca juntada) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada para juntar a guia FUNJUS correspondente e não atendeu à determinação no prazo assinado.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Guia pertencente a outro processo', 'Deserção §2º — vício (FUNJUS) — Guia pertencente a outro processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_1pgto', 'Valor divergente ou insuficiente (FUNJUS)', 'Deserção §2º — vício (FUNJUS) — Valor divergente ou insuficiente (FUNJUS) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Guia pertencente a outro processo', 'Deserção §4º — vício (FUNJUS) — Guia pertencente a outro processo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Agendamento bancário', 'Deserção §4º — vício (FUNJUS) — Agendamento bancário (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Comprovou pagamento em valor simples (em vez de dobro)', 'Deserção §4º — vício (FUNJUS) — Comprovou pagamento em valor simples (em vez de dobro) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada para recolher o preparo em dobro e comprovou o pagamento em valor simples, não atendendo à determinação judicial.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Divergência de código de barras', 'Deserção §4º — vício (FUNJUS) — Divergência de código de barras (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Sem código de barras legível', 'Deserção §4º — vício (FUNJUS) — Sem código de barras legível (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Número de processo ausente ou incorreto', 'Deserção §4º — vício (FUNJUS) — Número de processo ausente ou incorreto (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Número único não corresponde ao processo (FUNJUS)', 'Deserção §4º — vício (FUNJUS) — Número único não corresponde ao processo (FUNJUS) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Guia FUNJUS não apresentada após intimação (nunca juntada)', 'Deserção §4º — vício (FUNJUS) — Guia FUNJUS não apresentada após intimação (nunca juntada) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada para juntar a guia FUNJUS correspondente e não atendeu à determinação no prazo assinado.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Documentos não localizados (N/D)', 'Deserção §4º — vício (FUNJUS) — Documentos não localizados (N/D) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Valor divergente ou insuficiente (FUNJUS)', 'Deserção §4º — vício (FUNJUS) — Valor divergente ou insuficiente (FUNJUS) (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Ausência de manifestação', 'Deserção §4º — vício (FUNJUS) — Ausência de manifestação (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte foi intimada e não se manifestou.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Renúncia de prazo', 'Deserção §4º — vício (FUNJUS) — Renúncia de prazo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

A parte renunciou ao prazo para regularização.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('desercao_funjus_2pgto', 'Decurso de prazo', 'Deserção §4º — vício (FUNJUS) — Decurso de prazo (REsp)', 'Verificada a irregularidade insanável no preparo recursal referente à guia FUNJUS, não regularizada no prazo assinado.

Trata-se de hipótese de deserção, nos termos do art. 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Decorrido o prazo para regularização sem manifestação da parte.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('intempestivo', 'Pagamento realizado fora do prazo recursal', 'Intempestivo — Pagamento realizado fora do prazo recursal (REsp)', 'Trata-se de recurso especial cujo preparo foi efetuado após o término do prazo recursal, nos termos do artigo 1.003, § 5º, c/c o artigo 219, ambos do Código de Processo Civil.

Não se conhece do recurso, porquanto o recolhimento das custas recursais ocorreu fora do prazo legal, o que impede a comprovação tempestiva do preparo, nos termos da jurisprudência desta Corte (AgInt no AREsp nº 2.039.729/RS, relator Ministro Antonio Carlos Ferreira, Quarta Turma, julgado em 27/06/2023, DJe de 30/06/2023).

Em razão disso, NEGO PROVIMENTO ao agravo interno.

Publique-se.

Intimem-se.', '{}'),
('intempestivo', 'Comprovante de pagamento juntado fora do prazo recursal', 'Intempestivo — Comprovante de pagamento juntado fora do prazo recursal (REsp)', 'Trata-se de recurso especial cujo comprovante de pagamento das custas recursais foi juntado aos autos após o término do prazo recursal, nos termos do artigo 1.003, § 5º, c/c o artigo 219, ambos do Código de Processo Civil.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que a comprovação do preparo recursal deve ser feita no prazo legal, sendo intempestiva a juntada posterior ao transcurso do prazo, o que implica inadmissibilidade do recurso (AgInt no AREsp nº 2.039.729/RS, relator Ministro Antonio Carlos Ferreira, Quarta Turma, julgado em 27/06/2023, DJe de 30/06/2023).

Em razão disso, NEGO PROVIMENTO ao agravo interno.

Publique-se.

Intimem-se.', '{}'),
('desistencia_jg', 'Custas em dobro — GRU', 'Desistência de J.G. — custas em dobro — Custas em dobro — GRU (REsp)', 'Declarada a desistência da Justiça Gratuita, as custas processuais referentes à GRU são exigidas em dobro, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para, no prazo de 5 (cinco) dias, comprovar o recolhimento em dobro do preparo recursal referente à GRU, sob pena de deserção.

Valor devido: R$ 270,12 em dobro — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026.

O recolhimento deverá ser efetuado por meio da Guia de Recolhimento da União (GRU-Cobrança), disponível no sítio do STJ.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('desistencia_jg', 'Custas em dobro — FUNJUS', 'Desistência de J.G. — custas em dobro — Custas em dobro — FUNJUS (REsp)', 'Declarada a desistência da Justiça Gratuita, as custas processuais referentes à FUNJUS são exigidas em dobro, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para, no prazo de 5 (cinco) dias, comprovar o recolhimento em dobro do preparo recursal referente à FUNJUS, sob pena de deserção.

Valor devido: R$ 300,00 em dobro — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025.

O recolhimento deverá ser efetuado por meio da guia gerada no sítio deste Tribunal: https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('desistencia_jg', 'Custas em dobro — GRU e FUNJUS (ambas)', 'Desistência de J.G. — custas em dobro — Custas em dobro — GRU e FUNJUS (ambas) (REsp)', 'Declarada a desistência da Justiça Gratuita, as custas processuais são exigidas em dobro, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Intime-se a parte recorrente para, no prazo de 5 (cinco) dias, comprovar o recolhimento em dobro do preparo recursal, sob pena de deserção.

Valores devidos:
- R$ 540,24 (GRU em dobro) — custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B" da INSTRUÇÃO NORMATIVA STJ/GP Nº 13/2026;
- R$ 600,00 (FUNJUS em dobro) — custas devidas ao Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 22.956/2025.

O recolhimento da GRU deverá ser efetuado por meio da Guia de Recolhimento da União (GRU-Cobrança), disponível no sítio do STJ. O recolhimento da FUNJUS deverá ser efetuado por meio de guia gerada no sítio deste Tribunal: https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.', '{}'),
('apos_indeferimento_jg', 'Inércia — não manifestação após intimação', 'Após indeferimento de J.G. — Inércia — não manifestação após intimação (REsp)', 'Após o indeferimento do pedido de Justiça Gratuita e a intimação para comprovação do preparo recursal, a parte não se manifestou, não regularizando o recolhimento das custas no prazo assinado.

Trata-se, portanto, de hipótese de deserção, nos termos do artigo 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('apos_indeferimento_jg', 'Renúncia ao prazo', 'Após indeferimento de J.G. — Renúncia ao prazo (REsp)', 'Após o indeferimento do pedido de Justiça Gratuita e a intimação para comprovação do preparo recursal, a parte renunciou ao prazo, não regularizando o recolhimento das custas no prazo assinado.

Trata-se, portanto, de hipótese de deserção, nos termos do artigo 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}'),
('apos_indeferimento_jg', 'Decurso de prazo', 'Após indeferimento de J.G. — Decurso de prazo (REsp)', 'Após o indeferimento do pedido de Justiça Gratuita e a intimação para comprovação do preparo recursal, a parte decorreu o prazo, não regularizando o recolhimento das custas no prazo assinado.

Trata-se, portanto, de hipótese de deserção, nos termos do artigo 1.007, §§ 4º e 5º, do Código de Processo Civil, c/c a Súmula 187 do Superior Tribunal de Justiça.

Declaro a deserção do recurso.

Publique-se.

Intimem-se.', '{}')
ON CONFLICT (step_key, option_text) DO UPDATE SET
  title = EXCLUDED.title,
  template_text = EXCLUDED.template_text,
  source_files = EXCLUDED.source_files,
  updated_at = NOW();
