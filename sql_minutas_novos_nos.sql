-- =============================================================================
-- NOVOS NÓS — MIGRAÇÃO COMPLEMENTAR
-- Gerado em 2026-04-22 após expansão do flow.ts com 4 novos nós e 20 novas opções
-- Estes templates cobrem os 19 PDFs não catalogados no lote anterior.
-- PRÉ-REQUISITO: sql_minutas_FINAL.sql já executado.
-- =============================================================================

-- ─────────────────────────────────────────────────────────────────────────────
-- COMPLEMENTAÇÃO — comp_funjus
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: comp_funjus ▸ "Guia FUNJUS juntada + divergência no código de barras"
-- Fonte: Caso 07
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
  ARRAY['Caso 07.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- PAGAMENTO EM DOBRO — dobro (opções diretas)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: dobro ▸ "JG alegada — concessão não localizada nos autos"
-- Fonte: 597127
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
  ARRAY['597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro ▸ "JG alegada — ato incompatível (pagamento anterior no recurso originário)"
-- Fonte: 600448
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
  ARRAY['600448 - AR - TR - DOBRO - recolhimento recurso originário - ato incompatível.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro ▸ "Preparo juntado após o ato da interposição (pagamento simples)"
-- Fonte: 598979
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
  ARRAY['598979 - AR - TR - DOBRO - Preparo após interposição - Intimar para complementação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- PAGAMENTO EM DOBRO — dobro_nd (sub-opções)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: dobro_nd ▸ "Comprovante GRU sem guia + FUNJUS não recolhida"
-- Fonte: 596206
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
  ARRAY['596206 - AR - TR - DOBRO - Juntada de comprovante de pagamento do GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd ▸ "Guia GRU sem comprovante + FUNJUS não recolhida"
-- Fonte: Caso 01
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
  ARRAY['Caso 01.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd ▸ "Divergência entre código de barras da guia e do comprovante"
-- Fonte: 670902
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
  ARRAY['670902 - AR - TR - DOBRO - DIVERGÊNCIA CÓDIGO DE BARRAS - NOVO VALOR 2026.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd ▸ "Comprovantes com status 'Em processo de autenticação'"
-- Fonte: 676940
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
  ARRAY['676940 - AR - TR - DOBRO - EM PROCESSO DE AUTENTICAÇÃO - VALOR 2026.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- PAGAMENTO EM DOBRO — dobro_decreto (novo nó)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: dobro_decreto ▸ "Juntou só comprovantes (sem guias de recolhimento) + Decreto não apresentado"
-- Fontes: 615885, 677400 (mesmo padrão de intimação)
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
  ARRAY[
    '615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf',
    '677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf'
  ]
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- PAGAMENTO EM DOBRO — dobro_proc (novo nó)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: dobro_proc ▸ "Procuração e preparo em dobro — ambos ausentes"
-- Fonte: 596249
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
  ARRAY['596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — desercao_nd_1pgto (novas opções)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_nd_1pgto ▸ "Comprovação da complementação apresentada fora do prazo legal"
-- Fonte: 607948
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
  ARRAY['607948 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovação fora do prazo legal.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: desercao_nd_1pgto ▸ "Procuração regularizada, mas preparo não comprovado"
-- Fonte: 645022
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
  ARRAY['645022 - AR - TR - DESERTO - 1.007 §2º - despacho procuração e preparo.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — desercao_nd_2pgto (novas opções)
-- NB: "Intimado para pagar em dobro e pagou em valor simples" (606008) já está
--     em sql_minutas_FINAL.sql com ON CONFLICT DO NOTHING — inserido abaixo
--     com DO UPDATE para garantir consistência com o flow expandido.
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_nd_2pgto ▸ "Intimado para pagar em dobro e pagou em valor simples"
-- Fonte: 606008
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
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: desercao_nd_2pgto ▸ "Pedido de JG após intimação para dobro (sem efeito retroativo)"
-- Fonte: 604597
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
  ARRAY['604597 - AR - TR - DESERTO - intimação regularização preparo - pedido JG.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — desercao_gru_1pgto (nova opção)
-- NB: "Guia GRU não apresentada após intimação (juntou só o comprovante)" (596193)
--     já está em sql_minutas_FINAL.sql com DO NOTHING — atualizado aqui com DO UPDATE.
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_gru_1pgto ▸ "Guia GRU não apresentada após intimação (juntou só o comprovante)"
-- Fonte: 596193
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
  ARRAY['596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — desercao_jg (novo nó)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_jg ▸ "Apresentou comprovantes sem código de barras (preparo irregular)"
-- Fonte: 600045
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
  ARRAY['600045 - AR - TR - DESERTO - Indeferimento JG - preparo irregular - sem código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: desercao_jg ▸ "Permaneceu inerte (certidão de decurso de prazo)"
-- Fonte: 606190
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
  ARRAY['606190 - AR - TR - DESERTO - indeferida a JG e prazo para recolher preparo - inércia - REsp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- DESERÇÃO — desercao_decreto (novo nó)
-- ─────────────────────────────────────────────────────────────────────────────

-- step_key: desercao_decreto ▸ "Decreto + complementação (§2º) — permaneceu inerte"
-- Fonte: 627206
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
  ARRAY['627206 - AR - TR - INTEMPESTIVO E DESERTO (complementação) - DECURSO DE PRAZO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: desercao_decreto ▸ "Decreto + dobro (§4º) — permaneceu inerte"
-- Fonte: 670304
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
  ARRAY['670304 - AR - TR - INTEMPESTIVO E DESERTO (DOBRO) - DECURSO DE PRAZO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();
