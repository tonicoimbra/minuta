-- =============================================================================
-- MINUTAS COMPLEMENTACAO §2º - NOVAS ENTRADAS A PARTIR DE PDFs EXTRAIDOS
-- Arquivo gerado em 2026-04-24.
-- Fonte de comparação de duplicidade: sql_minutas_FINAL.sql.
-- Fonte textual: correcoes/pdf_extract_utf8.txt.
-- Observação: a Entrada 3 foi tratada como já existente, pois há option_text
-- equivalente em sql_minutas_FINAL.sql com grafia acentuada ("Juntou só ...").
-- =============================================================================

-- step_key: comp_gru >> Juntou so a guia GRU (sem comprovante de pagamento)
-- Fonte: 670588
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
  ARRAY['670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru >> Juntou so o comprovante GRU (sem a guia de recolhimento)
-- Fonte: 670588
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
  ARRAY['670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru >> Juntou so o comprovante GRU (sem a guia de recolhimento) [RE]
-- Fonte: 670588
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
  ARRAY['670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru >> Guia GRU juntada + comprovante sem codigo de barras legivel
-- Fonte: 596798
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
  ARRAY['596798 - AR - TR - Complementação preparo - GRU - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru >> Guia GRU juntada + comprovante sem codigo de barras legivel [RE]
-- Fonte: 596798
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
  ARRAY['596798 - AR - TR - Complementação preparo - GRU - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru >> Guia GRU juntada + divergencia no codigo de barras
-- Fonte: 628802
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
  ARRAY['628802 - AR-TR- Complementação do preparo - guia GRU - divergência código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_gru >> Guia GRU juntada + divergencia no codigo de barras [RE]
-- Fonte: 628802
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
  ARRAY['628802 - AR-TR- Complementação do preparo - guia GRU - divergência código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus >> Juntou so a guia FUNJUS (sem comprovante de pagamento) [RE]
-- Fonte: 596361
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
  ARRAY['596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus >> Juntou so o comprovante FUNJUS (sem a guia de recolhimento)
-- Fonte: 596361
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
  ARRAY['596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus >> Juntou so o comprovante FUNJUS (sem a guia de recolhimento) [RE]
-- Fonte: 596361
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
  ARRAY['596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus >> Guia FUNJUS juntada + comprovante sem codigo de barras legivel
-- Fonte: 596757
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
  ARRAY['596757 - AR - TR - Complementação preparo - FUNJUS - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus >> Guia FUNJUS juntada + comprovante sem codigo de barras legivel [RE]
-- Fonte: 596757
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
  ARRAY['596757 - AR - TR - Complementação preparo - FUNJUS - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus >> Guia FUNJUS juntada + divergencia no codigo de barras
-- Fonte: 596347
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
  ARRAY['596347 - AR - TR - Complementação preparo - FUNJUS - Códigos de barras não correspondem - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: comp_funjus >> Guia FUNJUS juntada + divergencia no codigo de barras [RE]
-- Fonte: 596347
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
  ARRAY['596347 - AR - TR - Complementação preparo - FUNJUS - Códigos de barras não correspondem - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- RESUMO
-- =============================================================================
-- CRIADAS:
-- Entrada 1  - comp_gru / Juntou so a guia GRU (sem comprovante de pagamento)
-- Entrada 2  - comp_gru / Juntou so o comprovante GRU (sem a guia de recolhimento)
-- Entrada 4  - comp_gru / Juntou so o comprovante GRU (sem a guia de recolhimento) [RE]
-- Entrada 5  - comp_gru / Guia GRU juntada + comprovante sem codigo de barras legivel
-- Entrada 6  - comp_gru / Guia GRU juntada + comprovante sem codigo de barras legivel [RE]
-- Entrada 7  - comp_gru / Guia GRU juntada + divergencia no codigo de barras
-- Entrada 8  - comp_gru / Guia GRU juntada + divergencia no codigo de barras [RE]
-- Entrada 9  - comp_funjus / Juntou so a guia FUNJUS (sem comprovante de pagamento) [RE]
-- Entrada 10 - comp_funjus / Juntou so o comprovante FUNJUS (sem a guia de recolhimento)
-- Entrada 11 - comp_funjus / Juntou so o comprovante FUNJUS (sem a guia de recolhimento) [RE]
-- Entrada 12 - comp_funjus / Guia FUNJUS juntada + comprovante sem codigo de barras legivel
-- Entrada 13 - comp_funjus / Guia FUNJUS juntada + comprovante sem codigo de barras legivel [RE]
-- Entrada 14 - comp_funjus / Guia FUNJUS juntada + divergencia no codigo de barras
-- Entrada 15 - comp_funjus / Guia FUNJUS juntada + divergencia no codigo de barras [RE]
--
-- PULADAS (ja existiam):
-- Entrada 3 - comp_gru / Juntou so a guia GRU (sem comprovante de pagamento) [RE]
--             Ja existente em sql_minutas_FINAL.sql em variante acentuada:
--             "Juntou só a guia GRU (sem comprovante de pagamento) [RE]".
