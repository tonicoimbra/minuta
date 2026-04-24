-- =============================================================================
-- CORRECOES FINAIS — Templates faltantes identificados no documento
-- correcoes\correcoes.docx e no arvore_final.md
-- Gerado em 2026-04-24
--
-- COBERTURA:
--   • comp_irr_gru / comp_irr_funjus (4 opcoes sem template em cada)
--   • desercao (2 saidas diretas)
--   • desercao_nd_1pgto / desercao_nd_2pgto (faltantes)
--   • desercao_gru_1pgto / desercao_gru_2pgto (faltantes)
--   • desercao_funjus_1pgto / desercao_funjus_2pgto (faltantes)
--   • desercao_gru / desercao_ambas / desercao_funjus (todas)
--   • desercao_intempestivo (1 faltante)
--   • desercao_jg (2 faltantes)
-- =============================================================================

-- =============================================================================
-- A.3  comp_irr_gru  —  4 opcoes sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Valor divergente / insuficiente (e val. falso)',
  'Complementacao §2º — valor divergente/insuficiente GRU (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o recolhimento das custas devidas ao Superior Tribunal de Justiça não restou comprovado, uma vez que o comprovante de pagamento juntado no [MOV_COMPROVANTE] refere-se a valor divergente/insuficiente do exigido.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, deverá ser recolhida a importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02/02/2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Sem número de processo / número incorreto',
  'Complementacao §7º — numero processo ausente/incorreto GRU (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que a guia GRU juntada no [MOV_GUIA] não contém o número do processo ou apresenta numeração incorreta, impossibilitando a vinculação eletrônica do recolhimento ao feito.

Sendo assim, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte guia GRU com a correta identificação processual, sob pena de deserção.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Pago a destempo - PAD (após o prazo recursal)',
  'Complementacao/Dobro — recolhimento intempestivo GRU (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o recolhimento da guia GRU foi efetuado após o prazo recursal (recolhimento intempestivo), conforme documento de [MOV_COMPROVANTE].

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, regularize o recolhimento em dobro da guia GRU, sob pena de deserção.

Para tanto, deverá ser recolhida a importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02/02/2026, totalizando o valor dobrado devido.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Guia pertencente a outro processo',
  'Complementacao §7º — guia GRU de outro processo (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que a guia GRU juntada no [MOV_GUIA] pertence a outro processo ou recurso, não sendo imputável ao presente feito.

Sendo assim, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte a guia GRU correspondente a este processo, sob pena de deserção.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- A.4  comp_irr_funjus  —  4 opcoes sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Valor divergente / insuficiente',
  'Complementacao §2º — valor divergente/insuficiente FUNJUS (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o recolhimento das custas devidas a este Tribunal de Justiça não restou comprovado, uma vez que o comprovante de pagamento juntado no [MOV_COMPROVANTE] refere-se a valor divergente/insuficiente do exigido.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, deverá ser recolhida a importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar a partir de 18/03/2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Sem número de processo / número incorreto',
  'Complementacao §7º — numero processo ausente/incorreto FUNJUS (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que a guia FUNJUS juntada no [MOV_GUIA] não contém o número do processo ou apresenta numeração incorreta, impossibilitando a vinculação eletrônica do recolhimento ao feito.

Sendo assim, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte guia FUNJUS com a correta identificação processual, sob pena de deserção.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Pago a destempo - PAD',
  'Complementacao/Dobro — recolhimento intempestivo FUNJUS (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o recolhimento da guia FUNJUS foi efetuado após o prazo recursal (recolhimento intempestivo), conforme documento de [MOV_COMPROVANTE].

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, regularize o recolhimento em dobro da guia FUNJUS, sob pena de deserção.

Para tanto, deverá ser recolhida a importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar a partir de 18/03/2026, totalizando o valor dobrado devido.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Guia pertencente a outro processo',
  'Complementacao §7º — guia FUNJUS de outro processo (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que a guia FUNJUS juntada no [MOV_GUIA] pertence a outro processo ou recurso, não sendo imputável ao presente feito.

