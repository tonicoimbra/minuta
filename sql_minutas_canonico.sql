-- =============================================================================
-- SQL CAN?NICO - MINUTA_TEMPLATES
-- Fonte ?nica: refer?ncias existentes em minutas/
-- Regras: deduplicado por (step_key, option_text), UPSERT DO UPDATE, sem source ?rf?o
-- =============================================================================

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + comprovante de agendamento bancário',
  'Complementação — comprovante de agendamento bancário FUNJUS (REsp)',
  $BODY$

O recurso não foi devidamente preparado, visto que o pagamento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, já que o comprovante de agendamento bancário juntado no [MOV_COMPROVANTE] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no [MOV_GUIA], no qual conste o código de barras de forma visível e legível, “(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento.” (AREsp 2062229-SP /RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22 /03 /2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

$BODY$,
  ARRAY['minutas/Caso 05.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + comprovante não localizado (N/D)',
  'Complementação — FUNJUS sem comprovação de pagamento (REsp)',
  $BODY$

Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.
Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www. tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.
Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

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
  'comp_funjus',
  'Guia FUNJUS juntada + comprovante sem codigo de barras legivel',
  'Complementacao paragrafo2 - comprovante FUNJUS sem codigo de barras (REsp)',
  $BODY$

O presente recurso especial não foi devidamente preparado, visto que no documento juntado no mov. XX (X) como comprovante de pagamento não consta o código de barras.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. XX (X), em que conste o respectivo código de barras.

Caso não seja possível apresentação do referido documento, deverá ser realizado o recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596757 - AR - TR - Complementação preparo - FUNJUS - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + comprovante sem codigo de barras legivel [RE]',
  'Complementacao paragrafo2 - comprovante FUNJUS sem codigo de barras (RE)',
  $BODY$

O presente recurso extraordinário não foi devidamente preparado, visto que no documento juntado no mov. XX (X) como comprovante de pagamento não consta o código de barras.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. XX (X), em que conste o respectivo código de barras.

Caso não seja possível apresentação do referido documento, deverá ser realizado o recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596757 - AR - TR - Complementação preparo - FUNJUS - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + divergencia no codigo de barras',
  'Complementacao paragrafo2 - divergencia codigo de barras FUNJUS (REsp)',
  $BODY$

O presente recurso especial não foi devidamente preparado, visto que o recolhimento das custas devidas a este Tribunal de Justiça não restou comprovado, pois não há correspondência entre o código de barras constante na guia de recolhimento de e o do comprovante de pagamento (mov. x.x, páginas xx e xx).

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "(...) a falta de correspondência entre o código de barras constante do comprovante de pagamento e o da guia de recolhimento do preparo implica pena de deserção, ante a irregularidade no pagamento. Incidência da Súmula 187 do STJ." (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021, DJe de 2/12/2021.)

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. XX.

Caso não seja possível apresentação do referido documento, deverá ser realizado o recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596347 - AR - TR - Complementação preparo - FUNJUS - Códigos de barras não correspondem - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + divergencia no codigo de barras [RE]',
  'Complementacao paragrafo2 - divergencia codigo de barras FUNJUS (RE)',
  $BODY$

O presente recurso extraordinário não foi devidamente preparado, visto que o recolhimento das custas devidas a este Tribunal de Justiça não restou comprovado, pois não há correspondência entre o código de barras constante na guia de recolhimento de e o do comprovante de pagamento (mov. x.x, páginas xx e xx).

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "(...) a falta de correspondência entre o código de barras constante do comprovante de pagamento e o da guia de recolhimento do preparo implica pena de deserção, ante a irregularidade no pagamento. Incidência da Súmula 187 do STJ." (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021, DJe de 2/12/2021.)

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. XX.

Caso não seja possível apresentação do referido documento, deverá ser realizado o recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596347 - AR - TR - Complementação preparo - FUNJUS - Códigos de barras não correspondem - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + divergência no código de barras',
  'Complementação §2º — divergência no código de barras da FUNJUS (REsp)',
  $BODY$

O presente recurso especial não foi devidamente preparado, visto que o recolhimento das custas devidas a este Tribunal de Justiça não restou comprovado, pois não há correspondência entre o código de barras constante na guia de recolhimento de [MOV_GUIA] e o do comprovante de pagamento de [MOV_COMPROVANTE].
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "(...) a falta de correspondência entre o código de barras constante do comprovante de pagamento e o da guia de recolhimento do preparo implica pena de deserção, ante a irregularidade no pagamento. Incidência da Súmula 187 do STJ.". (AgInt no AREsp n. 1.894.595/RJ, relator Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021, DJe de 2/12/2021.)
Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.
Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de [MOV_GUIA].
Caso não seja possível apresentação do referido documento, deverá ser realizado novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.
Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

$BODY$,
  ARRAY['minutas/Caso 07.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Juntou so a guia FUNJUS (sem comprovante de pagamento) [RE]',
  'Complementacao paragrafo2 - guia FUNJUS juntada sem comprovante (RE)',
  $BODY$

O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de recolhimento de mov. xx, sem o respectivo comprovante de pagamento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no mov. xxx, no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, deverá ser realizado o recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Juntou so o comprovante FUNJUS (sem a guia de recolhimento)',
  'Complementacao paragrafo2 - comprovante FUNJUS juntado sem guia (REsp)',
  $BODY$

O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou tão somente o comprovante de pagamento, sem a respectiva guia de recolhimento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar a guia de recolhimento referente ao comprovante de pagamento juntado, devidamente preenchida e apta à conferência do efetivo recolhimento.

Caso não seja possível apresentar referido documento, deverá ser realizado o recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Juntou so o comprovante FUNJUS (sem a guia de recolhimento) [RE]',
  'Complementacao paragrafo2 - comprovante FUNJUS juntado sem guia (RE)',
  $BODY$

O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou tão somente o comprovante de pagamento, sem a respectiva guia de recolhimento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar a guia de recolhimento referente ao comprovante de pagamento juntado, devidamente preenchida e apta à conferência do efetivo recolhimento.

Caso não seja possível apresentar referido documento, deverá ser realizado o recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Juntou só a guia FUNJUS (sem comprovante de pagamento)',
  'Complementação — guia FUNJUS juntada sem comprovante (REsp)',
  $BODY$

O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de recolhimento de [MOV_GUIA], sem o respectivo comprovante de pagamento.
Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.
Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no [MOV_GUIA], no qual conste o código de barras de forma visível e legível, “ (...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento.” (AREsp 2062229-SP /RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22 /03 /2022).
Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento da importância de R$ 66,85 (sessenta e seis reais e oitenta e cinco centavos) ao Fundo da Justiça – FUNJUS, referente às custas do Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 21.868, de 18/12/2023.

$BODY$,
  ARRAY['minutas/Caso 02.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Não juntou nem a guia FUNJUS nem o comprovante de pagamento',
  'Complementação — FUNJUS sem guia e sem comprovante (REsp)',
  $BODY$

Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.
Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www. tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025.
Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.

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
  'comp_gru',
  'Guia GRU juntada + comprovante não localizado (N/D)',
  'Complementação — GRU sem comprovação de pagamento (REsp)',
  $BODY$

Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso especial, sob pena de deserção.

Para tanto, deve ser recolhida a importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026 .

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá

providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o

código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio

da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta

disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por

e-mail,

que conterá todas as informações do pagamento, inclusive com os dados de

identificação do contribuinte, número único do processo, bem como o Número de Referência,

código que identifica o recolhimento.

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
  'comp_gru',
  'Guia GRU juntada + comprovante sem codigo de barras legivel',
  'Complementacao paragrafo2 - comprovante GRU sem codigo de barras (REsp)',
  $BODY$

O presente recurso especial não foi devidamente preparado, visto que no comprovante de pagamento juntado no mov. X.X (X) não consta o código de barras.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. X.X (X), em que conste o respectivo código de barras.

Caso não seja possível apresentação do referido documento, deverá ser realizado novo recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02/02/2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596798 - AR - TR - Complementação preparo - GRU - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Guia GRU juntada + comprovante sem codigo de barras legivel [RE]',
  'Complementacao paragrafo2 - comprovante GRU sem codigo de barras (RE)',
  $BODY$

O presente recurso extraordinário não foi devidamente preparado, visto que no comprovante de pagamento juntado no mov. X.X (X) não consta o código de barras.

A jurisprudência do Supremo Tribunal Federal é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de recolhimento de mov. X.X (X), em que conste o respectivo código de barras.

Caso não seja possível apresentação do referido documento, deverá ser realizado novo recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), por meio de guia GRU Cobrança, referente ao recolhimento das custas do Supremo Tribunal Federal, conforme Resolução/STF nº 875, de 23 de junho de 2025, que entrou em vigor no dia 1º de julho do corrente ano.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596798 - AR - TR - Complementação preparo - GRU - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Guia GRU juntada + divergencia no codigo de barras',
  'Complementacao paragrafo2 - divergencia codigo de barras GRU (REsp)',
  $BODY$

O presente recurso especial não foi devidamente preparado, visto que o recolhimento ao Superior Tribunal de Justiça não restou comprovado, já que não há correspondência entre o código de barras constante na guia de recolhimento de mov. xx e o do comprovante de pagamento de mov. xx.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "A falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento impede a aferição da regularidade do preparo, tornando o recurso deserto." (AgInt nos EDcl no AREsp n. 2.664.415/SP, relatora Ministra Daniela Teixeira, Terceira Turma, julgado em 5/5/2025, DJEN de 8/5/2025).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte aos autos o comprovante de pagamento referente à guia de recolhimento de mov. xx.

Caso não seja possível a apresentação do comprovante de pagamento, realizar novo recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/628802 - AR-TR- Complementação do preparo - guia GRU - divergência código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Guia GRU juntada + divergencia no codigo de barras [RE]',
  'Complementacao paragrafo2 - divergencia codigo de barras GRU (RE)',
  $BODY$

O presente recurso extraordinário não foi devidamente preparado, visto que o recolhimento ao Supremo Tribunal Federal não restou comprovado, já que não há correspondência entre o código de barras constante na guia de recolhimento de mov. xx e o do comprovante de pagamento de mov. xx.

A jurisprudência do Supremo Tribunal Federal é firme no sentido de que "A falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento impede a aferição da regularidade do preparo, tornando o recurso deserto." (AgInt nos EDcl no AREsp n. 2.664.415/SP, relatora Ministra Daniela Teixeira, Terceira Turma, julgado em 5/5/2025, DJEN de 8/5/2025).

Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, junte aos autos o comprovante de pagamento referente à guia de recolhimento de mov. xx.

Caso não seja possível a apresentação do comprovante de pagamento, realizar novo recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), por meio de guia GRU Cobrança, referente ao recolhimento das custas do Supremo Tribunal Federal, conforme Resolução/STF nº 875, de 23 de junho de 2025, que entrou em vigor no dia 1º de julho do corrente ano.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/628802 - AR-TR- Complementação do preparo - guia GRU - divergência código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Juntou so a guia GRU (sem comprovante de pagamento)',
  'Complementacao paragrafo2 - guia GRU juntada sem comprovante (REsp)',
  $BODY$

Verifica-se que o recurso especial não foi devidamente preparado, pois a parte não comprovou o efetivo recolhimento das custas devidas ao Superior Tribunal de Justiça, uma vez que juntou tão somente a guia de recolhimento (mov. x.x), sem o respectivo comprovante de pagamento.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente para que apresente, no prazo de 5 (cinco) dias, sob pena de deserção, comprovante de pagamento referente à guia de recolhimento de mov. x.x, página x, no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02/02/2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Juntou so o comprovante GRU (sem a guia de recolhimento)',
  'Complementacao paragrafo2 - comprovante GRU juntado sem guia (REsp)',
  $BODY$

Verifica-se que o recurso especial não foi devidamente preparado, pois a parte não comprovou o efetivo recolhimento das custas devidas ao Superior Tribunal de Justiça, uma vez que juntou tão somente o comprovante de pagamento (mov. x.x), sem a respectiva guia de recolhimento.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente para que apresente, no prazo de 5 (cinco) dias, sob pena de deserção, a guia de recolhimento referente ao comprovante de pagamento de mov. x.x, página x, devidamente preenchida e apta à conferência do efetivo recolhimento.

Caso não seja possível apresentar referido documento, a parte deverá realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02/02/2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Juntou so o comprovante GRU (sem a guia de recolhimento) [RE]',
  'Complementacao paragrafo2 - comprovante GRU juntado sem guia (RE)',
  $BODY$

Verifica-se que o recurso extraordinário não foi devidamente preparado, pois a parte não comprovou o efetivo recolhimento das custas devidas ao Supremo Tribunal Federal, uma vez que juntou tão somente o comprovante de pagamento (mov. x.x), sem a respectiva guia de recolhimento.

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte recorrente para que apresente, no prazo de 5 (cinco) dias, sob pena de deserção, a guia de recolhimento referente ao comprovante de pagamento de mov. x.x, página x, devidamente preenchida e apta à conferência do efetivo recolhimento.

Caso não seja possível apresentar referido documento, a parte deverá realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), por meio de guia GRU Cobrança, referente ao recolhimento das custas do Supremo Tribunal Federal, conforme Resolução/STF nº 875, de 23 de junho de 2025, que entrou em vigor no dia 1º de julho do corrente ano.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Juntou só a guia GRU (sem comprovante de pagamento) [RE]',
  'Complementação — guia GRU juntada sem comprovante (RE)',
  $BODY$

Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 05 (cinco) dias, comprove nos autos a complementação do preparo do recurso extraordinário, sob pena de deserção.

Para tanto, deve ser recolhida a importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), por meio de guia GRU Cobrança, referente ao recolhimento das custas do Supremo Tribunal Federal, conforme Resolução/STF nº 875, de 23 de junho de 2025, que entrou em vigor no dia 1º de julho do corrente ano.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596359 - AR - TR - Complementação preparo - GRU - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Não juntou nem a guia GRU nem o comprovante de pagamento',
  'Complementação — GRU sem guia e sem comprovante (REsp)',
  $BODY$

Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso especial, sob pena de deserção.

Para tanto, deve ser recolhida a importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026 .

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá

providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o

código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio

da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta

disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por

e-mail,

que conterá todas as informações do pagamento, inclusive com os dados de

identificação do contribuinte, número único do processo, bem como o Número de Referência,

código que identifica o recolhimento.

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
  'desercao_decreto',
  'Decreto + complementação (§2º) — permaneceu inerte',
  'Deserção — inércia após intimação para Decreto + complementação §2º (REsp)',
  $BODY$

Após a interposição do recurso, percebeu-se a necessidade de intimação da parte recorrente para comprovar a ocorrência do feriado local, ou a determinação de suspensão do prazo no Tribunal, por meio de documentação idônea, na forma do disposto no artigo 1.003, § 6º c/c o artigo 224, §1º, ambos do Código de Processo Civil, bem como para regularizar o preparo recursal (despacho de [MOV_DESPACHO]).
Todavia, a determinação não foi cumprida, visto que devidamente intimada, a parte permaneceu inerte (decurso de prazo de [MOV_CERTIDAO]), o que implica reconhecer a intempestividade do recurso, assim como, reconhecer a sua deserção, falhas que conduzem a sua inadmissão.
Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. RECURSO ESPECIAL. INTEMPESTIVIDADE. AUSÊNCIA DE COMPROVAÇÃO DA SUSPENSÃO DO EXPEDIENTE FORENSE, POR DOCUMENTO IDÔNEO, APÓS INTIMAÇÃO PARA FAZÊ-LO.
1. É intempestivo o recurso especial em que a parte, após ser intimada para comprovar ocorrência de feriado local, recesso, paralisação ou interrupção de expediente forense (art. 1.030, §6º, do CPC), deixa de demonstrar por meio de documento oficial ou certidão expedida pelo Tribunal de origem o alegado, não bastando a mera menção à suspensão de prazos nas razões recursais, tampouco a apresentação de documento não dotado de fé pública.
2. Agravo interno improvido."
(AgInt no AREsp n. 2.714.186/SP, relator Ministro Humberto Martins, Terceira Turma, julgado em 9/6/2025, DJEN de 12/6/2025.)
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PREPARO. INSUFICIÊNCIA. INTIMAÇÃO PARA PAGAMENTO EM DOBRO DO PREPARO. DESCUMPRIMENTO. RECONHECIMENTO DA DESERÇÃO. SÚMULA N. 187/STJ. INCIDÊNCIA.
1. A parte mesmo após a intimação para sanar o vício apontado (artigo 1.007, parágrafos 2º e 4º do CPC/2015), não comprovou o recolhimento do valor para suprir o preparo insuficiente no prazo concedido, o que atrai a incidência da Súmula n. 187/STJ.
4. Agravo interno desprovido."
(AgInt no AREsp n. 2.853.061/SP, relatora Ministra Nancy Andrighi, Terceira Turma, julgado em 25/8/2025, DJEN de 1/9/2025.)
Diante do exposto, inadmito o recurso.

$BODY$,
  ARRAY['minutas/627206 - AR - TR - INTEMPESTIVO E DESERTO (complementação) - DECURSO DE PRAZO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_decreto',
  'Decreto + dobro (§4º) — permaneceu inerte',
  'Deserção — inércia após intimação para Decreto + dobro §4º (REsp)',
  $BODY$

Após a interposição do recurso, percebeu-se a necessidade de intimação da parte recorrente para juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico, a fim de comprovar a ocorrência, no âmbito deste Tribunal de Justiça, de feriado local e/ou de suspensão do expediente/prorrogação do prazo recursal, sob pena de ser reconhecida a intempestividade do recurso, na forma do disposto no artigo 1.003, § 6º c/c o artigo 224, §1º, ambos do Código de Processo Civil, bem como, para comprovar o recolhimento em dobro do preparo, nos termos do artigo 1.007, § 4º, do Código de Processo Civil (despacho de [MOV_DESPACHO]).
Todavia, a determinação não foi cumprida, visto que devidamente intimada, a parte permaneceu inerte (decurso de prazo de [MOV_CERTIDAO]), o que implica reconhecer a intempestividade do recurso, assim como, reconhecer a sua deserção, falhas que conduzem a sua inadmissão.
Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. RECURSO ESPECIAL. INTEMPESTIVIDADE. AUSÊNCIA DE COMPROVAÇÃO DA SUSPENSÃO DO EXPEDIENTE FORENSE, POR DOCUMENTO IDÔNEO, APÓS INTIMAÇÃO PARA FAZÊ-LO.
1. É intempestivo o recurso especial em que a parte, após ser intimada para comprovar ocorrência de feriado local, recesso, paralisação ou interrupção de expediente forense (art. 1.030, §6º, do CPC), deixa de demonstrar por meio de documento oficial ou certidão expedida pelo Tribunal de origem o alegado.
2. Agravo interno improvido."
(AgInt no AREsp n. 2.714.186/SP, relator Ministro Humberto Martins, Terceira Turma, julgado em 9/6/2025, DJEN de 12/6/2025.)
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM AGRAVO EM RECURSO ESPECIAL. PREPARO. COMPROVAÇÃO. AUSÊNCIA. INTIMAÇÃO. ART. 1.007, § 4º, DO CPC. JUNTADA DE DOCUMENTO. DESERÇÃO. DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos termos do art. 1.007, § 4º, do CPC, a parte não comprovar o pagamento em dobro ou a prévia concessão de gratuidade de justiça no prazo assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos Ferreira, Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)
Diante do exposto, inadmito o recurso.

$BODY$,
  ARRAY['minutas/670304 - AR - TR - INTEMPESTIVO E DESERTO (DOBRO) - DECURSO DE PRAZO - Recurso Especial.pdf']
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
  'Agendamento bancário',
  'Deserção §2º — comprovante de agendamento bancário FUNJUS (REsp)',
  $BODY$

A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na forma do despacho de mov. [MOV_DESPACHO].
No entanto, não cumpriu a determinação validamente. Isso porque, o documento juntado no mov. [MOV_COMPROVANTE] consiste em comprovante de agendamento de boleto, não estando apto a comprovar o efetivo pagamento das custas devidas.
Sendo assim, declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de Processo Civil.
Nesse sentido:
AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PROCESSUAL CIVIL. AUSÊNCIA DE RECOLHIMENTO DAS CUSTAS LOCAIS. INTIMAÇÃO PARA A REGULARIZAÇÃO. NÃO ATENDIMENTO DA DETERMINÇÃO. APRESENTAÇÃO DE COMPROVANTE DE AGENDAMENTO. RECURSO ESPECIAL DESERTO. INOVAÇÃO RECURSAL INCABÍVEL. AGRAVO INTERNO DESPROVIDO.
1. Em consonância com a orientação desta Corte Superior, 'a parte recorrente deve comprovar, no momento da interposição do recurso especial, o recolhimento das custas e do porte de remessa e retorno devidos à União, bem como dos valores locais, estipulados pelo Tribunal de origem. Precedentes' (AgInt no AREsp n. 2.380.943/SP, Relatora a Ministra Nancy Andrighi, Terceira Turma, julgado em 16/10 /2023, DJe de 18/10/2023).
2. No caso dos autos, o Tribunal de origem constatou a ausência de comprovação do recolhimento das custas locais. Assim, determinou a intimação da parte recorrente, 'na pessoa de seu advogado, para que, em 05 (cinco) dias, complemente o preparo, recolhendo a guia Funjecc, sob pena de deserção (art. 1.007, § 2º, do Código de Processo Civil)'.
3. O vício não foi corrigido, tendo em vista que os agravantes apenas apresentaram, fora do prazo estabelecido pela Corte de origem, o comprovante de agendamento do recolhimento das custas locais. Como consequência, perante o Tribunal de origem, o recurso especial não foi conhecido por ser deserto, pressuposto de admissibilidade cuja ausência foi confirmado pela Presidência desta Corte.

4. 'A mera juntada do comprovante de agendamento de pagamento das custas não constitui meio apto à comprovação de que o preparo do recurso especial foi efetivamente recolhido' (AgInt no AREsp n. 2.315.909/GO, Relator Ministro Humberto Martins, Terceira Turma, julgado em 29/4/2024, DJe de 2/5/2024). 5. A alegação de falha da instituição financeira, que seria a responsável por promover o agendamento no recolhimento das custas recursais, não foi comprovada e caracteriza inovação recursal. 6. Agravo interno desprovido. (AgInt no AREsp n. 2.591.156/MS, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 19/8/2024, DJe de 22/8/2024.)
Diante do exposto, inadmito o recurso especial interposto.
Intimem-se.

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
  'desercao_funjus_1pgto',
  'Guia pertencente a outro processo',
  'Deserção §2º — recolhimento de FUNJUS por guia indevida (REsp)',
  $BODY$

A parte foi intimada para complementar o preparo do Recurso Especial, sob pena de deserção, na forma do despacho de mov. [MOV_DESPACHO].
Todavia, a complementação do preparo não se deu de forma válida, eis que a recorrente utilizou a guia GRU-COBRANÇA para efetuar o pagamento (mov. [MOV_GUIA]), quando deveria tê-lo feito por meio de guia gerada no sítio deste Tribunal de Justiça do Estado do Paraná (FUNJUS), eis que se trata de custas estaduais, na forma do que constou no despacho de mov. [MOV_DESPACHO].
Nesse particular, é assente o entendimento da Corte Superior de que “É deserto o recurso especial na hipótese em que a parte recorrente, mesmo após intimada a regularizar o preparo, não o faz devidamente (art. 1.007, § 7º, do CPC/2015). Precedentes.” (AgInt no AREsp n. 1.692.201/MT, relator Ministro Ricardo Villas Bôas Cueva, Terceira Turma, julgado em 8/2/2021, DJe de 12/2/2021.).
Veja-se:
"Na hipótese de insuficiência do recolhimento do preparo no ato da interposição do recurso, o recorrente será intimado para realizar o recolhimento, sob pena de deserção (art. 1.007, § 2º, do CPC). (...) No presente caso, intimada a complementar o preparo, a parte recorrente deixou de supri-lo, devendo ser mantida a decisão agravada. (STJ. AgInt no AREsp 1520429/RJ, Rel. Ministro LUIS FELIPE SALOMÃO, QUARTA TURMA, julgado em 05/11/2019, DJe 12/11/2019).
Assim sendo, e considerando a ausência da complementação determinada, é que nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do Recurso Especial.
Diante do exposto, inadmito o Recurso Especial interposto.
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
  'desercao_gru_1pgto',
  'Guia GRU n?o apresentada ap?s intima??o (juntou s? o comprovante) [RE]',
  'Deser??o ? 1.007, ?2? - comprovante sem guia ap?s intima??o (RE)',
  $BODY$
TRIBUNAL DE JUSTIÇA DO ESTADO DO PARANÁ
COMARCA DA REGIÃO METROPOLITANA DE MARINGÁ - FORO
REGIONAL DE NOVA ESPERANÇA
JUIZADO ESPECIAL CRIMINAL DE NOVA ESPERANÇA
Autos nº. 0011714-76.2023.8.16.0018
Recurso: 0011714-76.2023.8.16.0018 RecIno
Classe Processual: Recurso Inominado Cível
Assunto Principal: Fornecimento de Energia Elétrica
Recorrente(s): ANA CLAUDIA BOLONHEIS
Recorrido(s): COPEL DISTRIBUIÇÃO S.A.
O Recorrente foi intimado para comprovar a complementação do preparo recursal, conforme determinado no
despacho de mov. XXX.
No entanto, apresentou tão somente o comprovante de pagamento (mov. XXX), deixando, portanto, de
juntar a respectiva guia de recolhimento.
O Supremo Tribunal Federal consolidou o entendimento de que"(...) os recursos a si dirigidos devem estar
acompanhados das guias de recolhimento devidamente preenchidas e dos respectivos comprovantes de
pagamento, ambos de forma visível e legível, sob pena de deserção. Nesse sentido: RE nº 995.504/SE, Rel.
Min. Alexandre de Moraes, DJe de 7/2/18; ARE nº 861.098/RJ-AgR, Primeira Turma, Rel. Min. Alexandre de
Moraes, DJe de 30/8/18; ARE nº 1.057.717/SP-AgR, Segunda Turma, Rel. Min. Celso de Mello, DJe de 15
/12/17 ." (ARE 1.213.790/MG, Rel. Ministro DIAS TOFFOLI, julgado em 26/06/2019, DJe 24/06/2019).
Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso
extraordinário.
Diante do exposto, inadmito o recurso extraordinário interposto.
Intime-se. Diligências necessárias.
Curitiba, data da assinatura digital.
Desembargador HAYTON LEE SWAIN FILHO
1º Vice-Presidente do Tribunal de Justiça do Estado do Paraná
AR-
$BODY$,
  ARRAY['minutas/596190 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - COMPLEMENTAÇÃO - Recurso Extraordinário.pdf']
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
  'Guia GRU não apresentada após intimação (juntou só o comprovante)',
  'Deserção §2º — comprovante GRU sem guia após intimação (REsp)',
  $BODY$

A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na forma do despacho de [MOV_DESPACHO].
No entanto, não cumpriu a determinação, visto que apresentou tão somente o comprovante de pagamento ([MOV_COMPROVANTE]), sem a respectiva guia de recolhimento.
Nesse particular, é assente o entendimento do Superior Tribunal de Justiça "(...) no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. A juntada apenas do comprovante de pagamento das custas, sem a respectiva guia de recolhimento, configura ausência de regular comprovação do preparo." (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4/2023).
Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.
Diante do exposto, inadmito o recurso especial interposto.
Intime-se.

$BODY$,
  ARRAY['minutas/596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
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
  'Guia GRU não apresentada após intimação (nunca juntada)',
  'Deserção §2º — comprovante sem guia GRU após intimação (REsp)',
  $BODY$

A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na forma do despacho de mov. [MOV_DESPACHO].
No entanto, não cumpriu a determinação, visto que apresentou tão somente o comprovante de pagamento (mov. [MOV_COMPROVANTE]), sem a respectiva guia de recolhimento.
Nesse particular, é assente o entendimento do Superior Tribunal de Justiça “(...) no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. A juntada apenas do comprovante de pagamento das custas, sem a respectiva guia de recolhimento, configura ausência de regular comprovação do preparo." (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4 /2023).
Veja-se, ainda:
"DIREITO PROCESSUAL CIVIL. AGRAVO REGIMENTAL. IRREGULARIDADE NO RECOLHIMENTO DO PREPARO. RECURSO IMPROVIDO. I. Caso em exame 1. Agravo regimental interposto contra decisão da Presidência do STJ que não conheceu do recurso em mandado de segurança, em razão de irregularidade no recolhimento do preparo. 2. O agravante foi intimado para sanar o vício, mas não regularizou a situação, apresentando apenas comprovante de pagamento sem a guia de recolhimento das custas devidas ao STJ. II. Questão em discussão 3. A questão em discussão consiste em saber se a ausência de regularização do preparo, mesmo após intimação, impede o conhecimento do recurso em mandado de segurança.

III. Razões de decidir 4. O STJ entende que é deserto o recurso se a parte não comprova, adequada e tempestivamente, o recolhimento do preparo recursal, mesmo após intimação. 5. A jurisprudência do STJ é firme no sentido de que a ausência de comprovação do recolhimento das custas devidas, na forma exigida, acarreta a deserção do recurso. 6. A alegação de rigor excessivo e formalismo exacerbado não afasta a necessidade de cumprimento das exigências processuais para o conhecimento do recurso. IV. Dispositivo e tese 7. Agravo regimental improvido. Tese de julgamento: '1. A ausência de regularização do preparo, mesmo após intimação, impede o conhecimento do recurso. 2. A jurisprudência do STJ exige a comprovação adequada e tempestiva do recolhimento do preparo recursal para evitar a deserção do recurso'. Dispositivos relevantes citados: CPC, art. 1.007, § 4º; RISTJ, art. 21-E, V. Jurisprudência relevante citada: STJ, AgRg no RMS 72.268/RS, Rel. Min. Reynaldo Soares da Fonseca, Quinta Turma, julgado em 12/12/2023; STJ, AgRg no RMS 73.256/SP, Rel. Min. Antonio Saldanha Palheiro, Sexta Turma, julgado em 17/6/2024. (AgRg no RMS n. 75.687/SC, relator Ministro Ribeiro Dantas, Quinta Turma, julgado em 14/4/2025, DJEN de 24/4/2025.)
Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.
Diante do exposto, inadmito o recurso especial interposto.
Intime-se.

$BODY$,
  ARRAY['minutas/596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
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
  'Juntou só o comprovante GRU (sem guia) após intimação',
  'Deserção §2º — comprovante GRU sem guia após intimação (REsp)',
  $BODY$

A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na forma do despacho de [MOV_DESPACHO].

No entanto, não cumpriu a determinação, visto que apresentou tão somente o comprovante de pagamento ([MOV_COMPROVANTE]), sem a respectiva guia de recolhimento.

Nesse particular, é assente o entendimento do Superior Tribunal de Justiça "(...) no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. A juntada apenas do comprovante de pagamento das custas, sem a respectiva guia de recolhimento, configura ausência de regular comprovação do preparo." (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4/2023).

Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.

$BODY$,
  ARRAY['minutas/596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
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
  'Sem código de barras legível',
  'Deserção §2º — código de barras irregular na GRU (REsp)',
  $BODY$

Declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de Processo Civil, uma vez que a complementação do preparo não se deu de forma válida. Isso porque não há correspondência entre o número do código de barras da guia de recolhimento de mov. [MOV_GUIA] e o comprovante de pagamento de mov. [MOV_COMPROVANTE].
A jurisprudência do Superior Tribunal de Justiça"(...) firmou compreensão segundo a qual é exigida as guias de recolhimento do preparo juntamente com o comprovante de pagamento bancário, a fim de que todas as informações necessárias para individualizar o pagamento e identificar a sua pertinência ao processo respectivo sejam colhidas (código de recolhimento, UG/Gestão, CPF/CNPJ do contribuinte, nome do contribuinte, número de referência)" (AgInt no AREsp 1.217.562/SP, Rel. Ministro Benedito Gonçalves, Primeira Turma, DJe 10/9/2018).
Ainda, nesse sentido:
“AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PREPARO RECURSAL. AUSÊNCIA DE CORRESPONDÊNCIA ENTRE O NÚMERO DE CÓDIGO DE BARRAS E DO COMPROVANTE DE PAGAMENTO BANCÁRIO. RECURSO DESERTO. AGRAVO INTERNO DESPROVIDO.
1. Nos termos da jurisprudência do Superior Tribunal de Justiça, ‘a falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento enseja irregularidade no preparo do recurso especial e, portanto, sua deserção’ (AgInt no AREsp 1.449.432/SP, Relator Ministro Luis Felipe Salomão, Quarta Turma, DJe de 12/5/2020).
2. É inviável a análise de questão meritória em recurso especial que não ultrapassa sequer o juízo de admissibilidade.
3. Agravo interno desprovido.”
(AgInt no AREsp n. 2.665.947/MS, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 28/10/2024, DJe de 5/11/2024.).

Diante do exposto, inadmito o recurso especial interposto. Intimem-se.

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
  'desercao_intempestivo',
  'Comprovante de pagamento juntado fora do prazo recursal',
  'Deserção § 1.007, §4º - comprovação fora do prazo legal',
  $BODY$

A parte recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal no prazo de 5 (cinco) dias, na forma do despacho de [MOV_DESPACHO].
Verifica-se que a leitura de intimação do referido despacho foi confirmada em xx.xx.xxxx, de modo que o prazo de 5 (cinco) dias concedido para regularização do preparo passou a fluir em xx.xx.xxxx e findou em xx. xx.xxxx, sendo certificado o decurso do prazo em xx.xx.xxxx ([MOV_CERTIDAO]). Portanto, a petição juntada em xx. xx.xxxx ([MOV_COMPROVANTE]) está intempestiva.
Cumpre esclarecer que, ainda que a parte alegue que o recolhimento do preparo foi realizado tempestivamente, certo é que a sua comprovação ocorreu fora do prazo legal.
Portanto, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso especial.
Nesse sentido, o seguinte precedente:
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM AGRAVO EM RECURSO ESPECIAL. PREPARO. COMPROVAÇÃO. AUSÊNCIA. INTIMAÇÃO. ART. 1.007, § 4º, DO CPC. JUNTADA DE DOCUMENTO. DESERÇÃO. DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos termos do art. 1.007, § 4º, do CPC, a parte não comprovar o pagamento em dobro ou a prévia concessão de gratuidade de justiça no prazo assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos Ferreira, Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)
Diante do exposto, inadmito o recurso especial interposto.


$BODY$,
  ARRAY['minutas/607949 - AR - TR - DESERTO - 1.007 §4º - Recurso Especial - Comprovação fora do prazo legal.pdf']
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
  'Apresentou comprovantes sem código de barras (preparo irregular)',
  'Deserção — JG indeferida + comprovante sem código de barras (REsp)',
  $BODY$

Declaro a deserção do recurso especial, uma vez que após ser indeferido o pedido de justiça gratuita formulado na petição recursal (decisão de [MOV_INDEFERIMENTO_JG]), a parte recorrente foi devidamente intimada para efetuar o preparo do recurso ([MOV_DESPACHO]), tendo se manifestado nos autos para apresentar as guias de recolhimento e os comprovantes de pagamento de [MOV_DOCS], os quais, contudo, não se revelam suficientes a comprovar o respectivo pagamento, na medida em que não consta o número do código de barras, inviabilizando assim a conferência com as guias de recolhimento juntadas.
Ressalta-se que o despacho de [MOV_DESPACHO] mencionou que para comprovação do efetivo recolhimento do preparo a parte deveria providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual constasse o código de barras de forma visível e legível.
A Corte Superior firmou entendimento no sentido de que "A ausência do número de código de barras no comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-se, portanto, deserto" (AgInt nos EDcl nos EREsp n. 1.563.122/RS, relatora Ministra Maria Isabel Gallotti, Corte Especial, julgado em 24/10/2023, DJe de 30/10/2023).
Nesse sentido:
"AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PROCESSUAL. TRIBUNAL DE ORIGEM. DECISÃO DE ADMISSIBILIDADE. JUSTIÇA GRATUITA. INDEFERIMENTO. PREPARO. REGULARIZAÇÃO. DESERÇÃO. SÚMULA Nº 187/STJ.
1. A jurisprudência do Superior Tribunal de Justiça é firme no sentido de ser essencial à comprovação do preparo a juntada da guia de recolhimento com o respectivo comprovante de pagamento, no ato da interposição do especial, sob pena de deserção.
2. Na hipótese, o pedido de justiça gratuita foi indeferido pelo tribunal de justiça, antes do juízo prévio de admissibilidade do recurso especial, por ausência de comprovação da hipossuficiência. Após intimada para recolher o preparo, a parte não o regularizou na forma devida, não podendo ser novamente intimada para tanto, motivo pelo qual foi reconhecida a deserção.
4. Agravo interno não provido."
(AgInt no AREsp n. 2.591.328/SC, relator Ministro Ricardo Villas Bôas Cueva, Terceira Turma, julgado em 16/9/2024, DJe de 18/9/2024.)
Diante do exposto, o recurso especial inadmito interposto.
Intimem-se.

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
  'Permaneceu inerte (certidão de decurso de prazo)',
  'Deserção — JG indeferida + inércia após intimação para preparo (REsp)',
  $BODY$

Declaro a deserção do recurso especial, uma vez que a parte recorrente, devidamente intimada da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e determinou o recolhimento do preparo ([MOV_DESPACHO]), permaneceu inerte ([MOV_CERTIDAO]).
Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. DECISÃO DO RELATOR NO TRIBUNAL DE ORIGEM QUE NEGOU SEGUIMENTO AO RECURSO DE APELAÇÃO. DENEGAÇÃO DO PEDIDO DE JUSTIÇA GRATUITA. AUSÊNCIA DE RECOLHIMENTO DO PREPARO NO PRAZO ASSINALADO. DESERÇÃO. DECISÃO MANTIDA. AGRAVO INTERNO NÃO PROVIDO.
1. Nos termos da jurisprudência desta Corte, a parte que postula o benefício da justiça gratuita e tem a sua pretensão rejeitada não pode ser surpreendida com o imediato reconhecimento da deserção do seu recurso, sem que lhe tenha sido dada a oportunidade de recolher o preparo no valor originalmente devido, conforme previsto no art. 99, § 7º, do CPC.
2. Contudo, se mesmo após ter sido intimada na forma do dispositivo acima mencionado, a parte não efetuar o recolhimento do preparo recursal no prazo assinalado, a consequência é o reconhecimento da deserção do recurso, e não uma nova intimação a fim de possibilitar o recolhimento em dobro.
4. Agravo interno não provido."
(AgInt no AREsp n. 2.624.581/MS, relator Ministro Moura Ribeiro, Terceira Turma, julgado em 24/2/2025, DJEN de 28/2/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intimem-se.

$BODY$,
  ARRAY['minutas/606190 - AR - TR - DESERTO - indeferida a JG e prazo para recolher preparo - inércia - REsp.pdf']
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
  'Comprovação da complementação apresentada fora do prazo legal',
  'Deserção §2º — complementação apresentada fora do prazo legal (REsp)',
  $BODY$

A parte recorrente foi intimada para comprovar a complementação do preparo no prazo de 5 (cinco) dias, na forma do despacho de [MOV_DESPACHO].
Verifica-se que a leitura de intimação do referido despacho foi confirmada em [DATA_CIENCIA], de modo que o prazo de 5 (cinco) dias concedido para regularização do preparo passou a fluir em [DATA_INICIO_PRAZO] e findou em [DATA_FIM_PRAZO], sendo certificado o decurso do prazo em [DATA_CERTIDAO] ([MOV_CERTIDAO]).
Sendo assim, e considerando que a regularização do preparo foi feita intempestivamente, na medida em que os documentos foram apresentados em [DATA_APRESENTACAO] ([MOV_COMPROVANTE]), nos termos do § 2º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso especial.
Nesse sentido, o seguinte precedente:
"TRIBUTÁRIO E PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. RECURSO ESPECIAL. PREPARO INSUFICIENTE. INTIMAÇÃO PARA COMPLEMENTAÇÃO DO PREPARO, NO PRAZO DE 5 (CINCO) DIAS, PREVISTO NO ART. 1.007, § 2º, DO CPC/2015. NÃO ATENDIMENTO, NO PRAZO LEGAL. DESERÇÃO. SÚMULA 187/STJ. AGRAVO INTERNO IMPROVIDO.
I. Agravo interno aviado contra decisão que julgara Agravo em Recurso Especial interposto contra decisum publicado na vigência do CPC/2015.
II. No caso, a deserção foi declarada, porquanto o Recurso Especial foi instruído, no momento de sua interposição, com o preparo insuficiente. Assim, constatada tal irregularidade, a parte recorrente foi intimada para complementar o preparo, no prazo de 5 (cinco) dias, previsto no art. 1.007, § 2º, do CPC/2015, sob pena de deserção. Todavia, a regularização foi feita intempestivamente.
III. A extemporânea comprovação da complementação do preparo recursal inviabiliza o conhecimento do presente recurso, nos termos da Súmula 187 desta Corte. Precedentes do STJ.
IV. Agravo interno improvido."
(AgInt no AREsp n. 1.788.290/MS, relatora Ministra Assusete Magalhães, Segunda Turma, julgado em 29/3/2021, DJe de 6/4/2021.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se.

$BODY$,
  ARRAY['minutas/607948 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovação fora do prazo legal.pdf']
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
  'Permaneceu inerte (certid?o de decurso de prazo)',
  'Deser??o ? 1.007, ?2? - aus?ncia de complementa??o (REsp)',
  $BODY$
TRIBUNAL DE JUSTIÇA DO ESTADO DO PARANÁ
COMARCA DA REGIÃO METROPOLITANA DE MARINGÁ - FORO
REGIONAL DE NOVA ESPERANÇA
JUIZADO ESPECIAL CRIMINAL DE NOVA ESPERANÇA
Autos nº. 0011714-76.2023.8.16.0018
Recurso: 0011714-76.2023.8.16.0018 RecIno
Classe Processual: Recurso Inominado Cível
Assunto Principal: Fornecimento de Energia Elétrica
Recorrente(s): ANA CLAUDIA BOLONHEIS
Recorrido(s): COPEL DISTRIBUIÇÃO S.A.
Declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de
Processo Civil, uma vez que a parte recorrente, devidamente intimada do despacho de mov.
XXXX, não se manifestou (certidão de decurso de prazo de mov. XXXX).
Nesse particular, é assente o entendimento do Superior Tribunal de Justiça de que "A
insuficiência no valor do preparo só implicará deserção se o recorrente, intimado, não vier a
supri-lo no prazo de cinco dias (CPC/2015, art. 1.007, § 2°). (...)." (AgInt no AREsp 1.599.097
/SP, Rel. Min. RAUL ARAÚJO, DJe de 18/05/2020).
Veja-se, ainda:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO
ESPECIAL. AÇÃO DECLARATÓRIA DE INEXIGIBILIDADE DE DÉBITO
COM PEDIDO DE REPARAÇÃO DE DANOS MATERIAIS E MORAIS.
PREPARO. INSUFICIÊNCIA. INTIMAÇÃO PARA PAGAMENTO EM
DOBRO DO PREPARO. DESCUMPRIMENTO. RECONHECIMENTO DA
DESERÇÃO. SÚMULA N. 187/STJ. INCIDÊNCIA.
1. Ação declaratória de inexigibilidade de débito com pedido de reparação
de danos materiais e morais.
2. A parte mesmo após a intimação para sanar o vício apontado (artigo
1.007, parágrafos 2º e 4º do CPC/2015), não comprovou o recolhimento do
valor para suprir o preparo insuficiente no prazo concedido, o que atrai a
incidência da Súmula n. 187/STJ.
Precedentes.
3. Quando a parte, após regularmente intimada, não comprova, no prazo
assinado, o recolhimento do preparo na forma devida, o recurso especial é
considerado deserto. Precedentes.
4. Agravo interno desprovido."
(AgInt no AREsp n. 2.853.061/SP, relatora Ministra Nancy Andrighi,
Terceira Turma, julgado em 25/8/2025, DJEN de 1/9/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se. Diligências necessárias.
Curitiba, data da assinatura digital.
Desembargador HAYTON LEE SWAIN FILHO
1º Vice-Presidente do Tribunal de Justiça do Estado do Paraná
AR-
$BODY$,
  ARRAY['minutas/596222 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Ausência de complementação.pdf']
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
  'Procuração regularizada, mas preparo não comprovado',
  'Deserção §2º — procuração regularizada, preparo não comprovado (REsp)',
  $BODY$

Após a interposição do recurso, percebeu-se a necessidade de intimação da parte recorrente para regularizar a representação processual, na forma do disposto no artigo 932, parágrafo único, do Código de Processo Civil, bem como para comprovar a complementação do preparo recursal, como prevê o artigo 1.007, § 2º, do Código de Processo Civil (despacho de [MOV_DESPACHO]).
Todavia, em que pese tenha juntado os documentos de movs. [MOV_PROCURACAO] a [MOV_PROCURACAO_FIM], a fim de regularizar a sua representação processual, o fato é que a parte não comprovou o recolhimento do preparo recursal, de modo que, nos termos do § 2º do artigo 1.007 do Código de Processo Civil, é forçoso declarar deserto o recurso especial, o que faço.
Veja-se:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. AÇÃO DECLARATÓRIA DE INEXIGIBILIDADE DE DÉBITO COM PEDIDO DE REPARAÇÃO DE DANOS MATERIAIS E MORAIS. PREPARO. INSUFICIÊNCIA. INTIMAÇÃO PARA PAGAMENTO EM DOBRO DO PREPARO. DESCUMPRIMENTO. RECONHECIMENTO DA DESERÇÃO. SÚMULA N. 187/STJ. INCIDÊNCIA.
1. Ação declaratória de inexigibilidade de débito com pedido de reparação de danos materiais e morais.
2. A parte mesmo após a intimação para sanar o vício apontado (artigo 1.007, parágrafos 2º e 4º do CPC/2015), não comprovou o recolhimento do valor para suprir o preparo insuficiente no prazo concedido, o que atrai a incidência da Súmula n. 187/STJ. Precedentes.
3. Quando a parte, após regularmente intimada, não comprova, no prazo assinado, o recolhimento do preparo na forma devida, o recurso especial é considerado deserto. Precedentes.
4. Agravo interno desprovido."
(AgInt no AREsp n. 2.853.061/SP, relatora Ministra Nancy Andrighi, Terceira Turma, julgado em 25/8/2025, DJEN de 1/9/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se.

$BODY$,
  ARRAY['minutas/645022 - AR - TR - DESERTO - 1.007 §2º - despacho procuração e preparo.pdf']
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
  'Documentos n?o localizados (N/D) [RE]',
  'Deser??o ? 1.007, ?4? - juntou apenas comprovantes (RE)',
  $BODY$
TRIBUNAL DE JUSTIÇA DO ESTADO DO PARANÁ
COMARCA DA REGIÃO METROPOLITANA DE MARINGÁ - FORO
REGIONAL DE NOVA ESPERANÇA
JUIZADO ESPECIAL CRIMINAL DE NOVA ESPERANÇA
Autos nº. 0011714-76.2023.8.16.0018
Recurso: 0011714-76.2023.8.16.0018 RecIno
Classe Processual: Recurso Inominado Cível
Assunto Principal: Fornecimento de Energia Elétrica
Recorrente(s): ANA CLAUDIA BOLONHEIS
Recorrido(s): COPEL DISTRIBUIÇÃO S.A.
O(A) Recorrente, devidamente intimado(a)para comprovar o recolhimento em dobro do preparo (despacho
de mov. XX), apresentou tão somente os comprovantes de pagamento (mov. XX), deixando, portanto, de
juntar as respectivas guias de recolhimento.
Cumpre esclarecer, que o Supremo Tribunal Federal consolidou o entendimento de que "(...) os recursos a si
dirigidos devem estar acompanhados das guias de recolhimento devidamente preenchidas e dos respectivos
comprovantes de pagamento, ambos de forma visível e legível, sob pena de deserção. Nesse sentido: RE nº
995.504/SE, Rel. Min. Alexandre de Moraes, DJe de 7/2/18; ARE nº 861.098/RJ-AgR, Primeira Turma, Rel.
Min. Alexandre de Moraes, DJe de 30/8/18; ARE nº 1.057.717/SP-AgR, Segunda Turma, Rel. Min. Celso de
Mello, DJe de 15/12/17." (ARE 1259628, Relator(a): Min. DIAS TOFFOLI, julgado em 27/04/2020, publicado
em PROCESSO ELETRÔNICO DJe-111 DIVULG 06/05/2020 PUBLIC 07/05/2020).
Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso
extraordinário.
Ainda, nesse sentido:
"AGRAVO INTERNO NO RECURSO EXTRAORDINÁRIO COM AGRAVO. DIREITO
PROCESSUAL CIVIL. AUSÊNCIA DE RECOLHIMENTO DO PREPARO RECURSAL.
DESERÇÃO DO RECURSO EXTRAORDINÁRIO. GRATUIDADE DA JUSTIÇA.
CONCESSÃO. SEM EFEITOS RETROATIVOS. PRECEDENTES. 1. O recurso
extraordinário não foi devidamente preparado, mesmo tendo sido a parte
intimada a efetuar o recolhimento, na forma do artigo 1.007, § 4º, do CPC/2015.
Deserção do recurso. 2. A concessão do benefício da gratuidade da justiça por esta
Corte não gera efeitos retroativos para afastar a deserção do recurso extraordinário
assentada na origem. 3. Agravo interno não provido, com imposição de multa de 5%
(cinco por cento) do valor atualizado da causa (artigo 1.021, § 4º, do CPC), caso seja
unânime a votação. 4. Honorários advocatícios majorados ao máximo legal em
desfavor da parte recorrente, caso as instâncias de origem os tenham fixado, nos
termos do artigo 85, § 11, do Código de Processo Civil, observados os limites dos §§
2º e 3º e a eventual concessão de justiça gratuita." (ARE 1278970 AgR, Relator(a):
LUIZ FUX (Presidente), Tribunal Pleno, julgado em 30/11/2020, PROCESSO
ELETRÔNICO DJe-021 DIVULG 03-02-2021 PUBLIC 04-02-2021) - Destaquei
Diante do exposto, inadmito o recurso extraordinário interposto.
Intime-se. Diligências necessárias.
Curitiba, data da assinatura digital.
Desembargador HAYTON LEE SWAIN FILHO
1º Vice-Presidente do Tribunal de Justiça do Estado do Paraná
AR-
$BODY$,
  ARRAY['minutas/596260 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Extraordinário.pdf', 'minutas/596274 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Extraordinário.pdf']
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
  'Documentos não localizados (N/D)',
  'Deserção § 1.007, §4º - ausência de manifestação',
  $BODY$

A parte recorrente, devidamente intimada para comprovar o recolhimento em dobro do preparo recursal (despacho de [MOV_DESPACHO]), não se manifestou (certidão de decurso de prazo de [MOV_CERTIDAO]).
Sendo assim, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso especial.
Nesse sentido, o seguinte precedente:
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM AGRAVO EM RECURSO ESPECIAL. PREPARO. COMPROVAÇÃO. AUSÊNCIA. INTIMAÇÃO. ART. 1.007, § 4º, DO CPC. JUNTADA DE DOCUMENTO. DESERÇÃO. DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos termos do art. 1.007, § 4º, do CPC, a parte não comprovar o pagamento em dobro ou a prévia concessão de gratuidade de justiça no prazo assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos Ferreira, Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)
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
  'Intimado para pagar em dobro e pagou em valor simples',
  'Deserção §4º — pagamento simples após intimação para dobro (REsp)',
  $BODY$

A recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal, sob pena de deserção, na forma do despacho de [MOV_DESPACHO].
Todavia, a parte limitou-se a apresentar as guias e os comprovantes de [MOV_GUIA] a [MOV_COMPROVANTE], os quais correspondem ao pagamento em valor simples, o que não atende à determinação do preparo de forma dobrada e, por isso, este recurso é deserto, o que declaro, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.
Neste sentido:
"A jurisprudência do STJ é firme no sentido de que a ausência de comprovação do preparo no ato da interposição do recurso, seguida de intimação para recolhimento em dobro não atendida, acarreta a deserção do recurso". (AgInt no AREsp n. 2.711.425/MS, relator Ministro Antonio Carlos Ferreira, Quarta Turma, julgado em 24/2/2025, DJEN de 28/2/2025).
Diante do exposto, inadmito o recurso especial interposto.

$BODY$,
  ARRAY['minutas/606008 - AR - TR - DESERTO - dobro - comprovação forma simples.pdf']
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
  'Intimado para pagar em dobro e pagou simples',
  'Deserção §4º — intimado para pagar em dobro e pagou simples (REsp)',
  $BODY$

A recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal, sob pena de deserção, na forma do despacho de mov. [MOV_DESPACHO].
Todavia, a parte limitou-se a informar que "as custas foram tempestivamente pagas, e apenas por uma falha no momento do protocolo, não foram juntadas aos presentes autos" (petição de mov. [MOV_PETICAO]), apresentando agora as guias e os comprovantes de movs. [MOV_GUIA] a [MOV_COMPROVANTE], os quais deveriam ter sido juntados quando da interposição do recurso, o que não atende à determinação do preparo de forma dobrada e por isso este recurso é deserto, o que declaro, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.
Neste sentido:
"A jurisprudência do STJ é firme no sentido de que a ausência de comprovação do preparo no ato da interposição do recurso, seguida de intimação para recolhimento em dobro não atendida, acarreta a deserção do recurso". (AgInt no AREsp n. 2.711.425/MS, relator Ministro Antonio Carlos Ferreira, Quarta Turma, julgado em 24/2 /2025, DJEN de 28/2/2025).
Diante do exposto, inadmito o recurso especial interposto.

$BODY$,
  ARRAY['minutas/606008 - AR - TR - DESERTO - dobro - comprovação forma simples.pdf']
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
  'Pedido de JG após intimação para dobro (sem efeito retroativo)',
  'Deserção §4º — pedido de JG tardio, sem efeito retroativo (REsp)',
  $BODY$

Intimado a comprovar o recolhimento em dobro do preparo recursal ([MOV_DESPACHO]), o Recorrente se manifestou, formulando pedido de gratuidade da justiça (petição de [MOV_PETICAO_JG]).
O pedido, todavia, não comporta acolhimento.
Ocorre que, na forma do despacho de [MOV_DESPACHO_APELACAO], o recolhimento do preparo da apelação cível se mostrou ato incompatível com o deferimento da gratuidade da justiça. Assim, e considerando que não houve renovação do pleito no recurso especial, mas somente agora, cumpre registrar que o pedido não socorre ao recorrente, posto que eventual deferimento da benesse legal não possui efeito retroativo, de modo a não mais dispensar o recolhimento das custas do presente recurso especial.
Sendo assim, e considerando que a parte recorrente, devidamente intimada, não regularizou o preparo recursal, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso especial.
Nesse sentido, os seguintes precedentes:
"AGRAVO INTERNO NOS EMBARGOS DE DECLARAÇÃO NO AGRAVO EM RECURSO ESPECIAL. JUSTIÇA GRATUITA. CONCESSÃO. EFEITO EX NUNC. PREPARO RECURSAL. COMPROVANTE DE TRANSFERÊNCIA BANCÁRIA. AUSÊNCIA DE VINCULAÇÃO AO CÓDIGO DE BARRAS EXPRESSO NA GUIA DE RECOLHIMENTO DA UNIÃO - GRU. RECURSO ESPECIAL DESERTO. AGRAVO INTERNO DESPROVIDO.
1. 'o benefício da gratuidade judiciária não tem efeito retroativo, de modo que a sua concessão posterior à interposição do recurso não tem o condão de isentar a parte do recolhimento do respectivo preparo. Desse modo, nem mesmo eventual deferimento da benesse nesta fase processual, descaracterizaria a deserção do recurso especial' (AgInt no AREsp n. 2.380.943/SP, Relatora a Ministra Nancy Andrighi, Terceira Turma, julgado em 16/10/2023, DJe de 18/10/2023).
2. A jurisprudência do Superior Tribunal de Justiça firmou-se no sentido de que 'a ausência de regular comprovação do preparo, no ato de interposição do recurso, implica a incidência do § 4º do art. 1.007 do CPC/2015. Quem não prova o pagamento a tempo e modo, sem o amparo de justa causa (§ 6º), nem efetua o recolhimento em dobro quando intimado (§§ 4º e 5º), sofre a pena da deserção (Súmula 187/STJ)'.
5. Agravo interno desprovido."
(AgInt nos EDcl no AREsp n. 2.641.710/RJ, relator Ministro Marco Aurélio Bellizze, Segunda Turma, julgado em 12/3/2025, DJEN de 19/3/2025.)
"PROCESSO CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. RECOLHIMENTO DE CUSTAS. ATO INCOMPATÍVEL COM PEDIDO DE GRATUIDADE DE JUSTIÇA. RECOLHIMENTO EM DOBRO. NÃO COMPROVADO. DESERÇÃO. SÚMULA N. 187/STJ.
1. As custas não foram recolhidas no ato da interposição do recurso especial. Como houve a renúncia ao pedido de gratuidade em razão do recolhimento a posteriori, é imperiosa a observância do art. 1.007, § 4º, do CPC, com o consequente recolhimento em dobro.
2. No caso dos autos, constatada a irregularidade e devidamente intimada, a parte recorrente deixou de efetuar o recolhimento em dobro, o que atrai a incidência da Súmula 187 do STJ. Agravo interno improvido."
(AgInt no AREsp n. 2.546.934/SP, relator Ministro Humberto Martins, Terceira Turma, julgado em 19/8/2024, DJe de 22/8/2024.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se.

$BODY$,
  ARRAY['minutas/604597 - AR - TR - DESERTO - intimação regularização preparo - pedido JG.pdf']
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
  'Permaneceu inerte (certid?o de decurso de prazo) [RE]',
  'Deser??o ? 1.007, ?4? - aus?ncia de manifesta??o (RE)',
  $BODY$
TRIBUNAL DE JUSTIÇA DO ESTADO DO PARANÁ
COMARCA DA REGIÃO METROPOLITANA DE MARINGÁ - FORO
REGIONAL DE NOVA ESPERANÇA
JUIZADO ESPECIAL CRIMINAL DE NOVA ESPERANÇA
Autos nº. 0011714-76.2023.8.16.0018
Recurso: 0011714-76.2023.8.16.0018 RecIno
Classe Processual: Recurso Inominado Cível
Assunto Principal: Fornecimento de Energia Elétrica
Recorrente(s): ANA CLAUDIA BOLONHEIS
Recorrido(s): COPEL DISTRIBUIÇÃO S.A.
Declaro a deserção do recurso extraordinário, nos termos do § 4º do artigo 1.007 do Código de Processo
Civil, uma vez que a parte recorrente não regularizou o preparo recursal, conforme determinado no
despacho de mov. xx (certidão de decurso de prazo de mov. xx).
Nesse sentido, o seguinte precedente:
"RECURSO – DESERÇÃO – ARTIGO 1.007 DO CÓDIGO DE PROCESSO CIVIL DE
2015. Se o extraordinário foi interposto na vigência do Código de Processo Civil de
2015, a comprovação do recolhimento do preparo há de ser feita no prazo do recurso,
ou naquele fixado para a respectiva regularização, sob pena de deserção.
HONORÁRIOS ADVOCATÍCIOS. Ante o disposto no artigo 85, § 11, do Código de
Processo Civil de 2015, fica afastada, no julgamento de recurso, a majoração de
honorários advocatícios quando ausente fixação na origem. AGRAVO – MULTA –
ARTIGO 1.021, § 4º, DO CÓDIGO DE PROCESSO CIVIL DE 2015. Se o agravo é
manifestamente inadmissível ou improcedente, impõe-se a aplicação da multa
prevista no § 4º do artigo 1.021 do Código de Processo Civil de 2015, arcando a parte
com o ônus decorrente da litigância protelatória.
(ARE 1081517 AgR, Relator(a): Min. MARCO AURÉLIO, Primeira Turma, julgado em
13/03/2018, PROCESSO ELETRÔNICO DJe-091 DIVULG 10-05-2018 PUBLIC 11-05-
2018)
Diante do exposto, inadmito o recurso extraordinário interposto.
Intime-se. Diligências necessárias.
Curitiba, data da assinatura digital.
Desembargador HAYTON LEE SWAIN FILHO
1º Vice-Presidente do Tribunal de Justiça do Estado do Paraná
AR-
$BODY$,
  ARRAY['minutas/596237 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Extraordinário.pdf']
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
  'Sem código de barras legível',
  'Deserção § 1.007, §4º - sem código de barras legível',
  $BODY$

A parte recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal, sob pena de deserção (despacho de [MOV_DESPACHO]).
Entretanto, verifica-se que o recolhimento do preparo não restou comprovado. Isso porque, não consta o número do código de barras nos documentos indicados como comprovantes de pagamento ([MOV_COMPROVANTE]), inviabilizando a conferência com as guias de recolhimento apresentadas ([MOV_GUIA]).
Ressalta-se que o despacho de [MOV_DESPACHO] mencionou que para comprovação do efetivo recolhimento do preparo, a parte deveria providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual constasse o código de barras de forma visível e legível.
A Corte Superior firmou entendimento no sentido de que “A ausência do número de código de barras no comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-se, portanto, deserto"(AgInt nos EDcl nos EREsp n. 1.563.122/RS, relatora Ministra Maria Isabel Gallotti, Corte Especial, julgado em 24/10/2023, DJe de 30/10/2023).
Ainda, nesse sentido, o seguinte precedente:
"AGRAVO INTERNO NO RECURSO ESPECIAL. PREPARO RECURSAL. AUSÊNCIA DO NÚMERO DE CÓDIGO DE BARRAS NO COMPROVANTE DE PAGAMENTO BANCÁRIO. REGULARIZAÇÃO QUE DEPENDE DO RECOLHIMENTO EM DOBRO NO PRAZO ESTIPULADO. DUPLO JUÍZO DE ADMISSIBILIDADE. MAJORAÇÃO DOS HONORÁRIOS RECURSAIS. POSSIBILIDADE. AGRAVO INTERNO DESPROVIDO.
1. A jurisprudência do Superior Tribunal de Justiça firmou-se no sentido de que "a ausência de regular comprovação do preparo, no ato de interposição do recurso, implica a incidência do § 4º do art. 1.007 do CPC/2015. Quem não prova o pagamento a tempo e modo, sem o amparo de justa causa (§ 6º), nem efetua o recolhimento em dobro quando intimado (§§ 4º e 5º), sofre a pena da deserção (Súmula 187/STJ)" - (AgInt no REsp n. 1.856.622/RS, Relator o Ministro Og Fernandes, Segunda Turma, julgado em 15/6/2020, DJe de 24/6/2020).


2. A ausência do número de código de barras no comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-o deserto. Precedentes.
3. A posterior comprovação de pagamento só afasta a deserção se recolhido em dobro e dentro do prazo estipulado.
4. Cumpre ressaltar que "o recurso especial sujeita-se a um duplo controle de admissibilidade, não vinculando esta Corte - a quem compete o juízo definitivo de admissibilidade do apelo nobre - a prévia decisão emanada pelo Tribunal de segundo grau" (AgInt no REsp n. 2.089.611/SP, Relator Ministro Moura Ribeiro, Terceira Turma, julgado em 19/8/2024, DJe de 22/8/2024).
5. Aplica-se o disposto no art. 85, § 11, do CPC/2015 e no Enunciado Administrativo 7 /STJ ("Somente nos recursos interpostos contra decisão publicada a partir de 18 de março de 2016 será possível o arbitramento de honorários sucumbenciais recursais, na forma do art. 85, § 11, do NCPC"), impondo a majoração do percentual já fixado, relativo aos honorários advocatícios, independe de comprovação do efetivo trabalho adicional pelo advogado da parte recorrida, sendo, portanto, devida mesmo quando não apresentadas contrarrazões.
6. Agravo interno desprovido.
(AgInt no REsp n. 2.145.179/SP, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 28/10/2024, DJe de 5/11/2024.)
Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.
Diante do exposto, inadmito o recurso especial interposto.

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
  'dobro',
  'JG alegada - ato incompativel (pagamento anterior no recurso originario) [RE]',
  'Dobro §4 - JG alegada, ato incompativel (RE)',
  $BODY$

A parte recorrente não comprovou o preparo, no ato da interposição do recurso extraordinário, sob a alegação de que é beneficiária da assistência judiciária gratuita.

No entanto, em que pese a alegação de gratuidade, verifica-se que, ao interpor o recurso originário, a parte efetuou o pagamento das custas recursais, praticando ato incompatível com a pretendida isenção.

Isso porque o pagamento das despesas do preparo afasta a presunção relativa de hipossuficiência, constituindo renúncia à pretendida isenção, sobretudo considerando serem vedados comportamentos contraditórios em nosso ordenamento jurídico.

Sendo assim, tendo em vista que a parte, no ato da interposição do recurso, não comprovou o preparo, impõe-se que realize o recolhimento em dobro do preparo recursal, sob pena de ser considerado deserto o recurso extraordinário por ela interposto, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Portanto, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, comprove o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/600448 - AR - TR - DOBRO - recolhimento recurso originário - ato incompatível.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'JG alegada - concessao nao localizada nos autos [RE]',
  'Dobro §4 - JG alegada, concessao nao localizada (RE)',
  $BODY$

A parte recorrente não comprovou, no ato da interposição do recurso extraordinário, como prevê o artigo 1.007 do Código de Processo Civil, o recolhimento do preparo, sob a alegação de que é beneficiária da assistência judiciária gratuita.

Entretanto, o deferimento da concessão do benefício não foi localizado nos autos. Inclusive, da análise do processo, verificou-se que, em cumprimento ao despacho proferido pelo Juízo de origem, a parte autora, ora recorrente, realizou recolhimentos anteriores, circunstância incompatível com a alegada dispensa automática do preparo recursal nesta fase.

Sendo assim, tendo em vista que a parte, no ato da interposição do recurso, não comprovou o preparo, impõe-se que realize o recolhimento em dobro do preparo recursal, sob pena de ser considerado deserto o recurso extraordinário por ela interposto, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Portanto, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, comprove o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'JG alegada — ato incompatível (pagamento anterior no recurso originário)',
  'Dobro §4º — JG alegada com ato incompatível (pagamento anterior) (REsp)',
  $BODY$

A parte recorrente não comprovou o preparo, no ato da interposição do recurso especial, como prevê o artigo 1.007, do Código de Processo Civil, sob alegação de que é beneficiária da assistência judiciária gratuita.
No entanto, em que pese o benefício ter sido concedido à parte recorrente na sentença (mov. [MOV_SENTENCA], dos autos originários), o fato é que ao interpor o recurso de apelação cível originário a parte efetuou o pagamento das custas recursais (mov. [MOV_PAGAMENTO_APELACAO]), praticando assim ato incompatível com o deferimento da gratuidade da justiça.
Isso porque, "(...) o pagamento das despesas do preparo afasta a presunção relativa de hipossuficiência, constituindo renúncia à pretendida isenção, sobretudo considerando serem vedados comportamentos contraditórios em nosso ordenamento jurídico." (AgInt no AREsp 1410995/GO, Rel. Ministro MARCO AURÉLIO BELLIZZE, TERCEIRA TURMA, julgado em 26/08/2019, DJe 30/08/2019).
Sendo assim, tendo em vista que a parte, no ato da interposição do recurso, não comprovou o preparo, bem como não requereu a concessão do benefício da assistência judiciária gratuita, impõe-se que realize o recolhimento em dobro do preparo recursal, sob pena de ser considerado deserto o recurso especial por ela interposto (artigo 1.007, § 4º, do Código de Processo Civil).
Portanto, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, comprove o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça (Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026), por meio da guia GRU-COBRANÇA.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/600448 - AR - TR - DOBRO - recolhimento recurso originário - ato incompatível.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'JG alegada — concessão não localizada nos autos',
  'Dobro §4º — JG alegada sem localização de deferimento nos autos (REsp)',
  $BODY$

A parte recorrente não comprovou, no ato da interposição do recurso especial, como prevê o artigo 1.007, do Código de Processo Civil, sob alegação de que é beneficiária da assistência judiciária gratuita.
Entretanto, o deferimento da concessão do benefício não foi localizado nos autos. Inclusive, da análise dos autos, verificou-se que, em cumprimento ao despacho proferido pelo Juízo de 1º Grau (mov. [MOV_DESPACHO_1GRAU], dos autos originários), a parte autora, ora recorrente, realizou o recolhimento das custas processuais (mov. [MOV_CUSTAS], dos autos originários).
Sendo assim, tendo em vista que a parte, no ato da interposição do recurso, não comprovou o preparo, bem como não requereu a concessão da gratuidade de justiça, impõe-se que realize o recolhimento em dobro do preparo recursal, sob pena de ser considerado deserto o recurso especial por ela interposto (artigo 1.007, § 4º, do Código de Processo Civil).
Portanto, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, comprove o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou so as guias GRU e FUNJUS (sem comprovantes de pagamento) [RE]',
  'Dobro §4 - juntou apenas guias GRU e FUNJUS (RE)',
  $BODY$

Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso extraordinário, intime-se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas recursais.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596212 - AR - TR - DOBRO - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou so os comprovantes GRU e FUNJUS (sem as guias de recolhimento) [RE]',
  'Dobro §4 - juntou apenas comprovantes GRU e FUNJUS (RE)',
  $BODY$

A parte recorrente não comprovou o recolhimento do preparo, visto que juntou os comprovantes de pagamento sem as respectivas guias de recolhimento.

Conforme a jurisprudência do Supremo Tribunal Federal, os recursos a ele dirigidos devem estar acompanhados das guias de recolhimento devidamente preenchidas e dos respectivos comprovantes de pagamento, ambos de forma visível e legível, sob pena de deserção.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro das custas recursais.

Para tanto, a parte deverá:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento juntados;
2. realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, referente às custas locais, nos termos da Lei Estadual 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596212 - AR - TR - DOBRO - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)',
  'Dobro §4º — juntou apenas as guias GRU e FUNJUS sem comprovantes (REsp)',
  $BODY$

A parte não comprovou o recolhimento do preparo, visto que juntou aos autos tão somente as guias de recolhimento ([MOV_GUIA]), sem os respectivos comprovantes de pagamento.

A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais), por meio do Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

$BODY$,
  ARRAY['minutas/Caso 10.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)',
  'Dobro §4º — juntou apenas comprovantes GRU e FUNJUS (REsp)',
  $BODY$

A parte recorrente não comprovou o recolhimento do preparo, visto que juntou os comprovantes de pagamento (movs. [MOV_COMPROVANTE]) sem as respectivas guias de recolhimento.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro das custas recursais.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento de movs. [MOV_COMPROVANTE];
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRUCOBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

$BODY$,
  ARRAY['minutas/596207 - AR - TR - DOBRO - Juntou apenas os comprovantes ou as guias - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Nao pagou / documentos N/D (ausentes ou invalidos) [RE]',
  'Dobro §4 - docs N/D (RE)',
  $BODY$

Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso extraordinário, intime-se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas recursais.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/646311 - AR - TR - JUNTAR DECRETO e DOBRO - RE.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Preparo juntado apos o ato da interposicao (pagamento simples) [RE]',
  'Dobro §4 - complementacao §2 - preparo apos interposicao (RE)',
  $BODY$

A parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, conforme prevê o artigo 1.007 do Código de Processo Civil, visto que o recurso extraordinário foi apresentado no último dia do prazo recursal e o preparo recursal foi juntado aos autos tão somente em momento posterior.

Nos termos da jurisprudência consolidada, na hipótese de não comprovação do recolhimento do preparo no ato de interposição do recurso, o recorrente será intimado para efetuá-lo em dobro, sob pena de deserção, conforme estabelece o artigo 1.007, § 4º, do Código de Processo Civil.

Da análise dos documentos juntados pela parte, verifica-se que, em que pese tenha sido comprovado o recolhimento das custas devidas ao Supremo Tribunal Federal e ao Fundo da Justiça - FUNJUS, o fato é que o recolhimento se deu na forma simples.

Dessa forma, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se a parte recorrente para, no prazo de 5 (cinco) dias, comprovar o recolhimento de:
- R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, em complementação às custas locais, perfazendo o valor dobrado devido, nos termos da Lei Estadual 22.956/2025;
- R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), por meio de guia GRU-Cobrança, em complementação às custas devidas ao Supremo Tribunal Federal, perfazendo o valor dobrado devido, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/598979 - AR - TR - DOBRO - Preparo após interposição - Intimar para complementação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Preparo juntado após o ato da interposição (pagamento simples)',
  'Dobro §4º — preparo comprovado após interposição, valor simples (REsp)',
  $BODY$

A parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, conforme prevê o artigo 1.007, do Código de Processo Civil, visto que o recurso especial foi apresentado no dia [DATA_INTERPOSICAO] (último dia do prazo recursal) e o preparo recursal foi juntado aos autos tão somente em [DATA_JUNTADA_PREPARO] (mov. [MOV_PREPARO]).
Nos termos da jurisprudência do Superior Tribunal de Justiça, "(...) Na hipótese de não comprovação do recolhimento do preparo no ato de interposição do recurso, o recorrente será intimado para efetuá-lo em dobro, sob pena de consolidação da deserção do pleito recursal, conforme estabelece o art. 1.007, § 4º, do CPC" (AgInt no AREsp n. 2.362.957/SP, relator Ministro João Otávio de Noronha, Quarta Turma, julgado em 9/12/2024, DJEN de 12/12/2024.).
Da análise dos documentos juntados pela parte, verifica-se que, em que pese tenha sido comprovado o recolhimento das custas devidas ao Superior Tribunal de Justiça (mov. [MOV_GRU]) e ao Fundo de Justiça - FUNJUS (mov. [MOV_FUNJUS]), o fato é que o recolhimento das custas se deu na forma simples.
Dessa forma, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se a parte recorrente para, no prazo de 5 (cinco) dias, comprovar o recolhimento de:
- R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS (Lei Estadual nº 22.956/2025), em complementação às custas devidas ao Tribunal de Justiça do Estado do Paraná, perfazendo o valor dobrado devido;
- R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, em complementação às custas devidas ao Superior Tribunal de Justiça, perfazendo o valor dobrado devido.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/598979 - AR - TR - DOBRO - Preparo após interposição - Intimar para complementação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Documentos de preparo nao localizados (N/D) + Decreto nao apresentado',
  'Dobro §4 + Decreto - docs N/D (REsp)',
  $BODY$

Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN, meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte recorrente, nos termos dos artigos 1.003, § 6º, c/c 224, § 1º, ambos do Código de Processo Civil, para, em 5 (cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico, a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser reconhecida a intempestividade do recurso, visto que o documento já juntado não é suficiente para tal finalidade.

Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso, a parte recorrente deverá realizar, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme a Instrução Normativa STJ/GP n. 13, de 27 de janeiro de 2026;
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça.

Ressalta-se que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Documentos de preparo nao localizados (N/D) + Decreto nao apresentado [RE]',
  'Dobro §4 + Decreto - docs N/D (RE)',
  $BODY$

Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN, meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte recorrente, nos termos dos artigos 1.003, § 6º, c/c 224, § 1º, ambos do Código de Processo Civil, para, em 5 (cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico, a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser reconhecida a intempestividade do recurso, visto que o documento já juntado não é suficiente para tal finalidade.

Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso, a parte recorrente deverá realizar, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais), por meio do Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Ressalta-se que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/646311 - AR - TR - JUNTAR DECRETO e DOBRO - RE.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Juntou so comprovantes (sem guias de recolhimento) + Decreto nao apresentado',
  'Dobro §4 + Decreto - so comprovantes (REsp)',
  $BODY$

Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN, meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte recorrente, nos termos dos artigos 1.003, § 6º, c/c 224, § 1º, ambos do Código de Processo Civil, para, em 5 (cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico, a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser reconhecida a intempestividade do recurso.

Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso, visto que juntou os comprovantes de pagamento sem as respectivas guias, a parte recorrente deverá comprovar, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo recursal.

Para tanto, a parte deverá:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento juntados;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme a Instrução Normativa STJ/GP n. 13, de 27 de janeiro de 2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, referente às custas locais, nos termos da Lei Estadual 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Juntou so comprovantes (sem guias de recolhimento) + Decreto nao apresentado [RE]',
  'Dobro §4 + Decreto - so comprovantes (RE)',
  $BODY$

Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN, meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte recorrente, nos termos dos artigos 1.003, § 6º, c/c 224, § 1º, ambos do Código de Processo Civil, para, em 5 (cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico, a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser reconhecida a intempestividade do recurso.

Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso, visto que juntou os comprovantes de pagamento sem as respectivas guias, a parte recorrente deverá comprovar, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo recursal.

Para tanto, a parte deverá:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento juntados;
2. realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, referente às custas locais, nos termos da Lei Estadual 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Juntou só comprovantes (sem guias de recolhimento) + Decreto não apresentado',
  'Dobro §4º + Decreto Judiciário — comprovantes sem guias (REsp)',
  $BODY$

Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN, meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte Recorrente, nos termos dos artigos 1.003, § 6º c/c 224, §1º, ambos do Código de Processo Civil para, em 5 (cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico, a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser reconhecida a intempestividade do recurso.
Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso, visto que juntou os comprovantes de pagamento sem as respectivas guias de recolhimento, a parte recorrente deverá comprovar, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo recursal.
A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)
Para tanto, a parte deverá:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento de [MOV_COMPROVANTE];
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais (Lei Estadual nº 22.956/2025), totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
Insta salientar que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf', 'minutas/677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf']
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
  '1 guia certa (GRU ou FUNJUS) + comprovante ausente/invalido [RE]',
  'Dobro §4 - 1 guia + comprovante ausente (RE)',
  $BODY$

Verifica-se que a parte não comprovou integralmente o recolhimento do preparo, visto que apresentou apenas uma das guias de recolhimento com documento de pagamento ausente ou inválido, além de não ter demonstrado a regularidade do outro recolhimento devido.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar o comprovante de pagamento referente à guia de recolhimento já juntada, no qual conste o código de barras de forma visível e legível, e, ainda, efetuar o recolhimento complementar de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, ou de R$ 300,00, referente ao FUNJUS, conforme o documento faltante ou inválido;
2. caso não seja possível apresentar o documento mencionado no item 1, realizar o recolhimento integral em dobro da parcela respectiva, sendo R$ 2.315,18 para o Supremo Tribunal Federal ou R$ 600,00 para o FUNJUS, conforme o caso;
3. regularizar a outra parcela do preparo, se ainda não demonstrada, com a apresentação da guia e do comprovante correspondentes.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596759 - AR - TR - DOBRO - Comprovante GRU sem código de barras + FUNJUS.pdf', 'minutas/599298 - AR - TR - DOBRO - Guia de recolhimento sem comprovante de pagamento.pdf']
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
  '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido',
  'Dobro §4º — uma guia apresentada e comprovante ausente/inválido (REsp)',
  $BODY$

Verifica-se que a parte não comprovou o recolhimento do preparo, visto que não é possível visualizar o código de barras no documento apresentado como comprovante de pagamento no mov. [MOV_COMPROVANTE]. Ademais, não comprovou o recolhimento das custas destinadas a este Tribunal de Justiça, como prevê a Lei Estadual nº 22.956/2025.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar o comprovante de pagamento referente à guia de recolhimento de mov. [MOV_GUIA], no qual conste o código de barras de forma visível e legível e, ainda, efetuar novo recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
2. caso não seja possível apresentar o documento mencionado no item 1, realizar o recolhimento R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026;
3. realizar o recolhimento da importância de R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais, previstas na Lei Estadual nº 22.956/2025, por meio de guia gerada no próprio sítio deste Tribunal de Justiça, https://www. tjpr.jus.br/preparo-de-recurso-2o-grau.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

$BODY$,
  ARRAY['minutas/596759 - AR - TR - DOBRO - Comprovante GRU sem código de barras + FUNJUS.pdf', 'minutas/599298 - AR - TR - DOBRO - Guia de recolhimento sem comprovante de pagamento.pdf']
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
  '2 agendamentos bancários como comprovante',
  'Dobro §4º — 2 comprovantes de agendamento bancário (REsp)',
  $BODY$

Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que os comprovantes de agendamento bancário juntados nos [MOV_COMPROVANTE] não são documentos aptos a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Nesse sentido:
PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM RECURSO ESPECIAL. PREPARO RECURSAL. APRESENTAÇÃO DE COMPROVANTE DE AGENDAMENTO. IRREGULARIDADE. INTIMAÇÃO PARA RECOLHER EM DOBRO. JUNTADA POSTERIOR DA GUIA DE RECOLHIMENTO. PRECLUSÃO CONSUMATIVA. DESERÇÃO. SÚMULA 187/STJ.
1. Tendo o recurso sido interposto contra decisão publicada na vigência do Código de Processo Civil de 2015, devem ser exigidos os requisitos de admissibilidade na forma nele previsto, conforme Enunciado Administrativo n. 3/2016/STJ.
2. É deserto o recurso dirigido a esta Corte se a parte não comprova, adequada e tempestivamente, o recolhimento do preparo recursal, a despeito de haver sido regularmente intimada na forma do art. 1.007, § 4º, do CPC/2015. Precedentes.
3. A juntada posterior de comprovante de pagamento de custas não é capaz de superar a deserção em razão da preclusão consumativa.
4. Agravo interno não provido.
(AgInt nos EREsp n. 1.848.579/CE, relator Ministro Benedito Gonçalves, Corte Especial, julgado em 27/9/2022, DJe de 3/10/2022.)

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de [MOV_GUIA];
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar a partir de 02.02.2026, eis que devidas em dobro;
3. realizar novo recolhimento da importância de R$ 66,85 (sessenta e seis reais e oitenta e cinco centavos) ao Fundo da Justiça – FUNJUS (Lei Estadual nº 21.868, de 18/12/2023), eis que devido em dobro.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ 133,70 (cento e trinta e três reais e setenta centavos), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 21.868, de 18/12/2023).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

$BODY$,
  ARRAY['minutas/Caso 12.pdf']
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
  '2 comprovantes sem codigo de barras legivel [RE]',
  'Dobro §4 - 2 comprovantes sem codigo de barras (RE)',
  $BODY$

Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, visto que não é possível visualizar os códigos de barras nos documentos apresentados como comprovantes de pagamento.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento juntadas, nos quais constem os códigos de barras de forma visível e legível;
2. realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, referente às custas locais, nos termos da Lei Estadual 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596760 - AR - TR - DOBRO - Ausência código de barras - Recurso Especial.pdf', 'minutas/599705 - AR - TR - DOBRO - Comprovante sem código de barras e sem guia.pdf']
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
  '2 comprovantes sem código de barras legível',
  'Dobro §4º — 2 comprovantes sem código de barras legível (REsp)',
  $BODY$

Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, visto que não é possível visualizar os códigos de barras nos documentos apresentados como comprovantes de pagamento no movs. [MOV_COMPROVANTE].

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de movs. [MOV_GUIA], nos quais constem o código de barras de forma visível e legível;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRUCOBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

$BODY$,
  ARRAY['minutas/596760 - AR - TR - DOBRO - Ausência código de barras - Recurso Especial.pdf', 'minutas/599705 - AR - TR - DOBRO - Comprovante sem código de barras e sem guia.pdf']
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
  '2 documentos nao localizados (N/D) [RE]',
  'Dobro §4 - 2 docs N/D (RE)',
  $BODY$

Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso extraordinário, intime-se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas recursais.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/646311 - AR - TR - JUNTAR DECRETO e DOBRO - RE.pdf']
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
  '2 documentos não localizados (N/D)',
  'Dobro §4º — ausência total de documentos de preparo (REsp)',
  $BODY$

Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso especial, intime-se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas recursais.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos centavos) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 2.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRUCOBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.

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
  'Comprovante GRU sem guia + FUNJUS nao recolhida [RE]',
  'Dobro §4 - comprovante GRU sem guia + FUNJUS ausente (RE)',
  $BODY$

A parte recorrente não comprovou o recolhimento do preparo, visto que juntou apenas o comprovante de pagamento das custas devidas ao Supremo Tribunal Federal, sem a respectiva guia. Ainda, deixou de comprovar o recolhimento das custas destinadas ao Fundo da Justiça - FUNJUS.

Assim sendo, e considerando a ausência de comprovação das custas recursais no ato da interposição do recurso, intime-se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo recursal, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Para tanto, a parte deverá:
1. apresentar a guia referente ao comprovante de pagamento já juntado e, ainda, realizar novo recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), por meio de guia GRU-Cobrança, eis que devida em dobro;
2. caso seja impossível apresentar referida guia, efetuar o pagamento da importância de R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
3. comprovar o pagamento de R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025, por meio de guia gerada no sítio deste Tribunal de Justiça.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596206 - AR - TR - DOBRO - Juntada de comprovante de pagamento do GRU - Recurso Especial.pdf']
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
  'Comprovante GRU sem guia + FUNJUS não recolhida',
  'Dobro §4º — comprovante GRU sem guia + FUNJUS não recolhida (REsp)',
  $BODY$

A parte recorrente não comprovou o recolhimento do preparo, visto que juntou o comprovante de pagamento das custas devidas ao Superior Tribunal de Justiça (movs. [MOV_COMPROVANTE_GRU]), sem a respectiva guia. Ainda, deixou de comprovar o recolhimento das custas destinadas ao Fundo da Justiça - FUNJUS.
Ressalta-se que a jurisprudência do Superior Tribunal de Justiça é pacífica no sentido de que "No ato de interposição, o recurso especial deve estar acompanhado das guias do preparo, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível, sob pena de deserção." (AgRg no AREsp 474.739/MG, Rel. Ministro JOÃO OTÁVIO DE NORONHA, TERCEIRA TURMA, julgado em 15/03/2016, DJe 28/03/2016).
Assim sendo, e considerando a ausência de comprovação das custas recursais no ato da interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, o recolhimento em dobro do preparo recursal.
Para tanto, a parte deverá:
1) apresentar a guia referente ao comprovante de pagamento juntado ao mov. [MOV_COMPROVANTE_GRU] e, ainda, realizar novo recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA (Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026), eis que devido em dobro;
2) caso seja impossível apresentar referida guia, efetuar o pagamento da importância de R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça;
3) comprovar o pagamento de R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/596206 - AR - TR - DOBRO - Juntada de comprovante de pagamento do GRU - Recurso Especial.pdf']
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
  'Comprovantes com status ''Em processo de autenticação''',
  'Dobro §4º — comprovantes "Em processo de autenticação" (REsp)',
  $BODY$

Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso especial, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas recursais.
Cumpre esclarecer que não foi possível verificar o efetivo recolhimento das custas recursais, já que consta a informação "Em processo de autenticação" nos comprovantes juntados nos movs. [MOV_COMPROVANTE], não estando aptos a comprovar o recolhimento efetivo das custas.
Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de [MOV_GUIA], nos quais constem que o recolhimento foi efetivamente efetuado;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais (Lei Estadual nº 22.956/2025), totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
Insta salientar que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/676940 - AR - TR - DOBRO - EM PROCESSO DE AUTENTICAÇÃO - VALOR 2026.pdf']
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
  'Comprovantes com status Em processo de autenticacao [RE]',
  'Dobro §4 - comprovantes em autenticacao (RE)',
  $BODY$

Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso extraordinário, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas recursais.

Cumpre esclarecer que não foi possível verificar o efetivo recolhimento das custas recursais, já que consta a informação "Em processo de autenticação" nos comprovantes juntados, não estando aptos a comprovar o recolhimento efetivo das custas.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento juntadas, nos quais conste que o recolhimento foi efetivamente efetuado;
2. realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, referente às custas locais, nos termos da Lei Estadual 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/676940 - AR - TR - DOBRO - EM PROCESSO DE AUTENTICAÇÃO - VALOR 2026.pdf']
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
  'Divergencia entre codigo de barras da guia e do comprovante [RE]',
  'Dobro §4 - divergencia codigo de barras (RE)',
  $BODY$

Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que não há correspondência entre o código de barras constante na guia de recolhimento e o do comprovante de pagamento apresentado.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento juntadas;
2. realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, referente às custas locais, nos termos da Lei Estadual 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/670902 - AR - TR - DOBRO - DIVERGÊNCIA CÓDIGO DE BARRAS - NOVO VALOR 2026.pdf']
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
  'Divergência entre código de barras da guia e do comprovante',
  'Dobro §4º — divergência no código de barras guia/comprovante (REsp)',
  $BODY$

Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que não há correspondência entre o código de barras constante na guia de recolhimento de [MOV_GUIA] e o do comprovante de pagamento de [MOV_COMPROVANTE].
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "A falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento impede a aferição da regularidade do preparo, tornando o recurso deserto." (AgInt nos EDcl no AREsp n. 2.664.415/SP, relatora Ministra Daniela Teixeira, Terceira Turma, julgado em 5/5/2025, DJEN de 8/5/2025.).
Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.
Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de [MOV_GUIA];
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais (Lei Estadual nº 22.956/2025), totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
Insta salientar que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/670902 - AR - TR - DOBRO - DIVERGÊNCIA CÓDIGO DE BARRAS - NOVO VALOR 2026.pdf']
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
  'Guia GRU sem comprovante + FUNJUS não recolhida',
  'Dobro §4º — guia GRU sem comprovante + FUNJUS não recolhida (REsp)',
  $BODY$

Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, já que juntou a guia de recolhimento das custas destinadas ao Superior Tribunal de Justiça (mov. [MOV_GUIA_GRU]), sem o respectivo comprovante de pagamento. Ademais não realizou o recolhimento das custas locais.
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024).
Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.
Para tanto, a parte recorrente deverá:
1. apresentar o comprovante de pagamento referente à guia de recolhimento de [MOV_GUIA_GRU] e, ainda, realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, eis que devidas em dobro;
2. caso não seja possível juntar o documento mencionado no item 1, deverá realizar o recolhimento da importância de R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026;
3. realizar o recolhimento da importância de R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, por meio de guia gerada no site deste Tribunal de Justiça, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025).
Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/Caso 01.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_proc',
  'Procuracao e preparo em dobro - ambos ausentes',
  'Dobro §4 + procuracao - ambos ausentes (REsp)',
  $BODY$

