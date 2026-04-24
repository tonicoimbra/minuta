-- =============================================================================
-- MINUTAS TJPR — MIGRAÇÃO CONSOLIDADA
-- Gerado em 2026-04-22 a partir de 51 PDFs via orquestração Codex (4 agentes)
-- Corrigido e consolidado manualmente após revisão dos resultados.
--
-- COBERTURA: 18 INSERTs para nós terminais existentes no fluxo.
-- NOVOS NÓS NECESSÁRIOS: listados ao final (requerem alterações em flow.ts).
-- RE (Recurso Extraordinário): cobertura parcial via chaves específicas [RE] no option_text.
--
-- PRÉ-REQUISITO: a tabela minuta_templates deve ter UNIQUE (step_key, option_text).
-- Se não existir, execute antes:
--   ALTER TABLE minuta_templates ADD CONSTRAINT uniq_step_option UNIQUE (step_key, option_text);
-- =============================================================================

-- ─────────────────────────────────────────────────────────────────────────────
-- COMPLEMENTAÇÃO — intimação §2º, primeira irregularidade
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: comp_gru ▸ "Guia GRU juntada + comprovante não localizado (N/D)"
-- Fonte: 596358 (valor GRU atualizado IN STJ/GP 13 de 27/01/2026, vigente 02/02/2026)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Guia GRU juntada + comprovante não localizado (N/D)',
  'Complementação §2º — GRU sem comprovante de pagamento (REsp)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso especial, sob pena de deserção.