Sendo assim, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte a guia FUNJUS correspondente a este processo, sob pena de deserção.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- B.3  dobro_nd  —  2 opcoes sem template (numero processo + numero unico)
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '2 guias com número de processo ausente ou incorreto',
  'Dobro §4º — 2 guias sem numero processo (REsp)',
  $BODY$
A parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso especial, visto que as guias GRU e FUNJUS juntadas não identificam o processo corretamente, inviabilizando a vinculação do recolhimento ao feito.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  'Número único divergente do processo ou da árvore processual',
  'Dobro §4º — numero unico divergente (REsp)',
  $BODY$
A parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso especial, visto que o número único constante nos documentos de preparo não corresponde ao processo nem à árvore processual examinada, impedindo a validação do recolhimento.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.1  desercao  —  2 saidas diretas sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao',
  'Juntou só as guias GRU e FUNJUS (sem comprovantes)',
  'Deserção — juntou apenas as guias (REsp)',
  $BODY$
A parte recorrente juntou apenas as guias de recolhimento GRU e FUNJUS, sem os respectivos comprovantes de pagamento, não regularizando o preparo no prazo assinado.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao',
  'Juntou só os comprovantes GRU e FUNJUS (sem guias)',
  'Deserção — juntou apenas os comprovantes (REsp)',
  $BODY$
A parte recorrente juntou apenas os comprovantes de pagamento GRU e FUNJUS, sem as respectivas guias de recolhimento, não regularizando o preparo no prazo assinado.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.2  desercao_nd_1pgto  —  2 faltantes (inercia + renuncia)
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Permaneceu inerte (certidão de decurso de prazo)',
  'Deserção §2º — inércia após intimação (REsp)',
  $BODY$
A parte recorrente foi intimada para complementar o preparo em valor simples (§2º) e não regularizou no prazo, permanecendo inerte. Certificado o decurso de prazo em [MOV_CERTIDAO], fica configurada a deserção.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que, quando a parte, após regularmente intimada, não comprova, no prazo assinado, o recolhimento do preparo na forma devida, o recurso especial é considerado deserto. Precedentes.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Renunciou expressamente ao prazo',
  'Deserção §2º — renúncia expressa ao prazo (REsp)',
  $BODY$
A parte recorrente foi intimada para complementar o preparo em valor simples (§2º) e renunciou expressamente ao prazo concedido, sem cumprir a determinação.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.3  desercao_nd_2pgto  —  3 faltantes (inercia + renuncia + comprovacao fora prazo)
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Permaneceu inerte (certidão de decurso de prazo)',
  'Deserção §4º — inércia após intimação para dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher o preparo em dobro (§4º) e não regularizou no prazo, permanecendo inerte. Certificado o decurso de prazo em [MOV_CERTIDAO], fica configurada a deserção.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que, quando a parte, após regularmente intimada, não comprova, no prazo assinado, o recolhimento do preparo na forma devida, o recurso especial é considerado deserto. Precedentes.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Renunciou expressamente ao prazo',
  'Deserção §4º — renúncia expressa ao prazo de dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher o preparo em dobro (§4º) e renunciou expressamente ao prazo concedido, sem cumprir a determinação.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Comprovação do dobro apresentada fora do prazo legal',
  'Deserção §4º — comprovação do dobro intempestiva (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher o preparo em dobro (§4º). A comprovação do recolhimento em dobro foi apresentada fora do prazo legal concedido na intimação, configurando deserção.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/607949 - AR - TR - DESERTO - 1.007 §4º - Recurso Especial - Comprovação fora do prazo legal.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.4  desercao_gru_1pgto  —  2 faltantes (agendamento + numero processo)
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_1pgto',
  'Agendamento bancário',
  'Deserção §2º — agendamento não efetivado na GRU (REsp)',
  $BODY$
A parte recorrente foi intimada para complementar a GRU (§2º) e não regularizou no prazo. O comprovante apresentado corresponde a agendamento bancário não efetivado, vício que não comprova o preparo após a intimação.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_1pgto',
  'Número de processo ausente ou incorreto',
  'Deserção §2º — número processo ausente/incorreto na GRU (REsp)',
  $BODY$