Intime-se o(a) recorrente, nos termos do artigo 932, parágrafo único, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar a sua representação processual, sob pena de ser considerado inexistente o apelo, providenciando a juntada da procuração, ou, se for o caso, da cadeia completa de substabelecimentos, a fim de que seja possível aferir a regularidade postulatória do advogado subscritor(a) do presente recurso, uma vez que o instrumento procuratório não foi localizado nos autos.

Ainda, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso, a parte deverá, em igual prazo, sob pena de deserção, realizar o recolhimento em dobro das custas recursais, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná, nos termos da Lei Estadual 22.956/2025;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, nos termos da Instrução Normativa STJ/GP n. 13, de 27 de janeiro de 2026.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_proc',
  'Procuracao e preparo em dobro - ambos ausentes [RE]',
  'Dobro §4 + procuracao - ambos ausentes (RE)',
  $BODY$

Intime-se o(a) recorrente, nos termos do artigo 932, parágrafo único, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar a sua representação processual, sob pena de ser considerado inexistente o apelo, providenciando a juntada da procuração, ou, se for o caso, da cadeia completa de substabelecimentos, a fim de que seja possível aferir a regularidade postulatória do advogado subscritor(a) do presente recurso, uma vez que o instrumento procuratório não foi localizado nos autos.

Ainda, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso extraordinário, a parte deverá, em igual prazo, sob pena de deserção, realizar o recolhimento em dobro das custas recursais, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025.

Cumpre esclarecer que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.

$BODY$,
  ARRAY['minutas/596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_proc',
  'Procuração e preparo em dobro — ambos ausentes',
  'Dobro §4º + Procuração — ambos ausentes (REsp)',
  $BODY$

Intime-se o(a) Recorrente, nos termos do artigo 932, parágrafo único, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar a sua representação processual, sob pena de ser considerado inexistente o apelo (Súmula 115 do STJ), providenciando a juntada da procuração, ou, se for o caso, da cadeia completa de substabelecimentos, a fim de que seja possível aferir a regularidade postulatória do advogado [NOME_ADVOGADO], subscritor(a) do presente recurso por meio de assinatura digital, uma vez que o instrumento procuratório a ele(a) conferido não foi localizado nos autos.
Ainda, diante da ausência de comprovação do pagamento do preparo no ato da interposição do recurso, a parte deverá, em igual prazo, sob pena de deserção, realizar o recolhimento em dobro das custas recursais (artigo 1.007, § 4º, do Código de Processo Civil).
Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025);
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
Diligências necessárias.

$BODY$,
  ARRAY['minutas/596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

