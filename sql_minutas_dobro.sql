-- Geração automática em 2026-04-22
-- PDFs REsp processados:
-- - 596206 - AR - TR - DOBRO - Juntada de comprovante de pagamento do GRU - Recurso Especial.pdf
-- - 596207 - AR - TR - DOBRO - Juntou apenas os comprovantes ou as guias - Recurso Especial.pdf
-- - 596209 - AR - TR - DOBRO - Recurso Especial.pdf
-- - 596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf
-- - 596759 - AR - TR - DOBRO - Comprovante GRU sem código de barras + FUNJUS.pdf
-- - 596760 - AR - TR - DOBRO - Ausência código de barras - Recurso Especial.pdf
-- - 597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf
-- - 598979 - AR - TR - DOBRO - Preparo após interposição - Intimar para complementação - Recurso Especial.pdf
-- - 599298 - AR - TR - DOBRO - Guia de recolhimento sem comprovante de pagamento.pdf
-- - 599705 - AR - TR - DOBRO - Comprovante sem código de barras e sem guia.pdf
-- - 600448 - AR - TR - DOBRO - recolhimento recurso originário - ato incompatível.pdf
-- - 615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf
-- - 670902 - AR - TR - DOBRO - DIVERGÊNCIA CÓDIGO DE BARRAS - NOVO VALOR 2026.pdf
-- - 676940 - AR - TR - DOBRO - EM PROCESSO DE AUTENTICAÇÃO - VALOR 2026.pdf
-- - 677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf
-- Extração: UTF-8 em todos os arquivos; sem necessidade de fallback Latin1.

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
  ARRAY['596207 - AR - TR - DOBRO - Juntou apenas os comprovantes ou as guias - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Escolha de mapeamento: 596209 foi enquadrado no nó mais próximo disponível ("2 documentos não localizados (N/D)") porque não houve qualquer comprovação de GRU/FUNJUS no ato da interposição.
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
  ARRAY['596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- Consolidação: 596759 (comprovante inválido) e 599298 (comprovante ausente) foram reunidos no terminal "1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido".
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

-- NOVO NÓ NECESSÁRIO: 596206 - AR - TR - DOBRO - Juntada de comprovante de pagamento do GRU - Recurso Especial.pdf → juntou apenas comprovante de pagamento da GRU, sem a respectiva guia, e não comprovou FUNJUS.

-- NOVO NÓ NECESSÁRIO: 596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf → regularização simultânea de representação processual (procuração/cadeia de substabelecimentos) e preparo em dobro.

-- NOVO NÓ NECESSÁRIO: 597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf → alegação de assistência judiciária gratuita sem deferimento localizável nos autos, com exigência de preparo em dobro.

-- NOVO NÓ NECESSÁRIO: 598979 - AR - TR - DOBRO - Preparo após interposição - Intimar para complementação - Recurso Especial.pdf → preparo juntado após a interposição, em valor simples, com determinação de complementação para alcançar o dobro.

-- NOVO NÓ NECESSÁRIO: 600448 - AR - TR - DOBRO - recolhimento recurso originário - ato incompatível.pdf → recolhimento anterior no recurso originário como ato incompatível com a alegação de gratuidade, levando à exigência de preparo em dobro.

-- NOVO NÓ NECESSÁRIO: 615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf → necessidade cumulativa de juntar decreto judiciário de feriado local e regularizar preparo em dobro.

-- NOVO NÓ NECESSÁRIO: 670902 - AR - TR - DOBRO - DIVERGÊNCIA CÓDIGO DE BARRAS - NOVO VALOR 2026.pdf → divergência entre o código de barras da guia de recolhimento e o do comprovante de pagamento.

-- NOVO NÓ NECESSÁRIO: 676940 - AR - TR - DOBRO - EM PROCESSO DE AUTENTICAÇÃO - VALOR 2026.pdf → comprovantes com a informação "Em processo de autenticação", sem prova do recolhimento efetivo.

-- NOVO NÓ NECESSÁRIO: 677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf → necessidade cumulativa de juntar decreto judiciário de feriado local e regularizar preparo em dobro por ter juntado apenas comprovantes.

-- Arquivos RE pulados conforme instrução:
-- - 596204 - AR - TR - DOBRO - Ausência de código de barras nos comprovantes de pagamento - Recurso Extraordinário.pdf
-- - 596212 - AR - TR - DOBRO - Recurso Extraordinário.pdf
-- - 612143 - AR - TR - DOBRO- comprovante sem código + funjus - Recurso Extraordinário.pdf
-- - 646311 - AR - TR - JUNTAR DECRETO e DOBRO - RE.pdf
-- Erros de extração: nenhum.