A parte recorrente foi intimada para complementar a GRU (§2º) e não regularizou no prazo. A guia GRU apresentada continua sem identificação processual correta após a intimação.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596186 - AR - TR - DESERTO - 1.007 §2º - ausência de correspondência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.5  desercao_gru_2pgto  —  5 opcoes TODAS sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_2pgto',
  'Agendamento bancário',
  'Deserção §4º — agendamento não efetivado na GRU após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a GRU em dobro (§4º) e não regularizou no prazo. O comprovante GRU corresponde a agendamento não efetivado após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_2pgto',
  'Sem código de barras legível',
  'Deserção §4º — código de barras ilegível na GRU após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a GRU em dobro (§4º) e não regularizou no prazo. O comprovante GRU continua sem código de barras visível e legível após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_2pgto',
  'Divergência de código de barras',
  'Deserção §4º — divergência código de barras GRU após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a GRU em dobro (§4º) e não regularizou no prazo. O código de barras da guia GRU não corresponde ao comprovante apresentado após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596186 - AR - TR - DESERTO - 1.007 §2º - ausência de correspondência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_2pgto',
  'Número de processo ausente ou incorreto',
  'Deserção §4º — número processo ausente/incorreto na GRU após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a GRU em dobro (§4º) e não regularizou no prazo. A guia GRU continua sem identificação processual correta após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596186 - AR - TR - DESERTO - 1.007 §2º - ausência de correspondência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_2pgto',
  'Documentos não localizados (N/D)',
  'Deserção §4º — documentos GRU não localizados após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a GRU em dobro (§4º) e não regularizou no prazo. Documentos GRU não localizados após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.6  desercao_funjus_1pgto  —  2 faltantes (sem cod barras + divergencia)
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_1pgto',
  'Sem código de barras legível',
  'Deserção §2º — código de barras ilegível na FUNJUS (REsp)',
  $BODY$
A parte recorrente foi intimada para complementar a FUNJUS (§2º) e não regularizou no prazo. O comprovante FUNJUS continua sem código de barras visível e legível, inviabilizando a conferência.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_1pgto',
  'Divergência de código de barras',
  'Deserção §2º — divergência código de barras FUNJUS (REsp)',
  $BODY$
A parte recorrente foi intimada para complementar a FUNJUS (§2º) e não regularizou no prazo. O código de barras da guia FUNJUS não corresponde ao comprovante apresentado após a intimação.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.7  desercao_funjus_2pgto  —  5 opcoes TODAS sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_2pgto',
  'Agendamento bancário',
  'Deserção §4º — agendamento não efetivado na FUNJUS após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a FUNJUS em dobro (§4º) e não regularizou no prazo. O comprovante FUNJUS corresponde a agendamento não efetivado após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_2pgto',
  'Sem código de barras legível',
  'Deserção §4º — código de barras ilegível na FUNJUS após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a FUNJUS em dobro (§4º) e não regularizou no prazo. O comprovante FUNJUS continua sem código de barras visível e legível após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_2pgto',
  'Divergência de código de barras',
  'Deserção §4º — divergência código de barras FUNJUS após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a FUNJUS em dobro (§4º) e não regularizou no prazo. O código de barras da guia FUNJUS não corresponde ao comprovante apresentado após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_2pgto',
  'Número de processo ausente ou incorreto',
  'Deserção §4º — número processo ausente/incorreto na FUNJUS após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a FUNJUS em dobro (§4º) e não regularizou no prazo. A guia FUNJUS continua sem identificação processual correta após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_2pgto',
  'Documentos não localizados (N/D)',
  'Deserção §4º — documentos FUNJUS não localizados após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para recolher a FUNJUS em dobro (§4º) e não regularizou no prazo. Documentos FUNJUS não localizados após a intimação para dobro.

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.8  desercao_intempestivo  —  1 faltante
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_intempestivo',
  'Pagamento realizado fora do prazo recursal',
  'Deserção — pagamento intempestivo (REsp)',
  $BODY$
