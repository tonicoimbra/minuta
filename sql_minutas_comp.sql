-- Arquivo fonte: 596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf
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
  ARRAY['596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: 596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf
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
  ARRAY['596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: 596359 - AR - TR - Complementação preparo - GRU - Recurso Extraordinário.pdf
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
  ARRAY['596359 - AR - TR - Complementação preparo - GRU - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: 676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf
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
  ARRAY['676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: 676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf
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
  ARRAY['676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: Caso 01.pdf
-- NOVO NÓ NECESSÁRIO: Caso 01.pdf → REsp, categoria dobro, vício misto: guia GRU juntada sem comprovante de pagamento + FUNJUS não recolhida.

-- Arquivo fonte: Caso 02.pdf
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
  ARRAY['Caso 02.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: Caso 05.pdf
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
  ARRAY['Caso 05.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: Caso 07.pdf
-- NOVO NÓ NECESSÁRIO: Caso 07.pdf → REsp, categoria comp_funjus, vício específico: divergência entre o código de barras da guia FUNJUS e o do comprovante de pagamento.

-- Arquivo fonte: Caso 08.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + comprovante não localizado (N/D)',
  'Complementação — FUNJUS não comprovada (REsp)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção. Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www. tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar a partir de 18/03/2026. Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.
$BODY$,
  ARRAY['Caso 08.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Arquivo fonte: Caso 10.pdf
-- NOVO NÓ NECESSÁRIO: Caso 10.pdf → REsp, categoria dobro, vício: juntou só as guias GRU e FUNJUS, sem os respectivos comprovantes de pagamento.

-- Arquivo fonte: Caso 12.pdf
-- NOVO NÓ NECESSÁRIO: Caso 12.pdf → REsp, categoria dobro, vício: dois comprovantes de agendamento bancário apresentados no lugar dos comprovantes efetivos.

-- Arquivo fonte: Caso 13.pdf
-- NOVO NÓ NECESSÁRIO: Caso 13.pdf → REsp, categoria dobro, vício: comprovantes de pagamento sem código de barras legível para conferência com as guias.