Para tanto, deve ser recolhida a importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.
$BODY$,
  ARRAY['596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru ▸ "Não juntou nem a guia GRU nem o comprovante de pagamento"
-- Fonte: 596358 (mesma base textual da intimação para complementação de preparo GRU)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Não juntou nem a guia GRU nem o comprovante de pagamento',
  'Complementação §2º — GRU sem guia e sem comprovante (REsp)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso especial, sob pena de deserção.

Para tanto, deve ser recolhida a importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte, número único do processo, bem como o Número de Referência, código que identifica o recolhimento.
$BODY$,
  ARRAY['596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru ▸ "Juntou só a guia GRU (sem comprovante de pagamento) [RE]"
-- Fonte: 596359 (Recurso Extraordinário — custas STF)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_gru',
  'Juntou só a guia GRU (sem comprovante de pagamento) [RE]',
  'Complementação §2º — guia GRU juntada sem comprovante (RE)',
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

-- step_key: comp_funjus ▸ "Juntou só a guia FUNJUS (sem comprovante de pagamento)"
-- Fonte: Caso 02 (Lei Estadual nº 21.868 — valor R$ 66,85; versão anterior a 18/03/2026)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Juntou só a guia FUNJUS (sem comprovante de pagamento)',
  'Complementação §2º — guia FUNJUS juntada sem comprovante (REsp)',
  $BODY$
O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de recolhimento de [MOV_GUIA], sem o respectivo comprovante de pagamento.

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no [MOV_GUIA], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

Caso não seja possível apresentar referido documento, a parte deverá realizar novo recolhimento da importância de R$ 66,85 (sessenta e seis reais e oitenta e cinco centavos) ao Fundo da Justiça – FUNJUS, referente às custas do Tribunal de Justiça do Estado do Paraná, conforme Lei Estadual nº 21.868, de 18/12/2023.
$BODY$,
  ARRAY['Caso 02.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus ▸ "Guia FUNJUS juntada + comprovante de agendamento bancário"
-- Fonte: Caso 05 (Lei Estadual nº 22.956/2025 — valor R$ 300,00; vigente 18/03/2026)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + comprovante de agendamento bancário',
  'Complementação §2º — comprovante de agendamento bancário FUNJUS (REsp)',
  $BODY$
O recurso não foi devidamente preparado, visto que o pagamento das custas recursais devidas a este Tribunal de Justiça não restou comprovado, já que o comprovante de agendamento bancário juntado no [MOV_COMPROVANTE] não é documento apto a comprovar o efetivo recolhimento das custas (AgInt nos EAREsp n. 940.673/SP, relator Ministro João Otávio de Noronha, Corte Especial, julgado em 8/4/2025, DJEN de 14/4/2025.).

Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena de deserção.

Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no [MOV_GUIA], no qual conste o código de barras de forma visível e legível, "(...) para que não haja dúvida acerca da validade do documento e do seu efetivo recolhimento." (AREsp 2062229-SP/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03/2022).

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

-- step_key: comp_funjus ▸ "Guia FUNJUS juntada + comprovante não localizado (N/D)"
-- Fonte: 676727 + Caso 08 (mesmo template; 676727 vigente a partir de 18/03/2025→2026)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Guia FUNJUS juntada + comprovante não localizado (N/D)',
  'Complementação §2º — FUNJUS sem comprovação de pagamento (REsp)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar a partir de 18/03/2026.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.
$BODY$,
  ARRAY['676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf', 'Caso 08.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus ▸ "Não juntou nem a guia FUNJUS nem o comprovante de pagamento"
-- Fonte: 676727 (mesma base textual da intimação para complementação FUNJUS)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_funjus',
  'Não juntou nem a guia FUNJUS nem o comprovante de pagamento',
  'Complementação §2º — FUNJUS sem guia e sem comprovante (REsp)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do recurso, sob pena de deserção.

Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar a partir de 18/03/2026.

Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível, são imprescindíveis para fins de comprovação do efetivo recolhimento do preparo.
$BODY$,
  ARRAY['676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- PAGAMENTO EM DOBRO — intimação §4º, preparo não comprovado no ato
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: dobro ▸ "Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)"
-- Fonte: Caso 10 (valores: R$ 600,00 FUNJUS dobro + R$ 540,24 GRU dobro — Lei 22.956/2025)
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
  ARRAY['Caso 10.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro ▸ "Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)"
-- Fonte: 596207 (valores: R$ 270,12 GRU + R$ 300,00 FUNJUS — Lei 22.956/2025)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)',
  'Dobro §4º — juntou apenas comprovantes GRU e FUNJUS sem guias (REsp)',
  $BODY$
A parte recorrente não comprovou o recolhimento do preparo, visto que juntou os comprovantes de pagamento ([MOV_COMPROVANTE]) sem as respectivas guias de recolhimento.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Para comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro das custas recursais.

Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento de [MOV_COMPROVANTE];
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
$BODY$,
  ARRAY['596207 - AR - TR - DOBRO - Juntou apenas os comprovantes ou as guias - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd ▸ "2 agendamentos bancários como comprovante"
-- Fonte: Caso 12 (valores: R$ 270,12 GRU + R$ 66,85 FUNJUS — Lei 21.868/2023, valores pré-18/03/2026)
-- ATENÇÃO: valores de FUNJUS desatualizados; verificar se atualização é necessária para R$ 300,00/R$ 600,00
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
  ARRAY['Caso 12.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd ▸ "2 comprovantes sem código de barras legível"
-- Fonte: 596760 + 599705 (valores: R$ 270,12 GRU + R$ 300,00 FUNJUS — Lei 22.956/2025)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '2 comprovantes sem código de barras legível',
  'Dobro §4º — 2 comprovantes sem código de barras legível (REsp)',
  $BODY$
Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, visto que não é possível visualizar os códigos de barras nos documentos apresentados como comprovantes de pagamento nos [MOV_COMPROVANTE].

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de [MOV_GUIA], nos quais constem o código de barras de forma visível e legível;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).

Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
$BODY$,
  ARRAY[
    '596760 - AR - TR - DOBRO - Ausência código de barras - Recurso Especial.pdf',
    '599705 - AR - TR - DOBRO - Comprovante sem código de barras e sem guia.pdf'
  ]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd ▸ "2 documentos não localizados (N/D)"
-- Fonte: 596209 (valores: R$ 600,00 FUNJUS + R$ 540,24 GRU — Lei 22.956/2025)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '2 documentos não localizados (N/D)',
  'Dobro §4º — ausência total de documentos de preparo (REsp)',
  $BODY$
Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da interposição do recurso especial, intime-se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas recursais.

Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais) ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais (Lei Estadual nº 22.956/2025), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
$BODY$,
  ARRAY['596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd ▸ "1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido"
-- Fonte: 596759 + 599298 (valores: R$ 270,12 GRU + R$ 300,00 FUNJUS — Lei 22.956/2025)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido',
  'Dobro §4º — uma guia com comprovante ausente/inválido (REsp)',
  $BODY$
Verifica-se que a parte não comprovou o recolhimento do preparo, visto que não é possível visualizar o código de barras no documento apresentado como comprovante de pagamento no [MOV_COMPROVANTE]. Ademais, não comprovou o recolhimento das custas destinadas a este Tribunal de Justiça, como prevê a Lei Estadual nº 22.956/2025.

A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a sequência numérica do código de barras ou com o código de barras ilegível não é apto para comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de comparação com os dados constantes da guia de recolhimento apresentada. Precedentes." (AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma, julgado em 14/10/2024, DJe de 23/10/2024).

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar o comprovante de pagamento referente à guia de recolhimento de [MOV_GUIA], no qual conste o código de barras de forma visível e legível e, ainda, efetuar novo recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
2. caso não seja possível apresentar o documento mencionado no item 1, realizar o recolhimento de R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça, conforme Tabela "B", do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026;
3. realizar o recolhimento da importância de R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas locais, previstas na Lei Estadual nº 22.956/2025, por meio de guia gerada no próprio sítio deste Tribunal de Justiça, https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.

Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os dados de identificação do contribuinte e número único do processo.
$BODY$,
  ARRAY[
    '596759 - AR - TR - DOBRO - Comprovante GRU sem código de barras + FUNJUS.pdf',
    '599298 - AR - TR - DOBRO - Guia de recolhimento sem comprovante de pagamento.pdf'
  ]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — §2º (intimado para complementar, vício insanável)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_gru_1pgto ▸ "Sem código de barras legível"
-- Fonte: 596186 (ausência de correspondência entre cód barras da guia e do comprovante)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_gru_1pgto',
  'Sem código de barras legível',
  'Deserção §2º — código de barras irregular na GRU (REsp)',
  $BODY$
Declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de Processo Civil, uma vez que a complementação do preparo não se deu de forma válida. Isso porque não há correspondência entre o número do código de barras da guia de recolhimento de [MOV_GUIA] e o comprovante de pagamento de [MOV_COMPROVANTE].

A jurisprudência do Superior Tribunal de Justiça "(...) firmou compreensão segundo a qual é exigida as guias de recolhimento do preparo juntamente com o comprovante de pagamento bancário, a fim de que todas as informações necessárias para individualizar o pagamento e identificar a sua pertinência ao processo respectivo sejam colhidas (código de recolhimento, UG/Gestão, CPF/CNPJ do contribuinte, nome do contribuinte, número de referência)" (AgInt no AREsp 1.217.562/SP, Rel. Ministro Benedito Gonçalves, Primeira Turma, DJe 10/9/2018).

Ainda, nesse sentido:
"AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PREPARO RECURSAL. AUSÊNCIA DE CORRESPONDÊNCIA ENTRE O NÚMERO DE CÓDIGO DE BARRAS E DO COMPROVANTE DE PAGAMENTO BANCÁRIO. RECURSO DESERTO. AGRAVO INTERNO DESPROVIDO.
1. Nos termos da jurisprudência do Superior Tribunal de Justiça, 'a falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento enseja irregularidade no preparo do recurso especial e, portanto, sua deserção' (AgInt no AREsp 1.449.432/SP, Relator Ministro Luis Felipe Salomão, Quarta Turma, DJe de 12/5/2020).
2. É inviável a análise de questão meritória em recurso especial que não ultrapassa sequer o juízo de admissibilidade.
3. Agravo interno desprovido."
(AgInt no AREsp n. 2.665.947/MS, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 28/10/2024, DJe de 5/11/2024.).

Diante do exposto, inadmito o recurso especial interposto. Intimem-se.
$BODY$,
  ARRAY['596186 - AR - TR - DESERTO - 1.007 §2º - ausência de correspondência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: desercao_funjus_1pgto ▸ "Guia pertencente a outro processo"
-- Fonte: 596217 (recolhimento FUNJUS feito via guia GRU — guia errada = guia de outro órgão)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_1pgto',
  'Guia pertencente a outro processo',
  'Deserção §2º — FUNJUS recolhida por guia indevida (GRU) (REsp)',
  $BODY$
A parte foi intimada para complementar o preparo do Recurso Especial, sob pena de deserção, na forma do despacho de [MOV_DESPACHO].

Todavia, a complementação do preparo não se deu de forma válida, eis que a recorrente utilizou a guia GRU-COBRANÇA para efetuar o pagamento ([MOV_GUIA]), quando deveria tê-lo feito por meio de guia gerada no sítio deste Tribunal de Justiça do Estado do Paraná (FUNJUS), eis que se trata de custas estaduais, na forma do que constou no despacho de [MOV_DESPACHO].

Nesse particular, é assente o entendimento da Corte Superior de que "É deserto o recurso especial na hipótese em que a parte recorrente, mesmo após intimada a regularizar o preparo, não o faz devidamente (art. 1.007, § 7º, do CPC/2015). Precedentes." (AgInt no AREsp n. 1.692.201/MT, relator Ministro Ricardo Villas Bôas Cueva, Terceira Turma, julgado em 8/2/2021, DJe de 12/2/2021.).

Veja-se:
"Na hipótese de insuficiência do recolhimento do preparo no ato da interposição do recurso, o recorrente será intimado para realizar o recolhimento, sob pena de deserção (art. 1.007, § 2º, do CPC). (...) No presente caso, intimada a complementar o preparo, a parte recorrente deixou de supri-lo, devendo ser mantida a decisão agravada. (STJ. AgInt no AREsp 1520429/RJ, Rel. Ministro LUIS FELIPE SALOMÃO, QUARTA TURMA, julgado em 05/11/2019, DJe 12/11/2019).

Assim sendo, e considerando a ausência da complementação determinada, é que nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do Recurso Especial.

Diante do exposto, inadmito o Recurso Especial interposto.

Intime-se.
$BODY$,
  ARRAY['596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: desercao_funjus_1pgto ▸ "Agendamento bancário"
-- Fonte: 609103
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_funjus_1pgto',
  'Agendamento bancário',
  'Deserção §2º — comprovante de agendamento bancário FUNJUS (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na forma do despacho de [MOV_DESPACHO].

No entanto, não cumpriu a determinação validamente. Isso porque, o documento juntado no [MOV_COMPROVANTE] consiste em comprovante de agendamento de boleto, não estando apto a comprovar o efetivo pagamento das custas devidas.

Sendo assim, declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de Processo Civil.

Nesse sentido:
AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PROCESSUAL CIVIL. AUSÊNCIA DE RECOLHIMENTO DAS CUSTAS LOCAIS. INTIMAÇÃO PARA A REGULARIZAÇÃO. NÃO ATENDIMENTO DA DETERMINAÇÃO. APRESENTAÇÃO DE COMPROVANTE DE AGENDAMENTO. RECURSO ESPECIAL DESERTO. INOVAÇÃO RECURSAL INCABÍVEL. AGRAVO INTERNO DESPROVIDO.
1. Em consonância com a orientação desta Corte Superior, 'a parte recorrente deve comprovar, no momento da interposição do recurso especial, o recolhimento das custas e do porte de remessa e retorno devidos à União, bem como dos valores locais, estipulados pelo Tribunal de origem. Precedentes' (AgInt no AREsp n. 2.380.943/SP, Relatora a Ministra Nancy Andrighi, Terceira Turma, julgado em 16/10/2023, DJe de 18/10/2023).
2. No caso dos autos, o Tribunal de origem constatou a ausência de comprovação do recolhimento das custas locais. Assim, determinou a intimação da parte recorrente, 'na pessoa de seu advogado, para que, em 05 (cinco) dias, complemente o preparo, recolhendo a guia Funjecc, sob pena de deserção (art. 1.007, § 2º, do Código de Processo Civil)'.
3. O vício não foi corrigido, tendo em vista que os agravantes apenas apresentaram, fora do prazo estabelecido pela Corte de origem, o comprovante de agendamento do recolhimento das custas locais. Como consequência, perante o Tribunal de origem, o recurso especial não foi conhecido por ser deserto, pressuposto de admissibilidade cuja ausência foi confirmado pela Presidência desta Corte.
4. 'A mera juntada do comprovante de agendamento de pagamento das custas não constitui meio apto à comprovação de que o preparo do recurso especial foi efetivamente recolhido' (AgInt no AREsp n. 2.315.909/GO, Relator Ministro Humberto Martins, Terceira Turma, julgado em 29/4/2024, DJe de 2/5/2024). 5. A alegação de falha da instituição financeira, que seria a responsável por promover o agendamento no recolhimento das custas recursais, não foi comprovada e caracteriza inovação recursal. 6. Agravo interno desprovido. (AgInt no AREsp n. 2.591.156/MS, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 19/8/2024, DJe de 22/8/2024.)

Diante do exposto, inadmito o recurso especial interposto.

Intimem-se.
$BODY$,
  ARRAY['609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — §4º (intimado para pagar em dobro, não regularizou)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_nd_2pgto ▸ "Documentos não localizados (N/D)"
-- Fontes: 596230 (inércia total) + 596255 (juntou só comprovantes, sem guias)
-- Ambos chegam ao mesmo nó; usando 596255 por ter fundamentação jurídica mais completa
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Documentos não localizados (N/D)',
  'Deserção §4º — ausência de manifestação após dobro (REsp)',
  $BODY$
A parte recorrente, devidamente intimada para comprovar o recolhimento em dobro do preparo recursal ([MOV_DESPACHO]), não se manifestou (certidão de decurso de prazo de [MOV_CERTIDAO]).

Sendo assim, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso especial.

Nesse sentido, o seguinte precedente:
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM AGRAVO EM RECURSO ESPECIAL. PREPARO. COMPROVAÇÃO. AUSÊNCIA. INTIMAÇÃO. ART. 1.007, § 4º, DO CPC. JUNTADA DE DOCUMENTO. DESERÇÃO. DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos termos do art. 1.007, § 4º, do CPC, a parte não comprovar o pagamento em dobro ou a prévia concessão de gratuidade de justiça no prazo assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos Ferreira, Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)

Diante do exposto, inadmito o recurso especial interposto.

Intime-se.
$BODY$,
  ARRAY[
    '596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf',
    '596255 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf'
  ]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: desercao_nd_2pgto ▸ "Sem código de barras legível"
-- Fonte: 596792
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Sem código de barras legível',
  'Deserção §4º — comprovantes sem código de barras após dobro (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal, sob pena de deserção ([MOV_DESPACHO]).

Entretanto, verifica-se que o recolhimento do preparo não restou comprovado. Isso porque, não consta o número do código de barras nos documentos indicados como comprovantes de pagamento ([MOV_COMPROVANTE]), inviabilizando a conferência com as guias de recolhimento apresentadas ([MOV_GUIA]).

Ressalta-se que o despacho de [MOV_DESPACHO] mencionou que para comprovação do efetivo recolhimento do preparo, a parte deveria providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual constasse o código de barras de forma visível e legível.

A Corte Superior firmou entendimento no sentido de que "A ausência do número de código de barras no comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-se, portanto, deserto" (AgInt nos EDcl nos EREsp n. 1.563.122/RS, relatora Ministra Maria Isabel Gallotti, Corte Especial, julgado em 24/10/2023, DJe de 30/10/2023).

Ainda, nesse sentido, o seguinte precedente:
"AGRAVO INTERNO NO RECURSO ESPECIAL. PREPARO RECURSAL. AUSÊNCIA DO NÚMERO DE CÓDIGO DE BARRAS NO COMPROVANTE DE PAGAMENTO BANCÁRIO. REGULARIZAÇÃO QUE DEPENDE DO RECOLHIMENTO EM DOBRO NO PRAZO ESTIPULADO. DUPLO JUÍZO DE ADMISSIBILIDADE. MAJORAÇÃO DOS HONORÁRIOS RECURSAIS. POSSIBILIDADE. AGRAVO INTERNO DESPROVIDO.
1. A jurisprudência do Superior Tribunal de Justiça firmou-se no sentido de que 'a ausência de regular comprovação do preparo, no ato de interposição do recurso, implica a incidência do § 4º do art. 1.007 do CPC/2015. Quem não prova o pagamento a tempo e modo, sem o amparo de justa causa (§ 6º), nem efetua o recolhimento em dobro quando intimado (§§ 4º e 5º), sofre a pena da deserção (Súmula 187/STJ)' - (AgInt no REsp n. 1.856.622/RS, Relator o Ministro Og Fernandes, Segunda Turma, julgado em 15/6/2020, DJe de 24/6/2020).
2. A ausência do número de código de barras no comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-o deserto. Precedentes.
3. A posterior comprovação de pagamento só afasta a deserção se recolhido em dobro e dentro do prazo estipulado.
6. Agravo interno desprovido.
(AgInt no REsp n. 2.145.179/SP, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 28/10/2024, DJe de 5/11/2024.)"

Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso especial.

Diante do exposto, inadmito o recurso especial interposto.
$BODY$,
  ARRAY['596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — INTEMPESTIVO
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_intempestivo ▸ "Comprovante de pagamento juntado fora do prazo recursal"
-- Fonte: 607949 (comprovação do dobro apresentada após o prazo de 5 dias da intimação §4º)
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_intempestivo',
  'Comprovante de pagamento juntado fora do prazo recursal',
  'Deserção §4º — comprovação do dobro apresentada fora do prazo (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal no prazo de 5 (cinco) dias, na forma do despacho de [MOV_DESPACHO].

Verifica-se que a leitura de intimação do referido despacho foi confirmada em [DATA_CIENCIA], de modo que o prazo de 5 (cinco) dias concedido para regularização do preparo passou a fluir em [DATA_INICIO_PRAZO] e findou em [DATA_FIM_PRAZO], sendo certificado o decurso do prazo em [DATA_CERTIDAO] ([MOV_CERTIDAO]). Portanto, a petição juntada em [DATA_PETICAO] ([MOV_COMPROVANTE]) está intempestiva.

Cumpre esclarecer que, ainda que a parte alegue que o recolhimento do preparo foi realizado tempestivamente, certo é que a sua comprovação ocorreu fora do prazo legal.

Portanto, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso especial.

Nesse sentido, o seguinte precedente:
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA EM AGRAVO EM RECURSO ESPECIAL. PREPARO. COMPROVAÇÃO. AUSÊNCIA. INTIMAÇÃO. ART. 1.007, § 4º, DO CPC. JUNTADA DE DOCUMENTO. DESERÇÃO. DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos termos do art. 1.007, § 4º, do CPC, a parte não comprovar o pagamento em dobro ou a prévia concessão de gratuidade de justiça no prazo assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos Ferreira, Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)

Diante do exposto, inadmito o recurso especial interposto.
$BODY$,
  ARRAY['607949 - AR - TR - DESERTO - 1.007 §4º - Recurso Especial - Comprovação fora do prazo legal.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- NOVOS NÓS NECESSÁRIOS (requerem alterações em flow.ts + opção no fluxo)
-- Estes templates estão inseridos abaixo com option_text ainda não existente no flow.
-- Quando o flow for expandido, eles já estarão disponíveis no Supabase.
-- =============================================================================

-- step_key: desercao_gru_1pgto ▸ "Juntou só o comprovante GRU (sem guia) após intimação"
-- Fonte: 596193 — NÃO ESTÁ no flow atual; requer nova opção em desercao_gru_1pgto
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
  ARRAY['596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO NOTHING;

-- step_key: desercao_nd_2pgto ▸ "Intimado para pagar em dobro e pagou em valor simples"
-- Fonte: 606008 — NÃO ESTÁ no flow atual; requer nova opção em desercao_nd_2pgto
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
  ARRAY['606008 - AR - TR - DESERTO - dobro - comprovação forma simples.pdf']
)
ON CONFLICT (step_key, option_text) DO NOTHING;

-- =============================================================================
-- RESUMO DA COBERTURA APÓS ESTA MIGRAÇÃO
-- =============================================================================
--
-- INSERIDOS (18 templates para nós existentes):
--   comp_gru:              1/7  (comprovante N/D)
--   comp_funjus:           4/7  (só guia, agendamento, N/D, juntou só comprovante)
--   dobro:                 2/2  ✓ COMPLETO
--   dobro_nd:              4/5  (faltam: 2 guias nº processo incorreto)
--   desercao_gru_1pgto:    1/4  (sem cód barras)
--   desercao_funjus_1pgto: 2/4  (guia outro processo, agendamento)
--   desercao_nd_2pgto:     2/5  (docs N/D, sem cód barras)
--   desercao_intempestivo: 1/2  (comprovante fora do prazo)
--
-- NOVOS NÓS INSERIDOS (option_text não existente no flow — aguardando expansão):
--   desercao_gru_1pgto  / "Juntou só o comprovante GRU (sem guia) após intimação"  ← 596193
--   desercao_nd_2pgto   / "Intimado para pagar em dobro e pagou em valor simples"   ← 606008
--
-- SEM TEMPLATE (mantêm "AINDA SEM REFERENCIA DE MINUTAS"):
--   comp_gru: 6 opções restantes
--   comp_funjus: 3 opções restantes
--   dobro_nd: "2 guias com número de processo ausente ou incorreto"
--   desercao: todas as opções
--   desercao_nd_1pgto: todas as opções
--   desercao_nd_2pgto: 3 opções restantes
--   desercao_gru_1pgto: 3 opções restantes
--   desercao_gru_2pgto: todas as opções
--   desercao_funjus_1pgto: 2 opções restantes
--   desercao_funjus_2pgto: todas as opções
--   desercao_intempestivo: "Pagamento realizado fora do prazo recursal"
--
-- PDFs não catalogados (casos especiais — requerem novos ramos no flow.ts):
--   596206  DOBRO — comprovante GRU só (sem guia) + FUNJUS não recolhida
--   596249  DOBRO — procuração + dobro
--   597127  DOBRO — JG não localizada
--   598979  DOBRO — preparo após interposição (intimar para complementação)
--   600045  DESERTO — JG indeferida + preparo irregular sem código de barras
--   600448  DOBRO — recolhimento recurso originário (ato incompatível)
--   604597  DESERTO — regularização preparo + pedido de JG
--   606190  DESERTO — JG indeferida + inércia
--   607948  DESERTO §2º — comprovação apresentada fora do prazo legal
--   615885  DOBRO — juntar decreto de feriado + dobro
--   627206  INTEMPESTIVO + DESERTO (complementação)
--   645022  DESERTO §2º — procuração + preparo (despacho conjunto)
--   670304  INTEMPESTIVO + DESERTO (dobro)
--   670902  DOBRO — divergência código de barras (novo valor 2026)
--   676940  DOBRO — "em processo de autenticação"
--   677400  DOBRO — juntar decreto + dobro (só comprovantes)
--   Caso 01 DOBRO — guia GRU sem comprovante + FUNJUS não recolhida
--   Caso 07 COMP_FUNJUS — divergência código de barras guia/comprovante
--   Caso 13 DOBRO — (duplicata de 596760/599705 — já coberto)
-- =============================================================================