O recolhimento do preparo foi efetuado após o término do prazo recursal, conforme documento de [MOV_COMPROVANTE], configurando intempestividade.

Sendo assim, nos termos do artigo 1.003, § 5º, c/c artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção/inadmissão do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/607949 - AR - TR - DESERTO - 1.007 §4º - Recurso Especial - Comprovação fora do prazo legal.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.9  desercao_jg  —  2 faltantes (inercia + renuncia)
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_jg',
  'Permaneceu inerte (certidão de decurso de prazo)',
  'Deserção — JG indeferida + inércia (REsp)',
  $BODY$
O pedido de justiça gratuita foi indeferido; após intimação para recolher o preparo simples, a parte não se manifestou, permanecendo inerte. Certificado o decurso de prazo em [MOV_CERTIDAO].

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/600045 - AR - TR - DESERTO - Indeferimento JG - preparo irregular - sem código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_jg',
  'Renunciou ao prazo expressamente (petição de renúncia)',
  'Deserção — JG indeferida + renúncia ao prazo (REsp)',
  $BODY$
O pedido de justiça gratuita foi indeferido; após intimação para recolher o preparo simples, a parte recorrente renunciou expressamente ao prazo sem cumprir a determinação.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/600045 - AR - TR - DESERTO - Indeferimento JG - preparo irregular - sem código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.10  desercao_gru  —  5 opcoes TODAS sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru',
  'Agendamento não efetivado',
  'Deserção — agendamento não efetivado na GRU (REsp)',
  $BODY$
O comprovante da guia GRU refere-se a agendamento bancário que não foi efetivado, o que não constitui prova de quitação. Comprovante de agendamento não sana o preparo.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru',
  'Valor divergente (insuficiente)',
  'Deserção — valor divergente na GRU (REsp)',
  $BODY$
O comprovante da guia GRU apresenta valor divergente do exigido, não tendo sido efetuada a complementação no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru',
  'Sem número de processo / número incorreto',
  'Deserção — número processo ausente/incorreto na GRU (REsp)',
  $BODY$
A guia GRU não identifica o processo ou apresenta numeração incorreta, não tendo sido regularizada no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru',
  'Não localizada / não disponível (N/D)',
  'Deserção — GRU não localizada (REsp)',
  $BODY$
Ausente o comprovante de quitação da guia GRU, não tendo sido regularizado o preparo no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por falta de preparo (Súmula 187/STJ).

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru',
  'Guia pertencente a outro processo',
  'Deserção — guia GRU de outro processo (REsp)',
  $BODY$
A guia GRU apresentada pertence a outro processo, não tendo sido juntada a guia correspondente a este feito no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.11  desercao_ambas  —  5 opcoes TODAS sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_ambas',
  'Agendamentos não efetivados',
  'Deserção — agendamentos não efetivados em ambas (REsp)',
  $BODY$
Os comprovantes das guias GRU e FUNJUS referem-se a agendamentos bancários não efetivados. Comprovante de agendamento não constitui prova de quitação.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_ambas',
  'Valores divergentes',
  'Deserção — valores divergentes em ambas (REsp)',
  $BODY$
As guias GRU e FUNJUS apresentam valores divergentes dos exigidos, não tendo sido efetuada a regularização no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_ambas',
  'Sem número de processo / número incorreto',
  'Deserção — número processo ausente/incorreto em ambas (REsp)',
  $BODY$
As guias GRU e FUNJUS não identificam o processo corretamente, não tendo sido regularizadas no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_ambas',
  'Não localizadas / não disponíveis (N/D)',
  'Deserção — ambas as guias não localizadas (REsp)',
  $BODY$
Ausentes os comprovantes de quitação das guias GRU e FUNJUS, não tendo sido regularizado o preparo no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por falta de preparo (Súmula 187/STJ).

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_ambas',
  'Guias pertencentes a outros processos',
  'Deserção — ambas as guias de outros processos (REsp)',
  $BODY$
As guias GRU e FUNJUS apresentadas pertencem a outros processos, não tendo sido juntadas as guias correspondentes a este feito no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.12  desercao_funjus  —  5 opcoes TODAS sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus',
  'Agendamento não efetivado',
  'Deserção — agendamento não efetivado na FUNJUS (REsp)',
  $BODY$
O comprovante da guia FUNJUS refere-se a agendamento bancário não efetivado. Comprovante de agendamento não constitui prova de quitação.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus',
  'Valor divergente (insuficiente)',
  'Deserção — valor divergente na FUNJUS (REsp)',
  $BODY$
O comprovante da guia FUNJUS apresenta valor divergente do exigido, não tendo sido efetuada a regularização no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus',
  'Sem número de processo / número incorreto',
  'Deserção — número processo ausente/incorreto na FUNJUS (REsp)',
  $BODY$
A guia FUNJUS não identifica o processo ou apresenta numeração incorreta, não tendo sido regularizada no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus',
  'Não localizada / não disponível (N/D)',
  'Deserção — FUNJUS não localizada (REsp)',
  $BODY$
Ausente o comprovante de quitação da guia FUNJUS, não tendo sido regularizado o preparo no prazo assinado.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por falta de preparo (Súmula 187/STJ).

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus',
  'Justaposição de guia FUNJUS',
  'Deserção — justaposicao de guia FUNJUS (REsp)',
  $BODY$
Verificada a justaposição de guia FUNJUS nos autos: o comprovante de recolhimento apresentado é o mesmo já utilizado em outro processo ou recurso anterior, não sendo hábil a comprovar o recolhimento neste feito. Trata-se de vício insanável.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- B.1  dobro  —  opcao direta sem template: desistencia de J.G.
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'JG pedida no ato da interposição - depois desistiu ou renunciou ao pedido',
  'Dobro §4º — desistencia/renuncia de JG no ato da interposicao (REsp)',
  $BODY$
A parte formulou pedido de justiça gratuita no ato da interposição do recurso especial, mas depois desistiu ou renunciou ao pedido; como as custas não foram recolhidas no ato da interposição, aplica-se o recolhimento em dobro (art. 1.007, §4°, do CPC).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- B.2  dobro_falta_guia  —  5 opcoes TODAS sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_guia',
  '2 agendamentos / em análise',
  'Dobro §4º — 2 agendamentos bancarios sem guias (REsp)',
  $BODY$
Os documentos apresentados para GRU e FUNJUS referem-se a agendamentos bancários não efetivados, o que não constitui comprovação válida do preparo.

Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro de GRU e FUNJUS com comprovantes de débito efetivo, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_guia',
  '2 valores divergentes / insuficientes',
  'Dobro §4º — 2 valores divergentes sem guias (REsp)',
  $BODY$
As guias GRU e FUNJUS apresentam valores inferiores aos exigidos.

Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro dos valores corretos de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_guia',
  '2 guias sem número / número incorreto de processo',
  'Dobro §4º — 2 guias sem numero de processo (REsp)',
  $BODY$
As guias GRU e FUNJUS não identificam o número do processo ou apresentam numeração incorreta.

Intime-se para, no prazo de 5 (cinco) dias úteis, recolher em dobro GRU e FUNJUS com correta identificação processual, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_guia',
  '2 não localizadas / não disponíveis (N/D)',
  'Dobro §4º — 2 guias nao localizadas (REsp)',
  $BODY$
Não localizados nos autos comprovantes de recolhimento das guias GRU e FUNJUS.

Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_guia',
  '2 guias pertencentes a outros processos',
  'Dobro §4º — 2 guias de outros processos (REsp)',
  $BODY$
As guias GRU e FUNJUS juntadas pertencem a outros processos ou recursos, não sendo imputáveis ao presente feito.

Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro das guias GRU e FUNJUS correspondentes a este processo, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- B.2  dobro_falta_comprovante  —  5 opcoes TODAS sem template
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_comprovante',
  '2 agendamentos / em análise',
  'Dobro §4º — 2 comprovantes de agendamento sem guias (REsp)',
  $BODY$
Os comprovantes das guias GRU e FUNJUS correspondem a agendamentos não efetivados. Agendamento bancário não constitui prova de quitação.

Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovantes de débito definitivo em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_comprovante',
  '2 valores divergentes / insuficientes',
  'Dobro §4º — 2 comprovantes com valores divergentes (REsp)',
  $BODY$
Os comprovantes das guias GRU e FUNJUS registram valores inferiores aos devidos.

Intime-se para, no prazo de 5 (cinco) dias úteis, recolher em dobro os valores corretos de ambas as guias e apresentar os comprovantes correspondentes, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_comprovante',
  '2 guias sem número / número incorreto de processo',
  'Dobro §4º — 2 comprovantes sem numero de processo (REsp)',
  $BODY$
Os comprovantes das guias GRU e FUNJUS não identificam o processo corretamente.

Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovantes do recolhimento em dobro com a correta identificação processual, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_comprovante',
  '2 não localizados / não disponíveis (N/D)',
  'Dobro §4º — 2 comprovantes nao localizados (REsp)',
  $BODY$
Ausentes os comprovantes de quitação das guias GRU e FUNJUS.

Intime-se para, no prazo de 5 (cinco) dias úteis, juntar os comprovantes do recolhimento em dobro de ambas as guias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_falta_comprovante',
  '2 pertencentes a outros processos',
  'Dobro §4º — 2 comprovantes de outros processos (REsp)',
  $BODY$
Os comprovantes juntados referem-se a guias de outros processos.

Intime-se para, no prazo de 5 (cinco) dias úteis, apresentar comprovantes do recolhimento em dobro das guias GRU e FUNJUS deste feito, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- B.3  dobro_decreto  —  1 opcao sem template (N/D + Decreto)
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Documentos de preparo não localizados (N/D) + Decreto não apresentado',
  'Dobro §4º + Decreto — docs N/D (REsp)',
  $BODY$
Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN, meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte recorrente, nos termos dos artigos 1.003, § 6º c/c 224, §1º, ambos do Código de Processo Civil, para, em 5 (cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico, a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser reconhecida a intempestividade do recurso.

Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso (documentos não localizados nos autos), a parte recorrente deverá realizar, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo recursal.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY['minutas/615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- C.14  Templates restantes identificados pelo script check_coverage.cjs
-- =============================================================================

-- ------------------------------------------------------------------------------
-- inicio — 3 opcoes terminais sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'inicio',
  'Agravo em REsp (AREsp)',
  'AREsp — sem exigencia de preparo',
  $BODY$
Agravo em Recurso Especial (AREsp). Não há exigência de preparo recursal para o AREsp (art. 1.042, §2°, do CPC). Recurso regular quanto ao preparo.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'inicio',
  'Agravo Interno (AgInt)',
  'AgInt — sem exigencia de preparo',
  $BODY$
Agravo Interno/Regimental. O AgInt não está sujeito a preparo recursal. Recurso regular quanto ao preparo.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'inicio',
  'Embargos de Declaração (EDcl)',
  'EDcl — sem exigencia de preparo',
  $BODY$
Embargos de Declaração. Os EDcl não se sujeitam a preparo (art. 1.023, do CPC). Recurso regular quanto ao preparo.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- preparo_simples_jg — 2 opcoes sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'preparo_simples_jg',
  'JG alegada - concessão não localizada nos autos',
  'Preparo simples — JG nao localizada (REsp)',
  $BODY$
A parte alegou ser beneficiária da justiça gratuita, mas o deferimento não foi localizado nos autos.

Diante disso, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, recolha o preparo em valor simples, sob pena de deserção.

Para tanto, deverá ser recolhida a importância de:
- R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'preparo_simples_jg',
  'JG alegada - ato incompatível (pagamento anterior no recurso originário)',
  'Preparo simples — JG ato incompativel (REsp)',
  $BODY$
A parte alegou justiça gratuita, mas praticou ato incompatível ao pagar o preparo do recurso originário, de modo que não lhe assiste o benefício.

Diante disso, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, recolha o preparo em valor simples, sob pena de deserção.

Para tanto, deverá ser recolhida a importância de:
- R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- comp_irr_gru — 2 opcoes sem template (alias antigo tambem inexistente)
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Agendamento / em análise (transação não efetivada)',
  'Complementacao §7º — agendamento bancario GRU (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o comprovante da guia GRU juntado nos autos refere-se a agendamento bancário ainda não efetivado (transação pendente/em análise). Comprovante de agendamento não constitui prova de recolhimento efetivo.

Sendo assim, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, apresente comprovante de débito definitivo da guia GRU, sob pena de deserção.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Número único divergente do processo ou da árvore processual',
  'Complementacao §7º — numero unico divergente GRU (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o número único constante na guia GRU juntada nos autos não corresponde ao processo nem à árvore processual examinada, impedindo a vinculação segura do recolhimento ao feito.

Sendo assim, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte guia GRU com a correta identificação processual, sob pena de deserção.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- comp_irr_funjus — 1 opcao sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Número único divergente do processo ou da árvore processual',
  'Complementacao §7º — numero unico divergente FUNJUS (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o número único constante na guia FUNJUS juntada nos autos não corresponde ao processo nem à árvore processual examinada, impedindo a vinculação segura do recolhimento ao feito.

Sendo assim, nos termos do artigo 1.007, § 7º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte guia FUNJUS com a correta identificação processual, sob pena de deserção.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- desercao_nd_1pgto — 2 opcoes sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Agendamento bancário',
  'Deserção §2º — agendamento bancario (ambas) (REsp)',
  $BODY$
A parte foi intimada para complementar o preparo em valor simples (§2º), mas apresentou comprovantes de agendamento bancário não efetivado para as guias GRU e FUNJUS, o que não comprova o recolhimento.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Sem código de barras legível',
  'Deserção §2º — sem codigo de barras (ambas) (REsp)',
  $BODY$
A parte foi intimada para complementar o preparo em valor simples (§2º), mas apresentou comprovantes das guias GRU e FUNJUS sem código de barras visível e legível, impossibilitando a conferência do recolhimento.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- desercao_gru_1pgto — 1 opcao sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_1pgto',
  'Divergência de código de barras',
  'Deserção §2º — divergencia codigo barras GRU (REsp)',
  $BODY$
A parte foi intimada para complementar a GRU (§2º), mas apresentou guia e comprovante com divergência no código de barras, inviabilizando a conferência do recolhimento.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- desercao_funjus_1pgto — 1 opcao sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_1pgto',
  'Número de processo ausente ou incorreto',
  'Deserção §2º — numero processo FUNJUS (REsp)',
  $BODY$
A parte foi intimada para complementar a FUNJUS (§2º), mas apresentou guia sem identificação processual correta, inviabilizando a vinculação do recolhimento ao feito.

Sendo assim, nos termos do artigo 1.007, § 4º-5º, do Código de Processo Civil, declaro a deserção do recurso especial por irregularidade insanável no preparo.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- dobro_nd — 1 opcao sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '3 guias ausentes / incorretas (GRU + FUNJUS + porte de remessa)',
  'Dobro §4º — 3 guias ausentes processo fisico (REsp)',
  $BODY$
Tratando-se de processo físico não digitalizado, verificada a ausência ou irregularidade das guias de recolhimento (GRU, FUNJUS e porte de remessa e retorno).

Intime-se para, no prazo de 5 (cinco) dias úteis, efetuar o recolhimento em dobro de todas as guias necessárias, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ------------------------------------------------------------------------------
-- dobro_proc — 1 opcao sem template
-- ------------------------------------------------------------------------------

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_proc',
  'Procuração e preparo em dobro - ambos ausentes',
  'Dobro §4º + procuracao — ambos ausentes (REsp)',
  $BODY$
A parte não regularizou a representação processual e não comprovou o recolhimento do preparo recursal no ato da interposição.

Intime-se para, no prazo de 5 (cinco) dias úteis, regularizar a procuração e efetuar o recolhimento em dobro do preparo, nos termos do art. 1.007, §4°, do CPC, sob pena de não conhecimento do recurso.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível.

Diligências necessárias.
$BODY$,
  ARRAY[]::text[]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();
