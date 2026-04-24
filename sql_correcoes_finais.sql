-- =============================================================================
-- TEMPLATES EXTRAÍDOS FIELMENTE DOS PDFs NA PASTA minutas/
-- Gerado em 2026-04-24
-- Total mapeados: 49
-- Total não mapeados: 21

-- =============================================================================

-- 596209 - AR - TR - DOBRO - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)',
  'Dobro §4º — juntou só guias (REsp)',
  $BODY$
Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da
interposição do recurso especial, intime-se a parte recorrente para que realize, no prazo de 5
(cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo
Civil, o pagamento em dobro das custas recursais.
Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos centavos) ao Fundo da Justiça – FUNJUS, referente ao recolhimento
em dobro das custas locais (Lei Estadual nº 2.956/2025), por meio de guia gerada no próprio
sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596209 - AR - TR - DOBRO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596212 - AR - TR - DOBRO - Recurso Extraordinário.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento) [RE]',
  'Dobro §4º — juntou só guias (RE)',
  $BODY$
Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da
interposição do recurso extraordinário, intime-se a parte recorrente para que realize, no prazo
de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de
Processo Civil, o pagamento em dobro das custas recursais.
Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos centavos) ao Fundo da Justiça – FUNJUS, referente ao recolhimento
em dobro das custas locais (Lei Estadual nº 2.956/2025), por meio de guia gerada no próprio
sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-
Cobrança, referente ao recolhimento em dobro das custas do Supremo Tribunal Federal
(Resolução/STF nº 875, de 23.06.2025).
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF pore-mail,
que conterá todas as informações do pagamento, inclusive com os dados de identificação do
contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596212 - AR - TR - DOBRO - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596207 - AR - TR - DOBRO - Juntou apenas os comprovantes ou as guias - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)',
  'Dobro §4º — juntou só comprovantes (REsp)',
  $BODY$
A parte recorrente não comprovou o recolhimento do preparo, visto que juntou os
comprovantes de pagamento (movs. xx e xx) sem as respectivas guias de recolhimento.
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Para comprovação
do preparo recursal não basta o pagamento das custas processuais, impõe-se a juntada dos
respectivos comprovantes e guia de recolhimento, sob pena de deserção. Precedentes." (AgInt
nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em
19/11/2024, DJe de 25/11/2024.).
Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da
interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco)
dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o
recolhimento em dobro das custas recursais.
Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento de movs. x.
x e x.x;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze
centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo
da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor
passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da
Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo
novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a
parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em
dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596207 - AR - TR - DOBRO - Juntou apenas os comprovantes ou as guias - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'JG pedida no ato da interposição - depois desistiu ou renunciou ao pedido',
  'Dobro §4º — JG não localizada/desistência (REsp)',
  $BODY$
A parte recorrente não comprovou, no ato da interposição do recurso especial, como prevê o
artigo 1.007, do Código de Processo Civil, sob alegação de que é beneficiária da assistência
judiciária gratuita.
Entretanto, o deferimento da concessão do benefício não foi localizada nos autos. Inclusive, da
análise dos autos, verificou-se que, em cumprimento ao despacho proferido pelo Juízo de 1º
Grau (mov. xx.1, dos autos originários sob nº xxxxx), a parte autora, ora recorrente, realizou o
recolhimento das custas processuais (mov. xx.1, dos autos originários sob nº xxxx).
Sendo assim, tendo em vista que a parte, no ato da interposição do recurso, não comprovou
o preparo, bem como não requereu a concessão da gratuidade de justiça, impõe-se que
realize o recolhimento em dobro do preparo recursal, sob pena de ser considerado deserto o
recurso especial por ela interposto (artigo 1.007, § 4º, do Código de Processo Civil).
Portanto, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, comprove o
recolhimento dos seguintes valores:
- R$ 133,70 (cento e trinta e três reais e setenta centavos) ao Fundo da Justiça – FUNJUS,
referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná
(Lei Estadual nº 21.868, de 18/12/2023), por meio de guia gerada no próprio sítio deste
Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau (informações
pelo telefone (041) 3210-7117);
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/597127 - AR - TR - DOBRO - J.G. NÃO LOCALIZADA - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 598979 - AR - TR - DOBRO - Preparo após interposição - Intimar para complementação - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro',
  'Preparo juntado após o ato da interposição (pagamento simples)',
  'Dobro §4º — preparo após interposição (REsp)',
  $BODY$
A parte recorrente não comprovou o recolhimento do preparo no ato da interposição do
recurso, conforme prevê o artigo 1.007, do Código de Processo Civil, visto que o recurso
especial foi apresentado no dia XX.XX.XXXX(último dia do prazo recursal) e o preparo recursal
foi juntado aos autos tão somente em XX.XX.XXXX (mov. XX).
Nos termos da jurisprudência do Superior Tribunal de Justiça, "(...) Na hipótese de não
comprovação do recolhimento do preparo no ato de interposição do recurso, o recorrente será
intimado para efetuá-lo em dobro, sob pena de consolidação da deserção do pleito recursal,
conforme estabelece o art. 1.007, § 4º, do CPC" (AgInt no AREsp n. 2.362.957/SP, relator
Ministro João Otávio de Noronha, Quarta Turma, julgado em 9/12/2024, DJEN de 12/12/2024.).
Da análise dos documentos juntados pela parte, verifica-se que, em que pese tenha sido
comprovado o recolhimento das custas devidas ao Superior Tribunal de Justiça (mov. XX) e ao
Fundo de Justiça - FUNJUS (mov. XX), o fato é que o recolhimento das custas se deu na
forma simples.
Dessa forma, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-se a parte
recorrente para, no prazo de 5 (cinco) dias, comprovar o recolhimento de:
- R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS (Lei Estadual nº 2.956/2025), em
complementação às custas devidas ao Tribunal de Justiça do Estado do Paraná, perfazendo o
valor dobrado devido;
- R$ 259,08 (duzentos e cinquenta e nove reais e oito centavos), por meio de guia GRU-
COBRANÇA, em complementação às custas devidas ao Superior Tribunal de Justiça,
perfazendo o valor dobrado devido.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/598979 - AR - TR - DOBRO - Preparo após interposição - Intimar para complementação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596206 - AR - TR - DOBRO - Juntada de comprovante de pagamento do GRU - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  'Comprovante GRU sem guia + FUNJUS não recolhida',
  'Dobro §4º — comprovante GRU sem guia + FUNJUS (REsp)',
  $BODY$
A parte recorrente não comprovou o recolhimento do preparo, visto que juntou o comprovante
de pagamento das custas devidas ao Superior Tribunal de Justiça (movs. X.X), sem a
respectiva guia. Ainda, deixou de comprovar o recolhimento das custas destinadas ao Fundo
da Justiça - FUNJUS.
Ressalta-se que a jurisprudência do Superior Tribunal de Justiça é pacífica no sentido de que “
No ato de interposição, o recurso especial deve estar acompanhado das guias do preparo,
além dos respectivos comprovantes de pagamento, ambos de forma visível e legível, sob pena
de deserção.” (AgRg no AREsp 474.739/MG, Rel. Ministro JOÃO OTÁVIO DE NORONHA,
TERCEIRA TURMA, julgado em 15/03/2016, DJe 28/03/2016).
Assim sendo, e considerando a ausência de comprovação das custas recursais no ato da
interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-
se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, o
recolhimento em dobro do preparo recursal.
Para tanto, a parte deverá:
1) apresentar a guia referente ao comprovante de pagamento juntado ao mov. X.Xe, ainda,
realizar novo recolhimento da importância de 259,08 (duzentos e cinquenta e nove reais e oito
centavos), por meio de guia GRU-COBRANÇA (Tabela “B”, do Anexo da Resolução STJ/GP nº
7, de 28 de janeiro de 2025), eis que devido em dobro;
2) caso seja impossível apresentar referida guia, efetuar o pagamento da importância de R$
518,16 (quinhentos e dezoito reais e dezesseis centavos), por meio da guia GRU-COBRANÇA,
referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de Justiça;
3) comprovar o pagamento de R$ 133,70 (cento e trinta e três reais e setenta centavos) ao
Fundo da Justiça – FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de
Justiça do Estado do Paraná (Lei Estadual nº 21.868, de 18/12/2023), por meio de guia gerada
no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-
grau (informações pelo telefone (041) 3210-7117).
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596206 - AR - TR - DOBRO - Juntada de comprovante de pagamento do GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 599298 - AR - TR - DOBRO - Guia de recolhimento sem comprovante de pagamento.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  'Guia GRU sem comprovante + FUNJUS não recolhida',
  'Dobro §4º — guia sem comprovante + FUNJUS (REsp)',
  $BODY$
A parte não comprovou o recolhimento do preparo, visto que juntou aos autos tão somente a
guia de recolhimento das custas estaduais destinadas ao Fundo de Justiça - FUNJUS (mov. XX
), sem o respectivo comprovante de pagamento.
A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para
comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a
juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção.
Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins,
Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)
Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da
interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco)
dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o
recolhimento em dobro do preparo.
Para tanto, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais), por meio do Fundo da Justiça – FUNJUS, referente ao
recolhimento em dobro das custas locais (Lei Estadual nº 2.956/2025), por meio de guia
gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-
recurso-2o-grau;
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/599298 - AR - TR - DOBRO - Guia de recolhimento sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596204 - AR - TR - DOBRO - Ausência de código de barras nos comprovantes de pagamento - Recurso Extraordinário.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '2 comprovantes sem código de barras legível [RE]',
  'Dobro §4º — sem cód. barras comprovantes (RE)',
  $BODY$
Verifica-se que a parte recorrente não comprovou, no ato da interposição do recurso
extraordinário, o pagamento do preparo (artigo 1.007, caput, do Código de Processo Civil),
visto que não é possível visualizar o código de barras nos comprovantes de pagamento de
movs. x.x e x.x, impossibilitando a conferência com o das guias de recolhimento de movs. x.x e
x.x.
A jurisprudência do Supremo Tribunal Federal é pacífica no sentido de que "(...) os recursos
dirigidos devem estar acompanhados das guias de recolhimento devidamente preenchidas e
dos respectivos comprovantes de pagamento, ambos de forma visível e legível, sob pena de
deserção" (ARE 1.213.790/MG, Rel. Ministro DIAS TOFFOLI, julgado em 26/06/2019, DJe 24
/06/2019).
Assim sendo, tendo em vista a ausência de comprovação do preparo no momento da
interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-
se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção,
nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das
custas recursais.
Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de movs. x.
x e x.x, nos quais constem os códigos de barras de forma visível e legível;
2. realizar o recolhimento da importância de R$ 1.157,59 (mil, cento e cinquenta e sete reais e
cinquenta e nove centavos), por meio de guia GRU-COBRANÇA, conforme Resolução/STF nº
875, de 23/06/2025, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da
Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo
novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.
Caso não seja possível a apresentação dos documentos mencionados no item 1, deverá
comprovar o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em
dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025);
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-
Cobrança, referente ao recolhimento em dobro das custas do Supremo Tribunal Federal
(Resolução/STF nº 875, de 23.06.2025).
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF por e-mail,
que conterá todas as informações do pagamento, inclusive com os dados de identificação do
contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596204 - AR - TR - DOBRO - Ausência de código de barras nos comprovantes de pagamento - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596760 - AR - TR - DOBRO - Ausência código de barras - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '2 comprovantes sem código de barras legível',
  'Dobro §4º — sem cód. barras comprovantes (REsp)',
  $BODY$
Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, visto que não é
possível visualizar os códigos de barras nos documentos apresentados como comprovantes de
pagamento no mov. x.x e x.x.
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a
sequência numérica do código de barras ou com o código de barras ilegível não é apto para
comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de
comparação com os dados constantes da guia de recolhimento apresentada. Precedentes."
(AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma,
julgado em 14/10/2024, DJe de 23/10/2024).
Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da
interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco)
dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o
recolhimento em dobro do preparo.
Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de movs. x.
x e x.x, nos quais constem o código de barras de forma visível e legível;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze
centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo
da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor
passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da
Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo
novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento
mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em
dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596760 - AR - TR - DOBRO - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 670902 - AR - TR - DOBRO - DIVERGÊNCIA CÓDIGO DE BARRAS - NOVO VALOR 2026.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  'Divergência entre código de barras da guia e do comprovante',
  'Dobro §4º — divergência cód. barras novo valor (REsp)',
  $BODY$
Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que não
há correspondência entre o código de barras constante na guia de recolhimento de mov. xx e o
do comprovante de pagamento de movs.x.x e x.x.
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "A falta de
correspondência entre o código de barras da guia de recolhimento e o comprovante de
pagamento impede a aferição da regularidade do preparo, tornando o recurso deserto." (AgInt
nos EDcl no AREsp n. 2.664.415/SP, relatora Ministra Daniela Teixeira, Terceira Turma,
julgado em 5/5/2025, DJEN de 8/5/2025.).
Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da
interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco)
dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o
recolhimento em dobro do preparo.
Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de movs. x.
x e x.x;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze
centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo
da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor
passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da
Justiça – FUNJUS, referente às custas locais, prevista na Lei Estadual nº 22.956/2025, cujo
novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento
mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em
dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
nsta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/670902 - AR - TR - DOBRO - DIVERGÊNCIA CÓDIGO DE BARRAS - NOVO VALOR 2026.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 612143 - AR - TR - DOBRO- comprovante sem código + funjus - Recurso Extraordinário.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido [RE]',
  'Dobro §4º — comprovante sem código + FUNJUS (RE)',
  $BODY$
Verifica-se que a parte não comprovou o recolhimento do preparo, visto que não é possível
visualizar o código de barras no documento apresentado como comprovante de pagamento no
mov. x.x. Ademais, não comprovou o recolhimento das custas destinadas a este Tribunal de
Justiça, conforme prevê a Lei Estadual nº 21.868, de 18/12/2023.
A jurisprudência do Supremo Tribunal Federal é pacífica no sentido de que "(...) os recursos
dirigidos devem estar acompanhados das guias de recolhimento devidamente preenchidas e
dos respectivos comprovantes de pagamento, ambos de forma visível e legível, sob pena de
deserção" (ARE 1.213.790/MG, Rel. Ministro DIAS TOFFOLI, julgado em 26/06/2019, DJe 24
/06/2019).
Assim sendo, e considerando a ausência de comprovação das custas recursais no ato da
interposição do recurso, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, intime-
se a parte recorrente para que realize, no prazo de 5 (cinco) dias, sob pena de deserção, o
recolhimento em dobro do preparo recursal.
Para tanto, a parte deverá:
1. apresentar o comprovante de pagamento referente à guia de recolhimento de mov. x.x, no
qual conste o código de barra de forma visível e legível, e, ainda, efetuar novo recolhimento da
importância de R$ 1.157,59 (mil, cento e cinquenta e sete reais e cinquenta e nove centavos),
por meio de guia GRU-COBRANÇA, conforme Resolução/STF nº 875, de 23.06.2025, cujo
novo valor passou a vigorar a partir de 1º.07.2025, eis que devido em dobro;
2. caso seja impossível apresentar referido comprovante de pagamento, efetuar o pagamento
da importância de R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos),
referente ao recolhimento em dobro das custas do Supremo Tribunal Federal (Resolução/STF
nº 875, de 23/06/2025);
3. comprovar o pagamento de R$ 600,00 (seiscentos reais), referente ao recolhimento em
dobro das custas locais, prevista na Lei Estadual nº 22.956/2025, cujo novo valor passou a
vigorar em 18/03/2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF por e-mail,
que conterá todas as informações do pagamento, inclusive com os dados de identificação do
contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/612143 - AR - TR - DOBRO- comprovante sem código + funjus - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 676940 - AR - TR - DOBRO - EM PROCESSO DE AUTENTICAÇÃO - VALOR 2026.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  'Comprovantes com status ''Em processo de autenticação''',
  'Dobro §4º — em processo de autenticação (REsp)',
  $BODY$
Tendo em vista que não houve a comprovação do recolhimento do preparo no ato da
interposição do recurso especial, intime-se a parte recorrente para que comprove, no prazo de
5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo
Civil, o pagamento em dobro das custas recursais.
Cumpre esclarecer que não foi possível verificar o efetivo recolhimento das custas recursais, já
que consta a informação "Em processo de autenticação" nos comprovantes juntados nos
movs. X.x e x.x.
Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento referentes às guias de recolhimento de movs. x.
x e x.x, nos quais constem que o recolhimento foi efetivamente efetuado;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze
centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo
da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor
passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da
Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo
novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento
mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em
dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/676940 - AR - TR - DOBRO - EM PROCESSO DE AUTENTICAÇÃO - VALOR 2026.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 600448 - AR - TR - DOBRO - recolhimento recurso originário - ato incompatível.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'preparo_simples_jg',
  'JG alegada - ato incompatível (pagamento anterior no recurso originário)',
  'Preparo simples — JG ato incompatível (REsp)',
  $BODY$
A parte recorrente não comprovou o preparo, no ato da interposição do recurso especial, como prevê o
artigo 1.007, do Código de Processo Civil, sob alegação de que é beneficiária da assistência judiciária
gratuita (mov. 1.1, pág. 1).
No entanto, em que pese o benefício ter sido concedido ao réu, ora recorrente, na sentença (mov. 75.1 dos
autos originários), o fato é que ao interpor o recurso de apelação cível originário a parte efetuou o
pagamento das custas recursais (mov. 79.2 - AC), praticando assim ato incompatível com o deferimento da
gratuidade da justiça.
Isso porque, "(...) o pagamento das despesas do preparo afasta a presunção relativa de hipossuficiência,
constituindo renúncia à pretendida isenção, sobretudo considerando serem vedados comportamentos
contraditórios em nosso ordenamento jurídico." (AgInt no AREsp 1410995/GO, Rel. Ministro MARCO
AURÉLIO BELLIZZE, TERCEIRA TURMA, julgado em 26/08/2019, DJe 30/08/2019).
Sendo assim, tendo em vista que a parte, no ato da interposição do recurso, não comprovou o preparo,
bem como não requereu a concessão do benefício da assistência judiciária gratuita, impõe-se que realize o
recolhimento em dobro do preparo recursal, sob pena de ser considerado deserto o recurso especial por ela
interposto (artigo 1.007, § 4º, do Código de Processo Civil).
Portanto, intime-se a parte recorrente para que, no prazo de 5 (cinco) dias, comprove o recolhimento dos
seguintes valores:
- R$ 133,70 (cento e trinta e três reais e setenta centavos) ao Fundo da Justiça – FUNJUS, referente ao
recolhimento em dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 21.868, de
18/12/2023), por meio de guia gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br
/preparo-de-recurso-2o-grau (informações pelo telefone (041) 3210-7117);
- R$ 518,16 (quinhentos e dezoito reais e dezesseis centavos), referente ao recolhimento em dobro das
custas devidas ao Superior Tribunal de Justiça (Tabela “B”, do Anexo da Resolução STJ/GP nº 7, de 28 de
janeiro de 2025), por meio da guia GRU-COBRANÇA, gerada no sítio da Corte Superior, cujo novo valor
passou a vigorar a partir de 03.02.2025.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a
juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma
visível e legível. No caso do pagamento ter sido realizado por meio da plataforma digital PagTesouro, da
Secretaria do Tesouro Nacional (ferramenta disponibilizada pela Corte Superior), a parte deverá apresentar
o recibo enviado pelo STJ por e-mail, que conterá todas as informações do pagamento, inclusive com os
dados de identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/600448 - AR - TR - DOBRO - recolhimento recurso originário - ato incompatível.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Documentos de preparo não localizados (N/D) + Decreto não apresentado',
  'Dobro §4º + Decreto — docs N/D (REsp)',
  $BODY$
Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN,
meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte Recorrente,
nos termos dos artigos 1.003, § 6º c/c 224, §1º, ambos do Código de Processo Civil para, em 5
(cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico,
a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente
/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser
reconhecida a intempestividade do recurso, visto que o documento de mov. x não é suficiente e
/ou não serve para tal finalidade.
Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do
pagamento do preparo no ato da interposição do recurso, a parte recorrente deverá
realizar, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil,
o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026;
- R$ 600,00 (seiscentos centavos) ao Fundo da Justiça – FUNJUS, referente ao recolhimento
em dobro das custas locais (Lei Estadual nº 2.956/2025), por meio de guia gerada no próprio
sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-recurso-2o-grau.
Cumpre esclarecer que a juntada do comprovante de pagamento (mov. 1.2), sem a
respectiva guia de recolhimento não basta para comprovação das custas recursais (AgInt nos
EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins, Segunda Seção, julgado em 19/11
/2024, DJe de 25/11/2024.).
Ressalta-se que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/615885 - AR- TR - JUNTAR DECRETO E DOBRO - REsp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Juntou só comprovantes (sem guias de recolhimento) + Decreto não apresentado',
  'Dobro §4º + Decreto — só comprovantes (REsp)',
  $BODY$
Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN,
meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte Recorrente,
nos termos dos artigos 1.003, § 6º c/c 224, §1º, ambos do Código de Processo Civil para, em 5
(cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico,
a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente
/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser
reconhecida a intempestividade do recurso.
Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do
pagamento do preparo no ato da interposição do recurso, visto que juntou os comprovantes de
pagamento sem as respectivas guias, a parte recorrente deverá comprovar, sob pena de
deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em
dobro do preparo recursal.
A jurisprudência do Superior Tribunal de Justiça é unânime no sentido de que "Para
comprovação do preparo recursal não basta o pagamento das custas processuais, impõe-se a
juntada dos respectivos comprovantes e guia de recolhimento, sob pena de deserção.
Precedentes." (AgInt nos EAREsp n. 2.343.494/SP, relator Ministro Humberto Martins,
Segunda Seção, julgado em 19/11/2024, DJe de 25/11/2024.)
Para tanto, a parte deverá:
1. apresentar as guias de recolhimento referentes aos comprovantes de pagamento de movs. x.
x e x.x;
2. realizar o recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze
centavos), referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do Anexo
da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo valor
passou a vigorar em 02/02/2026, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da
Justiça – FUNJUS, referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo
novo valor passou a vigorar em 18/03/2026, totalizando o valor dobrado devido.
Ressalta-se que, caso seja impossível apresentar os documentos mencionados no item 1, a
parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 540,24 (quinhentos e quarenta reais e vinte e quatro centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026.
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça – FUNJUS, referente ao recolhimento em
dobro das custas do Tribunal de Justiça do Estado do Paraná (Lei Estadual nº 22.956/2025).
Insta salientar, que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/677400 - AR - TR - JUNTAR DECRETO E DOBRO - JUNTOU SOMENTE COMPROVANTES.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 646311 - AR - TR - JUNTAR DECRETO e DOBRO - RE.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_decreto',
  'Documentos de preparo não localizados (N/D) + Decreto não apresentado [RE]',
  'Dobro §4º + Decreto — docs N/D (RE)',
  $BODY$
Tendo em vista que a intimação do acórdão recorrido se deu pela disponibilização no DJEN,
meio norteador da aferição da tempestividade na Corte Superior, intime-se a parte Recorrente,
nos termos dos artigos 1.003, § 6º c/c 224, §1º, ambos do Código de Processo Civil para, em 5
(cinco) dias, juntar o Decreto Judiciário expedido e publicado no Diário da Justiça Eletrônico,
a fim de comprovar a ocorrência de feriado local e/ou de suspensão do expediente
/prorrogação do prazo recursal, no âmbito deste Tribunal de Justiça, sob pena de ser
reconhecida a intempestividade do recurso, visto que o documento de mov. x não é suficiente e
/ou não serve para tal finalidade.
Ainda, no mesmo prazo de 5 (cinco) dias, diante da ausência de comprovação do
pagamento do preparo no ato da interposição do recurso, a parte recorrente deverá realizar,
sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o
recolhimento dos seguintes valores:
Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 600,00 (seiscentos centavos), por meio do Fundo da Justiça – FUNJUS, referente ao
recolhimento em dobro das custas locais (Lei Estadual nº 2.956/2025), por meio de guia
gerada no próprio sítio deste Tribunal de Justiça, no link https://www.tjpr.jus.br/preparo-de-
recurso-2o-grau;
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-
Cobrança, referente ao recolhimento em dobro das custas do Supremo Tribunal Federal
(Resolução/STF nº 875, de 23.06.2025).
Cumpre esclarecer que a juntada do comprovante de pagamento (mov. 1.2), sem a respectiva
guia de recolhimento, não basta para comprovação das custas recursais (ARE 1.213.790/MG,
Rel. Ministro DIAS TOFFOLI, julgado em 26/06/2019, DJe 24/06/2019).
Ressalta-se que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF pore-mail,
que conterá todas as informações do pagamento, inclusive com os dados de identificação do
contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/646311 - AR - TR - JUNTAR DECRETO e DOBRO - RE.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_proc',
  'Procuração e preparo em dobro - ambos ausentes',
  'Dobro §4º + procuração — ambos ausentes (REsp)',
  $BODY$
Intime-se o(a) Recorrente XXXXXXXX, nos termos do artigo 932, parágrafo único, do Código
de Processo Civil, para, no prazo de 5 (cinco) dias, regularizar a sua representação
processual, sob pena de ser considerado inexistente o apelo (Súmula 115 do STJ),
providenciando a juntada da procuração, ou, se for o caso, da cadeia completa de
substabelecimentos, a fim de que seja possível aferir a regularidade postulatória do advogado
XXXXXXXX, subscritor(a) do presente recurso por meio de assinatura digital, uma vez que o
instrumento procuratório a ele(a) conferido não foi localizado nos autos.
Ainda, diante da ausência de comprovação do pagamento do preparo no ato da interposição
do recurso, a parte deverá, em igual prazo, sob pena de deserção, realizar o recolhimento em
dobro das custas recursais (artigo 1.007, § 4º, do Código de Processo Civil).
Para tanto, deve ser comprovado o recolhimento dos seguintes valores:
- R$ 118,62 (cento e dezoito reais e sessenta e dois centavos) ao Fundo da Justiça –
FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do
Paraná (Lei Estadual nº 20.948, de 23/12/2021);
- R$ 518,16 (quinhentos e dezoito reais e dezesseis centavos), por meio da guia
GRUCOBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior
Tribunal de Justiça, conforme Tabela “B”, do Anexo da Resolução STJ/GP nº 7, de 28 de
janeiro de 2025.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596249 - AR - TR - PROCURAÇÃO + Recolhimento em DOBRO - Resp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Valor divergente / insuficiente (e val. falso)',
  'Complementação §2º — valor divergente GRU (REsp)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil,
para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do
recurso especial, sob pena de deserção.
Para tanto, deve ser recolhida a importância de R$ 270,12 (duzentos e setenta reais e doze
centavos), por meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de
Justiça, conforme Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27
DE JANEIRO DE 2026 .
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte, número único do processo, bem como o Número de Referência,
código que identifica o recolhimento.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596358 - AR - TR - Complementação preparo - GRU - Recurso Especial (valor ATUALIZADO a partir de 2 de fev - 2026).pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Juntou só a guia GRU (sem comprovante de pagamento)',
  'Complementação §7º — só guia GRU (REsp)',
  $BODY$
Verifica-se que o recurso especial não foi devidamente preparado, pois a parte não comprovou
o efetivo recolhimento das custas devidas ao Superior Tribunal de Justiça, uma vez que juntou
tão somente a guia de recolhimento (mov. x.x), sem o respectivo comprovante de pagamento.
Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte
recorrente para que apresente, no prazo de 5 (cinco) dias, sob pena de deserção,
comprovante de pagamento referente à guia de recolhimento de mov. x.x, página x, no qual
conste o código de barras de forma visível e legível, “(...) para que não haja dúvida acerca da
validade do documento e do seu efetivo recolhimento.” (AREsp 2062229-SP/RS, Rel. Ministro
HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22/03 /2022).
Caso não seja possível apresentar referido documento, a parte deverá realizar o recolhimento d
a importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por meio de guia GRU-
COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme Tabela “B”, do
Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE 2026, cujo novo
valor passou a vigorar a partir de 02/02/2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte, número único do processo, bem como o Número de Referência,
código que identifica o recolhimento.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/670588 - AR - TR - Complementação preparo - GRU (valor atualizado 02 fev - 2026) - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596798 - AR - TR - Complementação preparo - GRU - Ausência código de barras - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Comprovante sem código de barras legível',
  'Complementação §7º — sem cód. barras GRU (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que no comprovante de
pagamento juntado no mov. X.X (X) não consta o código de barras.
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a
sequência numérica do código de barras ou com o código de barras ilegível não é apto para
comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de
comparação com os dados constantes da guia de recolhimento apresentada. Precedentes."
(AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma,
julgado em 14/10/2024, DJe de 23/10/2024).
Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte
recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do
preparo do recurso, sob pena de deserção.
Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de
recolhimento de mov. X.X (X), em que conste o respectivo código de barras.
Caso não seja possível apresentação do referido documento, deverá ser realizado novo
recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por
meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme
Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE
2026, cujo novo valor passou a vigorar a partir de 02/02/2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596798 - AR - TR - Complementação preparo - GRU - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 628802 - AR-TR- Complementação do preparo - guia GRU - divergência código de barras.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Divergência no código de barras da guia e do comprovante',
  'Complementação §7º — divergência cód. barras GRU (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o recolhimento ao
Superior Tribunal de Justiça não restou comprovado, já que não há correspondência entre o
código de barras constante na guia de recolhimento de mov. xx e o do comprovante de
pagamento de mov. xx..
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "A falta de
correspondência entre o código de barras da guia de recolhimento e o comprovante de
pagamento impede a aferição da regularidade do preparo, tornando o recurso deserto." (AgInt
nos EDcl no AREsp n. 2.664.415/SP, relatora Ministra Daniela Teixeira, Terceira Turma,
julgado em 5/5/2025, DJEN de 8/5/2025.).
Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte
recorrente, para que, no prazo de 5 (cinco) dias, junte aos autos o comprovante de pagamento
referente à guia de recolhimento de mov. xx.
Caso não seja possível a apresentação do comprovante de pagamento, realizar novo
recolhimento da importância de R$ 270,12 (duzentos e setenta reais e doze centavos), por
meio de guia GRU-COBRANÇA, referente às custas do Superior Tribunal de Justiça, conforme
Tabela “B”, do Anexo da INSTRUÇÃO NORMATIVA STJ/GP N. 13 DE 27 DE JANEIRO DE
2026.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte, número único do processo, bem como o Número de Referência,
código que identifica o recolhimento.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/628802 - AR-TR- Complementação do preparo - guia GRU - divergência código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596359 - AR - TR - Complementação preparo - GRU - Recurso Extraordinário.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_gru',
  'Valor divergente / insuficiente (e val. falso) [RE]',
  'Complementação §2º — valor divergente GRU (RE)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil,
para que, no prazo de 05 (cinco) dias, comprove nos autos a complementação do preparo do
recurso extraordinário, sob pena de deserção.
Para tanto, deve ser recolhida a importância de R$ 1.157,59 (mil cento e cinquenta e sete
reais e cinquenta e nove centavos), por meio de guia GRU Cobrança, referente ao
recolhimento das custas do Supremo Tribunal Federal, conforme Resolução/STF nº 875, de 23
de junho de 2025, que entrou em vigor no dia 1º de julho do corrente ano.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte), a parte deverá apresentar o recibo enviado pelo STF por e-mail,
que conterá todas as informações do pagamento, inclusive com os dados de identificação do
contribuinte, número único do processo, bem como o Número de Referência, código que
identifica o recolhimento.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596359 - AR - TR - Complementação preparo - GRU - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Juntou só a guia FUNJUS (sem comprovante de pagamento)',
  'Complementação §7º — só guia FUNJUS (REsp)',
  $BODY$
O recurso não foi devidamente preparado, visto que o recolhimento das custas recursais
devidas a este Tribunal de Justiça não restou comprovado, visto que juntou a guia de
recolhimento de mov. xx, sem o respectivo comprovante de pagamento.
Sendo assim, intime-se a parte Recorrente, nos termos do artigo 1.007, § 2º, do Código de
Processo Civil, para, no prazo de 5 (cinco) dias, complementar o preparo recursal, sob pena
de deserção.
Para tanto, deverá apresentar o comprovante de pagamento referente à guia juntada no mov.
xxx, no qual conste o código de barras de forma visível e legível, “ (...) para que não haja
dúvida acerca da validade do documento e do seu efetivo recolhimento.” (AREsp 2062229-SP
/RS, Rel. Ministro HUMBERTO MARTINS, QUARTA TURMA, julgado em 21/03/2022, DJe 22
/03 /2022).
Caso não seja possível apresentar referido documento, deverá ser realizado o recolhimento da
importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas
locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a vigorar em 18/03
/2026.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596361 - AR - TR - Complementação preparo - FUNJUS - somente guia sem comprovante de pagamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596757 - AR - TR - Complementação preparo - FUNJUS - Ausência código de barras - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Comprovante sem código de barras legível',
  'Complementação §7º — sem cód. barras FUNJUS (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que no documento juntado
no mov. XX (X) como comprovante de pagamento não consta o código de barras.
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a
sequência numérica do código de barras ou com o código de barras ilegível não é apto para
comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de
comparação com os dados constantes da guia de recolhimento apresentada. Precedentes."
(AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma,
julgado em 14/10/2024, DJe de 23/10/2024).
Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte
recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do
preparo do recurso, sob pena de deserção.
Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de
recolhimento de mov. XX (X), em que conste o respectivo código de barras.
Caso não seja possível apresentação do referido documento, deverá ser realizado o
recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS,
referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a
vigorar em 18/03/2026.
Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual
conste o código de barras de forma visível e legível, são imprescindíveis para fins de
comprovação do efetivo recolhimento do preparo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596757 - AR - TR - Complementação preparo - FUNJUS - Ausência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596347 - AR - TR - Complementação preparo - FUNJUS - Códigos de barras não correspondem - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Divergência no código de barras da guia e do comprovante',
  'Complementação §7º — divergência cód. barras FUNJUS (REsp)',
  $BODY$
O presente recurso especial não foi devidamente preparado, visto que o recolhimento das
custas devidas a este Tribunal de Justiça não restou comprovado, pois não há
correspondência entre o código de barras constante na guia de recolhimento de e o do
comprovante de pagamento (mov. x.x, páginas xx e xx).
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "(...) a falta de
correspondência entre o código de barras constante do comprovante de pagamento e o da
guia de recolhimento do preparo implica pena de deserção, ante a irregularidade no
pagamento. Incidência da Súmula 187 do STJ.". (AgInt no AREsp n. 1.894.595/RJ, relator
Ministro Raul Araújo, Quarta Turma, julgado em 22/11/2021, DJe de 2/12/2021.)
Assim sendo, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, intime-se a parte
recorrente, para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do
preparo do recurso, sob pena de deserção.
Para tanto, a parte deverá juntar aos autos o comprovante de pagamento referente à guia de
recolhimento de mov. XX.
Caso não seja possível apresentação do referido documento, deverá ser realizado o
recolhimento da importância R$ 300,00 (trezentos reais) ao Fundo da Justiça – FUNJUS,
referente às custas locais, previstas na Lei Estadual nº 22.956/2025, cujo novo valor passou a
vigorar em 18/03/2026.
Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual
conste o código de barras de forma visível e legível, são imprescindíveis para fins de
comprovação do efetivo recolhimento do preparo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596347 - AR - TR - Complementação preparo - FUNJUS - Códigos de barras não correspondem - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'comp_irr_funjus',
  'Valor divergente / insuficiente',
  'Complementação §2º — valor FUNJUS atualizado (REsp)',
  $BODY$
Intime-se a parte recorrente, nos termos do artigo 1.007, § 2º, do Código de Processo Civil,
para que, no prazo de 5 (cinco) dias, comprove nos autos a complementação do preparo do
recurso, sob pena de deserção.
Para tanto, a parte deverá gerar a guia no próprio sítio deste Tribunal de Justiça, https://www.
tjpr.jus.br/preparo-de-recurso-2o-grau e efetuar o recolhimento da importância de R$ 300,00
(trezentos reais) ao Fundo da Justiça – FUNJUS, referente às custas locais, previstas na Lei
Estadual nº 22.956/2025.
Insta salientar que a juntada da guia e do respectivo comprovante de pagamento, no qual
conste o código de barras de forma visível e legível, são imprescindíveis para fins de
comprovação do efetivo recolhimento do preparo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/676727 - AR - TR - FUNJUS - A PARTIR DE 18_03_2025.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596190 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - COMPLEMENTAÇÃO - Recurso Extraordinário.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Juntou só o comprovante GRU (sem guia) após intimação [RE]',
  'Deserção §2º — juntou só comprovante (RE)',
  $BODY$
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
  $BODY$,
  ARRAY['minutas/596190 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - COMPLEMENTAÇÃO - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Juntou só o comprovante GRU (sem guia) após intimação',
  'Deserção §2º — juntou só comprovante (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na
forma do despacho de mov. x.1.
No entanto, não cumpriu a determinação, visto que apresentou tão somente o comprovante de
pagamento (mov. xx.2), sem a respectiva guia de recolhimento.
Nesse particular, é assente o entendimento do Superior Tribunal de Justiça “(...) no sentido de
que os recursos especiais devem estar acompanhados das guias de recolhimento
devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de
forma visível e legível. A juntada apenas do comprovante de pagamento das custas, sem a
respectiva guia de recolhimento, configura ausência de regular comprovação do preparo."
(AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4
/2023).
Veja-se, ainda:
"DIREITO PROCESSUAL CIVIL. AGRAVO REGIMENTAL.
IRREGULARIDADE NO RECOLHIMENTO DO PREPARO. RECURSO
IMPROVIDO.
I. Caso em exame
1. Agravo regimental interposto contra decisão da Presidência do STJ que
não conheceu do recurso em mandado de segurança, em razão de
irregularidade no recolhimento do preparo.
2. O agravante foi intimado para sanar o vício, mas não regularizou a
situação, apresentando apenas comprovante de pagamento sem a guia de
recolhimento das custas devidas ao STJ.
II. Questão em discussão
3. A questão em discussão consiste em saber se a ausência de
regularização do preparo, mesmo após intimação, impede o conhecimento
do recurso em mandado de segurança.
III. Razões de decidir
4. O STJ entende que é deserto o recurso se a parte não comprova,
adequada e tempestivamente, o recolhimento do preparo recursal, mesmo
após intimação.
5. A jurisprudência do STJ é firme no sentido de que a ausência de
comprovação do recolhimento das custas devidas, na forma exigida,
acarreta a deserção do recurso.
6. A alegação de rigor excessivo e formalismo exacerbado não afasta a
necessidade de cumprimento das exigências processuais para o
conhecimento do recurso.
IV. Dispositivo e tese
7. Agravo regimental improvido.
Tese de julgamento: '1. A ausência de regularização do preparo, mesmo
após intimação, impede o conhecimento do recurso. 2. A jurisprudência do
STJ exige a comprovação adequada e tempestiva do recolhimento do
preparo recursal para evitar a deserção do recurso'.
Dispositivos relevantes citados: CPC, art. 1.007, § 4º; RISTJ, art. 21-E, V.
Jurisprudência relevante citada: STJ, AgRg no RMS 72.268/RS, Rel. Min.
Reynaldo Soares da Fonseca, Quinta Turma, julgado em 12/12/2023; STJ,
AgRg no RMS 73.256/SP, Rel. Min. Antonio Saldanha Palheiro, Sexta
Turma, julgado em 17/6/2024.
(AgRg no RMS n. 75.687/SC, relator Ministro Ribeiro Dantas, Quinta
Turma, julgado em 14/4/2025, DJEN de 24/4/2025.)
Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a
deserção do recurso especial.
Diante do exposto, inadmito o recurso especial interposto.
Intime-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596186 - AR - TR - DESERTO - 1.007 §2º - ausência de correspondência código de barras - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Divergência de código de barras',
  'Deserção §2º — divergência cód. barras (REsp)',
  $BODY$
Declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de
Processo Civil, uma vez que a complementação do preparo não se deu de forma válida. Isso
porque não há correspondência entre o número do código de barras da guia de recolhimento
de mov. XXX e o comprovante de pagamento de mov. XXX.
A jurisprudência do Superior Tribunal de Justiça"(...) firmou compreensão segundo a qual é
exigida as guias de recolhimento do preparo juntamente com o comprovante de pagamento
bancário, a fim de que todas as informações necessárias para individualizar o pagamento e
identificar a sua pertinência ao processo respectivo sejam colhidas (código de recolhimento,
UG/Gestão, CPF/CNPJ do contribuinte, nome do contribuinte, número de referência)" (AgInt no
AREsp 1.217.562/SP, Rel. Ministro Benedito Gonçalves, Primeira Turma, DJe 10/9/2018).
Ainda, nesse sentido:
“AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PREPARO
RECURSAL. AUSÊNCIA DE CORRESPONDÊNCIA ENTRE O NÚMERO
DE CÓDIGO DE BARRAS E DO COMPROVANTE DE PAGAMENTO
BANCÁRIO. RECURSO DESERTO. AGRAVO INTERNO DESPROVIDO.
1. Nos termos da jurisprudência do Superior Tribunal de Justiça, ‘a falta de
correspondência entre o código de barras da guia de recolhimento e o
comprovante de pagamento enseja irregularidade no preparo do recurso
especial e, portanto, sua deserção’ (AgInt no AREsp 1.449.432/SP, Relator
Ministro Luis Felipe Salomão, Quarta Turma, DJe de 12/5/2020).
2. É inviável a análise de questão meritória em recurso especial que não
ultrapassa sequer o juízo de admissibilidade.
3. Agravo interno desprovido.”
(AgInt no AREsp n. 2.665.947/MS, relator Ministro Marco Aurélio Bellizze,
Terceira Turma, julgado em 28/10/2024, DJe de 5/11/2024.).
Diante do exposto, inadmito o recurso especial interposto.
Intimem-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596186 - AR - TR - DESERTO - 1.007 §2º - ausência de correspondência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596836 - AR - TR - DESERTO - 1.007 §2º - ausência de código de barras na complementação- Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Sem código de barras legível',
  'Deserção §2º — sem cód. barras (REsp)',
  $BODY$
Declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de Processo Civil,
uma vez que a complementação do preparo não se deu validamente. Isso porque, não consta o número do
código de barras no documento indicado como comprovante de pagamento (mov. x.x), inviabilizando a
conferência com a guia de recolhimento apresentada (mov. x.x).
Nesse sentido:
"DIREITO PROCESSUAL CIVIL. EMBARGOS DE DECLARAÇÃO. PREPARO
RECURSAL. AUSÊNCIA DE VÍCIO DE CONTRADIÇÃO. EMBARGOS REJEITADOS.
1. Embargos de declaração opostos contra acórdão que negou provimento a agravo
interno no recurso especial, em razão da ausência do número de código de barras no
comprovante de pagamento bancário, caracterizando irregularidade no preparo do
recurso especial e tornando-o deserto.
2. A ausência do número de código de barras no comprovante de pagamento
bancário caracteriza irregularidade no preparo do recurso especial, tornando-o
deserto, conforme jurisprudência consolidada do STJ. 'É deserto o recurso especial
não instruído, no momento da sua interposição, com a guia de recolhimento cuja
comprovação do preparo é realizada mediante a juntada de documento de
pagamento que não contém vinculação ao processo, notadamente pela ausência do
número do código de barras da GRU das custas destinadas ao STJ.' (AgInt no AREsp
n. 2.442.072/MT, relator Ministro Humberto Martins, Terceira Turma, julgado em 26/2
/2024, DJe de 29/2/2024.
3. Não há contradição quando os fundamentos e a conclusão do julgado guardam
coerência lógica entre si, sendo a contradição apta a ensejar embargos de declaração
aquela interna ao corpo textual da decisão.
4. Os embargos de declaração não se prestam à rediscussão do mérito da causa ou
à modificação do julgado, salvo para a supressão de vícios internos da decisão.
5. Embargos de declaração rejeitados.
(EDcl no AgInt no REsp n. 2.145.179/SP, relatora Ministra Daniela Teixeira, Terceira
Turma, julgado em 5/5/2025, DJEN de 8/5/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intimem-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596836 - AR - TR - DESERTO - 1.007 §2º - ausência de código de barras na complementação- Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596222 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Ausência de complementação.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Permaneceu inerte (certidão de decurso de prazo)',
  'Deserção §2º — inércia (REsp)',
  $BODY$
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
  $BODY$,
  ARRAY['minutas/596222 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Ausência de complementação.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596227 - AR - TR - DESERTO - 1.007 §2º - Recurso Extraordinário - Ausência de complementação.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Permaneceu inerte (certidão de decurso de prazo) [RE]',
  'Deserção §2º — inércia (RE)',
  $BODY$
Declaro a deserção do recurso extraordinário, nos termos do § 2º do artigo 1.007 do Código de
Processo Civil, uma vez que a parte recorrente, devidamente intimada do despacho de mov. xx.
1, permaneceu inerte (certidão de decurso de prazo de mov. xx.1).
Nesse sentido:
"Ementa: Direito Processual Civil. Agravo interno em recurso extraordinário
com agravo. Ação de obrigação de fazer. Ausência de comprovação do
preparo no momento da interposição do recurso. Deserção. Intimação.
Prazo inobservado. I. Caso em exame 1. Agravo interno contra decisão
que negou seguimento a recurso extraordinário com agravo, o qual tem por
objeto acórdão que negou provimento a recurso. II. Questão em discussão
2. Preenchimento dos pressupostos de admissibilidade do recurso
extraordinário com agravo. III. Razão de decidir 3. A petição de agravo não
trouxe novos argumentos aptos a desconstituir a decisão agravada, a qual
deve ser mantida pelos seus próprios fundamentos. 4. O recurso
extraordinário não foi devidamente preparado. No caso, diante da
insuficiência do preparo, determinou-se a complementação do valor
devido, na forma do art. 1.007, § 2º, do Código de Processo Civil, mas
a parte recorrente ficou inerte. Assim, não atendida a exigência
contida no art. 1.007, caput, do Código de Processo Civil, é deserto o
recurso. Precedente. 5. O deferimento do benefício da gratuidade da
justiça só produz efeitos futuros. Nessa linha, veja-se o ARE 1393769-
AgR, Relª. Minª. Rosa Weber. IV. Dispositivo 6. Nos termos do art. 85, §
11, do CPC/2015, fica majorado em 10% o valor da verba honorária fixada
anteriormente, observados os limites legais do art. 85, §§ 2º e 3º, do CPC
/2015 e a eventual concessão de justiça gratuita. 7. Agravo interno a que
se nega provimento, com a aplicação da multa de 1% (um por cento) sobre
o valor atualizado da causa, nos termos do art. 1.021, § 4º, do CPC/2015.
(ARE 1553341 AgR, Relator(a): LUÍS ROBERTO BARROSO (Presidente),
Tribunal Pleno, julgado em 06-08-2025, PROCESSO ELETRÔNICO DJe-s
/n DIVULG 13-08-2025 PUBLIC 14-08-2025) - Destaquei
Diante do exposto, inadmito o recurso extraordinário interposto.
Intime-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596227 - AR - TR - DESERTO - 1.007 §2º - Recurso Extraordinário - Ausência de complementação.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 607948 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovação fora do prazo legal.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Comprovação da complementação apresentada fora do prazo legal',
  'Deserção §2º — comprovação fora do prazo (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar a complementação do preparo no prazo de 5
(cinco) dias, na forma do despacho de mov. xx.x.
Verifica-se que a leitura de intimação do referido despacho foi confirmada em xx.xx.xxxx, de
modo que o prazo de 5 (cinco) dias concedido para regularização do preparo passou a fluir em
xx.xx.xxxx e findou em xx.xx.xxxx, sendo certificado o decurso do prazo em xx.xx.xxxx (mov.
xx.x).
Sendo assim, e considerando que a regularização do preparo foi feita intempestivamente, na
medida em que os documentos foram apresentados em xx.xx.xxxx (mov. xx.x/xx.x), nos
termos do § 2º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso
especial.
Nesse sentido, o seguinte precedente:
"TRIBUTÁRIO E PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO
EM RECURSO ESPECIAL. RECURSO ESPECIAL. PREPARO
INSUFICIENTE. INTIMAÇÃO PARA COMPLEMENTAÇÃO DO PREPARO,
NO PRAZO DE 5 (CINCO) DIAS, PREVISTO NO ART. 1.007, § 2º, DO
CPC/2015. NÃO ATENDIMENTO, NO PRAZO LEGAL. DESERÇÃO.
SÚMULA 187/STJ. AGRAVO INTERNO IMPROVIDO.
I. Agravo interno aviado contra decisão que julgara Agravo em Recurso
Especial interposto contra decisum publicado na vigência do CPC/2015.
II. No caso, a deserção foi declarada, porquanto o Recurso Especial foi
instruído, no momento de sua interposição, com o preparo insuficiente.
Assim, constatada tal irregularidade, a parte recorrente foi intimada para
complementar o preparo, no prazo de 5 (cinco) dias, previsto no art. 1.007,
§ 2º, do CPC/2015, sob pena de deserção, por despacho publicado em 30
/07/2020. Todavia, como destacou a decisão ora agravada, a regularização
foi feita intempestivamente, em 24/08/2020.
III. A extemporânea comprovação da complementação do preparo recursal
inviabiliza o conhecimento do presente recurso, nos termos da Súmula 187
desta Corte (‘É deserto o recurso interposto para o Superior Tribunal de
Justiça, quando o recorrente não recolhe, na origem, a importância das
despesas de remessa e retorno dos autos’). Precedentes do STJ: AgInt no
REsp 1.663.044/PB, Rel. Ministro SÉRGIO KUKINA, PRIMEIRA TURMA,
DJe de 24/04/2018; AgInt no AREsp 443.695/RJ, Rel. Ministro GURGEL
DE FARIA, PRIMEIRA TURMA, DJe de 15/12/2017; AgInt no AREsp
965.146/RJ, Rel. Ministro FRANCISCO FALCÃO, SEGUNDA TURMA, DJe
de 08/03/2017; AgInt no AREsp 935.613/MG, Rel. Ministro MARCO
AURÉLIO BELLIZZE, TERCEIRA TURMA, DJe de 23/02/2017; AgRg no
AREsp 222.293/RJ, Rel. Ministro LUIS FELIPE SALOMÃO, QUARTA
TURMA, DJe de 25/09/2015; AgRg no REsp 1.548.884/DF, Rel. Ministro
MOURA RIBEIRO, TERCEIRA TURMA, DJe de 30/06/2016; AgRg no
AREsp 531.057/SP, Rel. Ministro JOÃO OTÁVIO DE NORONHA,
TERCEIRA TURMA, DJe de 16/11/2015.
IV. Agravo interno improvido.
(AgInt no AREsp n. 1.788.290/MS, relatora Ministra Assusete Magalhães,
Segunda Turma, julgado em 29/3/2021, DJe de 6/4/2021.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/607948 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovação fora do prazo legal.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Agendamento bancário',
  'Deserção §2º — agendamento bancário (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na forma do
despacho de mov. xx.x.
No entanto, não cumpriu a determinação validamente. Isso porque, o documento juntado no mov. xx.x
consiste em comprovante de agendamento de boleto, não estando apto a comprovar o efetivo pagamento
das custas devidas.
Sendo assim, declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de
Processo Civil.
Nesse sentido:
AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PROCESSUAL CIVIL.
AUSÊNCIA DE RECOLHIMENTO DAS CUSTAS LOCAIS. INTIMAÇÃO PARA A
REGULARIZAÇÃO. NÃO ATENDIMENTO DA DETERMINÇÃO. APRESENTAÇÃO
DE COMPROVANTE DE AGENDAMENTO. RECURSO ESPECIAL DESERTO.
INOVAÇÃO RECURSAL INCABÍVEL. AGRAVO INTERNO DESPROVIDO.
1. Em consonância com a orientação desta Corte Superior, 'a parte recorrente deve
comprovar, no momento da interposição do recurso especial, o recolhimento das
custas e do porte de remessa e retorno devidos à União, bem como dos valores
locais, estipulados pelo Tribunal de origem. Precedentes' (AgInt no AREsp n.
2.380.943/SP, Relatora a Ministra Nancy Andrighi, Terceira Turma, julgado em 16/10
/2023, DJe de 18/10/2023).
2. No caso dos autos, o Tribunal de origem constatou a ausência de comprovação do
recolhimento das custas locais. Assim, determinou a intimação da parte recorrente,
'na pessoa de seu advogado, para que, em 05 (cinco) dias, complemente o preparo,
recolhendo a guia Funjecc, sob pena de deserção (art. 1.007, § 2º, do Código de
Processo Civil)'.
3. O vício não foi corrigido, tendo em vista que os agravantes apenas apresentaram,
fora do prazo estabelecido pela Corte de origem, o comprovante de agendamento do
recolhimento das custas locais. Como consequência, perante o Tribunal de origem, o
recurso especial não foi conhecido por ser deserto, pressuposto de admissibilidade
cuja ausência foi confirmado pela Presidência desta Corte.
4. 'A mera juntada do comprovante de agendamento de pagamento das custas não
constitui meio apto à comprovação de que o preparo do recurso especial foi
efetivamente recolhido' (AgInt no AREsp n. 2.315.909/GO, Relator Ministro Humberto
Martins, Terceira Turma, julgado em 29/4/2024, DJe de 2/5/2024).
5. A alegação de falha da instituição financeira, que seria a responsável por promover
o agendamento no recolhimento das custas recursais, não foi comprovada e
caracteriza inovação recursal.
6. Agravo interno desprovido.
(AgInt no AREsp n. 2.591.156/MS, relator Ministro Marco Aurélio Bellizze, Terceira
Turma, julgado em 19/8/2024, DJe de 22/8/2024.)
Diante do exposto, inadmito o recurso especial interposto.
Intimem-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_1pgto',
  'Guia pertencente a outro processo',
  'Deserção §2º — FUNJUS paga via GRU (REsp)',
  $BODY$
A parte foi intimada para complementar o preparo do Recurso Especial, sob pena de deserção, na forma do
despacho de mov. xx.x.
Todavia, a complementação do preparo não se deu de forma válida, eis que a recorrente utilizou a guia
GRU-COBRANÇA para efetuar o pagamento (mov. xx.x), quando deveria tê-lo feito por meio de guia gerada
no sítio deste Tribunal de Justiça do Estado do Paraná (FUNJUS), eis que se trata de custas estaduais, na
forma do que constou no despacho de mov. xx.x.
Nesse particular, é assente o entendimento da Corte Superior de que “É deserto o recurso especial na
hipótese em que a parte recorrente, mesmo após intimada a regularizar o preparo, não o faz devidamente
(art. 1.007, § 7º, do CPC/2015). Precedentes.” (AgInt no AREsp n. 1.692.201/MT, relator Ministro Ricardo
Villas Bôas Cueva, Terceira Turma, julgado em 8/2/2021, DJe de 12/2/2021.).
Veja-se:
"Na hipótese de insuficiência do recolhimento do preparo no ato da interposição do
recurso, o recorrente será intimado para realizar o recolhimento, sob pena de
deserção (art. 1.007, § 2º, do CPC). (...) No presente caso, intimada a complementar
o preparo, a parte recorrente deixou de supri-lo, devendo ser mantida a decisão
agravada. (STJ. AgInt no AREsp 1520429/RJ, Rel. Ministro LUIS FELIPE SALOMÃO,
QUARTA TURMA, julgado em 05/11/2019, DJe 12/11/2019).
Assim sendo, e considerando a ausência da complementação determinada, é que nos termos do artigo
1.007, § 2º, do Código de Processo Civil, declaro a deserção do Recurso Especial.
Diante do exposto, inadmito o Recurso Especial interposto.
Intime-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Permaneceu inerte (certidão de decurso de prazo)',
  'Deserção §4º — inércia (REsp)',
  $BODY$
A parte recorrente, devidamente intimada para comprovar o recolhimento em dobro do preparo
recursal (despacho de mov. XXX), não se manifestou (certidão de decurso de prazo de mov.
XXX).
Sendo assim, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a
deserção do recurso especial.
Nesse sentido, o seguinte precedente:
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE
DIVERGÊNCIA EM AGRAVO EM RECURSO ESPECIAL. PREPARO.
COMPROVAÇÃO. AUSÊNCIA. INTIMAÇÃO. ART. 1.007, § 4º, DO CPC.
JUNTADA DE DOCUMENTO. DESERÇÃO. DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos
termos do art. 1.007, § 4º, do CPC, a parte não comprovar o pagamento
em dobro ou a prévia concessão de gratuidade de justiça no prazo
assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos
Ferreira, Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596237 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Extraordinário.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Permaneceu inerte (certidão de decurso de prazo) [RE]',
  'Deserção §4º — inércia (RE)',
  $BODY$
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
  $BODY$,
  ARRAY['minutas/596237 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 607949 - AR - TR - DESERTO - 1.007 §4º - Recurso Especial - Comprovação fora do prazo legal.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Comprovação do dobro apresentada fora do prazo legal',
  'Deserção §4º — comprovação fora do prazo (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal no prazo de 5
(cinco) dias, na forma do despacho de mov. xx.x.
Verifica-se que a leitura de intimação do referido despacho foi confirmada em xx.xx.xxxx, de modo que o
prazo de 5 (cinco) dias concedido para regularização do preparo passou a fluir em xx.xx.xxxx e findou em xx.
xx.xxxx, sendo certificado o decurso do prazo em xx.xx.xxxx (mov. xx.x). Portanto, a petição juntada em xx.
xx.xxxx (mov. xx.x) está intempestiva.
Cumpre esclarecer que, ainda que a parte alegue que o recolhimento do preparo foi realizado
tempestivamente, certo é que a sua comprovação ocorreu fora do prazo legal.
Portanto, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso
especial.
Nesse sentido, o seguinte precedente:
"PROCESSUAL CIVIL. AGRAVO INTERNO NOS EMBARGOS DE DIVERGÊNCIA
EM AGRAVO EM RECURSO ESPECIAL. PREPARO. COMPROVAÇÃO. AUSÊNCIA.
INTIMAÇÃO. ART. 1.007, § 4º, DO CPC. JUNTADA DE DOCUMENTO. DESERÇÃO.
DECISÃO MANTIDA.
1. O recurso deve ser declarado deserto se, depois da intimação nos termos do art.
1.007, § 4º, do CPC, a parte não comprovar o pagamento em dobro ou a prévia
concessão de gratuidade de justiça no prazo assinalado na referida intimação.
2. Agravo interno a que se nega provimento."
(AgInt nos EAREsp n. 2.431.515/SP, relator Ministro Antonio Carlos Ferreira,
Segunda Seção, julgado em 18/3/2025, DJEN de 25/3/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/607949 - AR - TR - DESERTO - 1.007 §4º - Recurso Especial - Comprovação fora do prazo legal.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596255 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Intimado para pagar em dobro e pagou em valor simples',
  'Deserção §4º — pagou simples em vez de dobro (REsp)',
  $BODY$
O(A) Recorrente, devidamente intimado(a) para comprovar o recolhimento em dobro do preparo (despacho
de mov. XX), apresentou tão somente os comprovantes de pagamento (mov. XX), deixando, portanto, de
juntar as respectivas guias de recolhimento.
Sendo assim, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do
recurso especial.
Nesse sentido, os seguintes precedentes:
"PROCESSO CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL.
FALTA DE COMPROVAÇÃO DO PREPARO, INTIMAÇÃO PARA RECOLHIMENTO
EM DOBRO. NÃO CUMPRIMENTO. RECURSO DESERTO. AGRAVO INTERNO
NÃO PROVIDO.
1. Esta Corte Superior de Justiça tem entendimento consolidado no sentido de que, o
recorrente, no ato da interposição do recurso especial, deve comprovar o
recolhimento do porte remessa e retorno e das custas judiciais, bem como dos
valores exigidos pelo Tribunal de origem.
2. A parte recorrente foi intimidada, por decisão da Presidência do Superior Tribunal
de Justiça, para apresentar o comprovante de efetivo pagamento e realizar a
complementação do recolhimento do preparo, uma vez que devido em dobro, nos
termos do art. 1.007, §4º, do CPC.
3. Ocorre que a parte recorrente não atendeu no prazo estipulado a integralidade da
determinação da Presidência.
4. Registra-se que o Superior Tribunal de Justiça firmou entendimento no sentido de
que é imprescindível que os recursos interpostos para esta Corte Superior estejam
acompanhados não só dos comprovantes de pagamento, mas também das guias de
recolhimento devidamente preenchidas, sob pena de deserção.
5. Agravo interno não provido."
(AgInt no AREsp n. 2.172.045/PA, relator Ministro Mauro Campbell Marques,
Segunda Turma, julgado em 3/4/2023, DJe de 13/4/2023.)
"DIREITO ADMINISTRATIVO. AGRAVO INTERNO NO AGRAVO EM RECURSO
ESPECIAL. IRREGULARIDADE NO PREPARO. GUIA DE RECOLHIMENTO.
AUSÊNCIA DE JUNTADA SIMULTÂNEA COM O COMPROVANTE DE
PAGAMENTO DAS CUSTAS RECURSAIS. APRESENTAÇÃO POSTERIOR DA
GUIA. IMPOSSIBILIDADE. PRECLUSÃO CONSUMATIVA. DESERÇÃO
CONFIGURADA. SÚMULA 187/STJ. AGRAVO INTERNO A QUE SE NEGA
PROVIMENTO.
1. Consoante asseverado na decisão agravada da Presidência do Superior Tribunal
de Justiça, o STJ consolidou o entendimento de que os recursos interpostos para
esta Corte Superior devem estar acompanhados, simultaneamente, das Guias de
Recolhimento da União (GRU) devidamente preenchidas, além dos respectivos
comprovantes de pagamento, ambos de forma visível e legível, sob pena de deserção.
2. Na hipótese dos autos, a petição de interposição do recurso especial foi instruída
apenas com a prova de quitação, ausente a GRU (fls. 217/218).
3. Considera-se deserto o recurso especial interposto sem a comprovação do preparo
mediante a apresentação conjunta dos comprovantes de pagamento das custas
processuais e das respectivas guias de recolhimento da União. Incidência da Súmula
187/STJ.
4. Ressalto, por fim, que 'a jurisprudência assente desta Corte Superior é no sentido
de que a intimação para complementação do preparo somente é admitida quando
pago o valor de forma insuficiente, e não por ausência das guias de recolhimento,
como no caso dos autos, por operada a preclusão consumativa' (AgRg no REsp n.
1.562.615/SP, relator Ministro Benedito Gonçalves, Primeira Turma, julgado em 21/11
/2017, DJe de 27/11/2017).
5. Agravo a que se nega provimento."
(AgInt no AREsp n. 2.258.023/GO, relator Ministro Paulo Sérgio Domingues, Primeira
Turma, julgado em 4/9/2023, DJe de 8/9/2023.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596255 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596260 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Extraordinário.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Intimado para pagar em dobro e pagou em valor simples [RE]',
  'Deserção §4º — pagou simples em vez de dobro (RE)',
  $BODY$
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
  $BODY$,
  ARRAY['minutas/596260 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Extraordinário.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Documentos não localizados (N/D)',
  'Deserção §4º — guias sem cód. barras (REsp)',
  $BODY$
A parte recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal, sob pena de
deserção (despacho de mov. xx.1).
Entretanto, verifica-se que o recolhimento do preparo não restou comprovado. Isso porque, não consta o
número do código de barras nos documentos indicados como comprovantes de pagamento (movs. X e X),
inviabilizando a conferência com as guias de recolhimento apresentadas (movs. X e X).
Ressalta-se que o despacho de mov. x.1 mencionou que para comprovação do efetivo recolhimento do
preparo, a parte deveria providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual
constasse o código de barras de forma visível e legível.
A Corte Superior firmou entendimento no sentido de que “A ausência do número de código de barras no
comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-se,
portanto, deserto"(AgInt nos EDcl nos EREsp n. 1.563.122/RS, relatora Ministra Maria Isabel Gallotti, Corte
Especial, julgado em 24/10/2023, DJe de 30/10/2023).
Ainda, nesse sentido, o seguinte precedente:
"AGRAVO INTERNO NO RECURSO ESPECIAL. PREPARO RECURSAL.
AUSÊNCIA DO NÚMERO DE CÓDIGO DE BARRAS NO COMPROVANTE DE
PAGAMENTO BANCÁRIO. REGULARIZAÇÃO QUE DEPENDE DO
RECOLHIMENTO EM DOBRO NO PRAZO ESTIPULADO. DUPLO JUÍZO DE
ADMISSIBILIDADE. MAJORAÇÃO DOS HONORÁRIOS RECURSAIS.
POSSIBILIDADE. AGRAVO INTERNO DESPROVIDO.
1. A jurisprudência do Superior Tribunal de Justiça firmou-se no sentido de que "a
ausência de regular comprovação do preparo, no ato de interposição do recurso,
implica a incidência do § 4º do art. 1.007 do CPC/2015. Quem não prova o
pagamento a tempo e modo, sem o amparo de justa causa (§ 6º), nem efetua o
recolhimento em dobro quando intimado (§§ 4º e 5º), sofre a pena da deserção
(Súmula 187/STJ)" - (AgInt no REsp n. 1.856.622/RS, Relator o Ministro Og
Fernandes, Segunda Turma, julgado em 15/6/2020, DJe de 24/6/2020).
2. A ausência do número de código de barras no comprovante de pagamento
bancário caracteriza irregularidade no preparo do recurso especial, tornando-o
deserto. Precedentes.
3. A posterior comprovação de pagamento só afasta a deserção se recolhido em
dobro e dentro do prazo estipulado.
4. Cumpre ressaltar que "o recurso especial sujeita-se a um duplo controle de
admissibilidade, não vinculando esta Corte - a quem compete o juízo definitivo de
admissibilidade do apelo nobre - a prévia decisão emanada pelo Tribunal de segundo
grau" (AgInt no REsp n. 2.089.611/SP, Relator Ministro Moura Ribeiro, Terceira
Turma, julgado em 19/8/2024, DJe de 22/8/2024).
5. Aplica-se o disposto no art. 85, § 11, do CPC/2015 e no Enunciado Administrativo 7
/STJ ("Somente nos recursos interpostos contra decisão publicada a partir de 18 de
março de 2016 será possível o arbitramento de honorários sucumbenciais recursais,
na forma do art. 85, § 11, do NCPC"), impondo a majoração do percentual já fixado,
relativo aos honorários advocatícios, independe de comprovação do efetivo trabalho
adicional pelo advogado da parte recorrida, sendo, portanto, devida mesmo quando
não apresentadas contrarrazões.
6. Agravo interno desprovido.
(AgInt no REsp n. 2.145.179/SP, relator Ministro Marco Aurélio Bellizze, Terceira
Turma, julgado em 28/10/2024, DJe de 5/11/2024.)
Sendo assim, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, declaro a deserção do recurso
especial.
Diante do exposto, inadmito o recurso especial interposto.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 604597 - AR - TR - DESERTO - intimação regularização preparo - pedido JG.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Pedido de JG após intimação para dobro (sem efeito retroativo)',
  'Deserção §4º — pedido JG após intimação dobro (REsp)',
  $BODY$
Intimado a comprovar o recolhimento em dobro do preparo recursal (despacho de mov. 13.1), o Recorrente
se manifestou, no ultimo dia do prazo, alegando que "xxxx" e pedindo "xxxx".
O pedido, todavia, não comporta acolhimento.
Ocorre que, na forma do despacho de mov. xx.x, o recolhimento do preparo da apelação cível (mov. xx.x -
AC) se mostrou ato incompatível com o deferimento da gratuidade da justiça.
Assim, e considerando que não houve renovação do pleito no recurso especial, mas somente agora, cumpre
registrar que o pedido não socorre ao recorrente, posto que eventual deferimento da benesse legal não
possui efeito retroativo, de modo a não mais dispensar o recolhimento das custas do presente recurso
especial.
Sendo assim, e considerando que a parte recorrente, devidamente intimada, não regularizou o preparo
recursal, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso
especial.
Nesse sentido, os seguinte precedentes:
"AGRAVO INTERNO NOS EMBARGOS DE DECLARAÇÃO NO AGRAVO EM
RECURSO ESPECIAL. JUSTIÇA GRATUITA. CONCESSÃO. EFEITO EX NUNC.
PREPARO RECURSAL. COMPROVANTE DE TRANSFERÊNCIA BANCÁRIA.
AUSÊNCIA DE VINCULAÇÃO AO CÓDIGO DE BARRAS EXPRESSO NA GUIA DE
RECOLHIMENTO DA UNIÃO - GRU. RECURSO ESPECIAL DESERTO. AGRAVO
INTERNO DESPROVIDO. 1. Com efeito, 'o benefício da gratuidade judiciária não tem
efeito retroativo, de modo que a sua concessão posterior à interposição do recurso
não tem o condão de isentar a parte do recolhimento do respectivo preparo. Desse
modo, nem mesmo eventual deferimento da benesse nesta fase processual,
descaracterizaria a deserção do recurso especial' (AgInt no AREsp n. 2.380.943/SP,
Relatora a Ministra Nancy Andrighi, Terceira Turma, julgado em 16/10/2023, DJe de
18/10/2023). 2. A jurisprudência do Superior Tribunal de Justiça firmou-se no sentido
de que 'a ausência de regular comprovação do preparo, no ato de interposição do
recurso, implica a incidência do § 4º do art. 1.007 do CPC/2015. Quem não prova o
pagamento a tempo e modo, sem o amparo de justa causa (§ 6º), nem efetua o
recolhimento em dobro quando intimado (§§ 4º e 5º), sofre a pena da deserção
(Súmula 187/STJ)' - (AgInt no REsp n. 1.856.622/RS, Relator o Ministro Og
Fernandes, Segunda Turma, julgado em 15/6/2020, DJe de 24/6/2020). 3. A
transferência bancária de valor, por meio de boleto, sem a vinculação da Guia de
Recolhimento da União - GRU, não é documento apto a comprovar o pagamento das
custas devidas ao Superior Tribunal de Justiça. Precedentes. 4. A ausência do
número de código de barras no comprovante de pagamento bancário caracteriza
irregularidade no preparo do recurso especial, tornando-o deserto.5. Agravo interno
desprovido. (AgInt nos EDcl no AREsp n. 2.641.710/RJ, relator Ministro Marco Aurélio
Bellizze, Segunda Turma, julgado em 12/3/2025, DJEN de 19/3/2025.)
"PROCESSO CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL.
RECOLHIMENTO DE CUSTAS. ATO INCOMPATÍVEL COM PEDIDO DE
GRATUIDADE DE JUSTIÇA. RECOLHIMENTO EM DOBRO. NÃO COMPROVADO.
DESERÇÃO. SÚMULA N. 187/STJ. 1. As custas não foram recolhidas no ato da
interposição do recurso especial. Como houve a renúncia ao pedido de gratuidade em
razão do recolhimento a posteriori, é imperiosa a observância do art. 1.007, § 4º, do
CPC, com o consequente recolhimento em dobro. 2. No caso dos autos, constatada a
irregularidade e devidamente intimada, a parte recorrente deixou de efetuar o
recolhimento em dobro, o que atrai a incidência da Súmula 187 do STJ. Agravo
interno improvido. (AgInt no AREsp n. 2.546.934/SP, relator Ministro Humberto
Martins, Terceira Turma, julgado em 19/8/2024, DJe de 22/8/2024.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se. Diligências necessárias
  $BODY$,
  ARRAY['minutas/604597 - AR - TR - DESERTO - intimação regularização preparo - pedido JG.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 676412 - AR - TR - DESERTO - INTIMAÇÃO RECOLHIMENTO DOBRO - PEDIDO JG - RE.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Pedido de JG após intimação para dobro (sem efeito retroativo) [RE]',
  'Deserção §4º — pedido JG após intimação dobro (RE)',
  $BODY$
Intimado a comprovar o recolhimento em dobro do preparo recursal (despacho de mov. xx.1), o
Recorrente manifestou-se, no ultimo dia do prazo, alegando que "xxxx" e pedindo "xxxx".
O pedido, todavia, não comporta acolhimento, visto que não houve requerimento de concessão
da assistência judiciária gratuita no momento da interposição do recurso, mas somente agora,
sendo que eventual deferimento da benesse legal não possui efeito retroativo, de modo a não
mais dispensar o recolhimento das custas do presente apelo.
Sendo assim, e considerando que a parte recorrente, devidamente intimada, não regularizou o
preparo recursal, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a
deserção do recurso especial.
Nesse sentido, o seguinte precedente:
"AGRAVO INTERNO NO RECURSO EXTRAORDINÁRIO COM AGRAVO.
DIREITO PROCESSUAL CIVIL. AUSÊNCIA DE RECOLHIMENTO DO
PREPARO RECURSAL. DESERÇÃO DO RECURSO EXTRAORDINÁRIO.
GRATUIDADE DA JUSTIÇA. CONCESSÃO. SEM EFEITOS
RETROATIVOS. PRECEDENTES. 1. O recurso extraordinário não foi
devidamente preparado, mesmo tendo sido a parte intimada a efetuar
o recolhimento, na forma do artigo 1.007, § 4º, do CPC/2015. Deserção
do recurso. 2. A concessão do benefício da gratuidade da justiça por esta
Corte não gera efeitos retroativos para afastar a deserção do recurso
extraordinário assentada na origem. 3. Agravo interno não provido, com
imposição de multa de 5% (cinco por cento) do valor atualizado da causa
(artigo 1.021, § 4º, do CPC), caso seja unânime a votação. 4. Honorários
advocatícios majorados ao máximo legal em desfavor da parte recorrente,
caso as instâncias de origem os tenham fixado, nos termos do artigo 85, §
11, do Código de Processo Civil, observados os limites dos §§ 2º e 3º e a
eventual concessão de justiça gratuita." (ARE 1278970 AgR, Relator(a):
LUIZ FUX (Presidente), Tribunal Pleno, julgado em 30/11/2020,
PROCESSO ELETRÔNICO DJe-021 DIVULG 03-02-2021 PUBLIC 04-02-
2021) - Destaquei
Diante do exposto, inadmito o recurso extraordinário interposto.
Intime-se. Diligências necessárias
  $BODY$,
  ARRAY['minutas/676412 - AR - TR - DESERTO - INTIMAÇÃO RECOLHIMENTO DOBRO - PEDIDO JG - RE.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 0148996-45.2025.8.16.0000 Pet - INTIMAÇÃO N. ÚNICO PROCESSO GUIA GRU DIVERGENTE + FUNJUS.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_ambas',
  'Guias pertencentes a outros processos',
  'Deserção — guias de outros processos (REsp)',
  $BODY$
Tendo em vista que não houve o recolhimento do preparo no ato da interposição do recurso,
intime-se a parte recorrente, para que, no prazo de 5 (cinco) dias, sob pena de deserção, nos
termos do artigo 1.007, § 4º, do Código de Processo Civil, o pagamento em dobro das custas
recursais.
Cumpre esclarecer que a guia de recolhimento juntada no mov. 1.4 refere-se ao processo
principal de Cumprimento Provisório de Sentença sob nº 0033192-84.2025.8.16.0014,
ademais, não consta código de barras no comprovante de pagamento, sendo assim, não
restou comprovado o recolhimento das custas devidas no presente recurso especial. Ainda,
verifica-se que não comprovou o recolhimento das custas locais.
A jurisprudência do Superior Tribunal de Justiça é firme no sentido de que "Documento sem a
sequência numérica do código de barras ou com o código de barras ilegível não é apto para
comprovar o pagamento das custas devidas ao STJ, tendo em vista a impossibilidade de
comparação com os dados constantes da guia de recolhimento apresentada. Precedentes."
(AgInt no AREsp n. 2.558.214/RS, relatora Ministra Maria Isabel Gallotti, Quarta Turma,
julgado em 14/10/2024, DJe de 23/10/2024).
Sendo assim, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 133,70 (cento e trinta e três reais e setenta centavos), por meio do Fundo da Justiça –
FUNJUS, referente ao recolhimento em dobro das custas do Tribunal de Justiça do Estado do
Paraná;
- R$ 518,16 (quinhentos e dezoito reais e dezesseis centavos), por meio da guia GRU-
COBRANÇA, referente ao recolhimento em dobro das custas devidas ao Superior Tribunal de
Justiça.
Cumpre esclarecer que para comprovação do efetivo recolhimento do preparo, a parte deverá
providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o
código de barras de forma visível e legível. No caso do pagamento ter sido realizado por meio
da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional (ferramenta
disponibilizada pela Corte Superior), a parte deverá apresentar o recibo enviado pelo STJ por
e-mail, que conterá todas as informações do pagamento, inclusive com os dados de
identificação do contribuinte e número único do processo.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/0148996-45.2025.8.16.0000 Pet - INTIMAÇÃO N. ÚNICO PROCESSO GUIA GRU DIVERGENTE + FUNJUS.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 627206 - AR - TR - INTEMPESTIVO E DESERTO (complementação) - DECURSO DE PRAZO - Recurso Especial.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_intempestivo',
  'Pagamento realizado fora do prazo recursal',
  'Deserção — intempestivo complementação (REsp)',
  $BODY$
Após a interposição do recurso, percebeu-se a necessidade de intimação da parte recorrente
para comprovar a ocorrência do feriado local, ou a determinação de suspensão do prazo no
Tribunal, por meio de documentação idônea, na forma do disposto no artigo 1.003, § 6º c/c o
artigo 224, §1º, ambos do Código de Processo Civil, bem como para regularizar o preparo
recursal (despacho de XX.1).
Todavia, a determinação não foi cumprida, visto que devidamente intimada, a parte
permaneceu inerte (decurso de prazo de mov. XX.1), o que implica reconhecer a
intempestividade do recurso, assim como, reconhecer a sua deserção, falhas que conduzem a
sua inadmissão.
Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO
ESPECIAL. RECURSO ESPECIAL. INTEMPESTIVIDADE. AUSÊNCIA DE
COMPROVAÇÃO DA SUSPENSÃO DO EXPEDIENTE FORENSE, POR
DOCUMENTO IDÔNEO, APÓS INTIMAÇÃO PARA FAZÊ-LO.
1. É intempestivo o recurso especial em que a parte, após ser intimada
para comprovar ocorrência de feriado local, recesso, paralisação ou
interrupção de expediente forense (art. 1.030, §6º, do CPC), deixa de
demonstrar por meio de documento oficial ou certidão expedida pelo
Tribunal de origem o alegado, não bastando a mera menção à suspensão
de prazos nas razões recursais, tampouco a apresentação de documento
não dotado de fé pública.
2. Não havendo a parte logrado comprovar a suspensão do expediente na
origem no dia 3/11/2023, resta intempestivo o recurso especial interposto a
destempo em 17/11/2023, porquanto interposto fora do prazo de 15 dias
úteis, nos termos do art. 994, VI, c/c os arts. 1.003, § 5º, 1.029 e 219,
caput, todos do Código de Processo Civil. Agravo interno improvido."
(AgInt no AREsp n. 2.714.186/SP, relator Ministro Humberto Martins,
Terceira Turma, julgado em 9/6/2025, DJEN de 12/6/2025.)
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
Diante do exposto, inadmito o recurso.
Diligências necessárias.
  $BODY$,
  ARRAY['minutas/627206 - AR - TR - INTEMPESTIVO E DESERTO (complementação) - DECURSO DE PRAZO - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 0002812-14.2025.8.16.0100 Pet - INADMISSÃO - DESERTO - J.G. INDEFERIDA - INTIMADO CUSTAS - RENUNCIOU O PRAZO.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_jg',
  'Renunciou ao prazo expressamente (petição de renúncia)',
  'Deserção — JG indeferida, renunciou prazo (REsp)',
  $BODY$
Declaro a deserção do recurso especial, uma vez que a parte recorrente devidamente intimada
da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e
determinou o recolhimento do preparo (mov. 18.1), renunciou ao prazo sem cumpri-lo (movs.
21 e 22).
Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO
ESPECIAL. DECISÃO DO RELATOR NO TRIBUNAL DE ORIGEM QUE
NEGOU SEGUIMENTO AO RECURSO DE APELAÇÃO. VIOLAÇÃO DOS
ARTS. 489 E 1.022 DO CPC. NÃO OCORRÊNCIA. DENEGAÇÃO DO
PEDIDO DE JUSTIÇA GRATUITA. AUSÊNCIA DE RECOLHIMENTO DO
PREPARO NO PRAZO ASSINALADO. DESERÇÃO. DECISÃO MANTIDA.
AGRAVO INTERNO NÃO PROVIDO.
1. Os aclaratórios são espécie de recurso de fundamentação vinculada,
exigindo para seu conhecimento a indicação de erro material, obscuridade,
contradição ou omissão em que teria incorrido o julgador (arts. 489 e 1.022
do CPC), não se prestando a novo julgamento da causa.
2. Nos termos da jurisprudência desta Corte, a parte que postula o
benefício da justiça gratuita e tem a sua pretensão rejeitada não pode ser
surpreendida com o imediato reconhecimento da deserção do seu recurso,
sem que lhe tenha sido dada a oportunidade de recolher o preparo no
valor originalmente devido, conforme previsto no art. 99, § 7º, do CPC
(EDcl nos EDcl no AgInt no AREsp nº 2.265.184/SP, relatora Ministra
MARIA ISABEL GALLOTTI, Quarta Turma, julgado aos 17/6/2024, DJe de
19/6/2024).
3. Contudo, se mesmo após ter sido intimada na forma do dispositivo
acima mencionado, a parte não efetuar o recolhimento do preparo recursal
no prazo assinalado, a consequência é o reconhecimento da deserção do
recurso, e não uma nova intimação a fim de possibilitar o recolhimento em
dobro, na esteira do que dispõe o art. 1.007, § 4º, do CPC.
4. Agravo interno não provido".
(AgInt no AREsp n. 2.624.581/MS, relator Ministro Moura Ribeiro, Terceira
Turma, julgado em 24/2/2025, DJEN de 28/2/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intimem-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/0002812-14.2025.8.16.0100 Pet - INADMISSÃO - DESERTO - J.G. INDEFERIDA - INTIMADO CUSTAS - RENUNCIOU O PRAZO.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 600045 - AR - TR - DESERTO - Indeferimento JG - preparo irregular - sem código de barras.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_jg',
  'Apresentou comprovantes sem código de barras (preparo irregular)',
  'Deserção — JG indeferida, preparo irregular (REsp)',
  $BODY$
Declaro a deserção do recurso especial, uma vez que após ser indeferido o pedido de justiça gratuita
formulado na petição recursal (decisão de mov. XX), a parte recorrente foi devidamente intimada para
efetuar o preparo do recurso (despacho de mov. XX), tendo se manifestado nos autos para apresentar as
guias de recolhimento e os comprovantes de pagamento de mov. XX, os quais, contudo, não se revelam
suficientes a comprovar o respectivo pagamento, na medida em que não consta o número do código de
barras, inviabilizando assim a conferência com as guias de recolhimento juntadas (movs. XX e XX).
Ressalta-se que o despacho de mov. XX mencionou que para comprovação do efetivo recolhimento do
preparo a parte deveria providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual
constasse o código de barras de forma visível e legível.
A Corte Superior firmou entendimento no sentido de que “A ausência do número de código de barras no
comprovante de pagamento bancário caracteriza irregularidade no preparo do recurso especial, tornando-se,
portanto, deserto" (AgInt nos EDcl nos EREsp n. 1.563.122/RS, relatora Ministra Maria Isabel Gallotti, Corte
Especial, julgado em 24/10/2023, DJe de 30/10/2023).
Nesse sentido:
“AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PROCESSUAL.
TRIBUNAL DE ORIGEM. DECISÃO DE ADMISSIBILIDADE. JUSTIÇA GRATUITA.
INDEFERIMENTO. PREPARO. REGULARIZAÇÃO. DESERÇÃO. SÚMULA Nº 187
/STJ. MULTA. LITIGÂNCIA DE MÁ-FÉ. CARÁTER PROTELATÓRIO NÃO
VERIFICADO.
1. A jurisprudência do Superior Tribunal de Justiça é firme no sentido de ser essencial
à comprovação do preparo a juntada da guia de recolhimento com o respectivo
comprovante de pagamento, no ato da interposição do especial, sob pena de
deserção.
2. Na hipótese, o pedido de justiça gratuita foi indeferido pelo tribunal de justiça, antes
do juízo prévio de admissibilidade do recurso especial, por ausência de comprovação
da hipossuficiência. Após intimada para recolher o preparo, a parte não o regularizou
na forma devida, não podendo ser novamente intimada para tanto, motivo pelo qual
foi reconhecida a deserção.
3. A aplicação da multa por litigância de má-fé não é automática, pois não se trata de
mera decorrência lógica da rejeição do recurso. No caso concreto, a recorrente
interpôs o recurso legalmente previsto no 4. Agravo interno não provido.
(AgInt no AREsp n. 2.591.328/SC, relator Ministro Ricardo Villas Bôas Cueva,Terceira
Turma, julgado em 16/9/2024, DJe de 18/9/2024.)
PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL.
RECURSO MANEJADO SOB A ÉGIDE DO NCPC. PEDIDO DE REVISÃO
CONTRATUAL. PLANO DE SAÚDE. GRATUIDADE INDEFERIDA. INTIMAÇÃO
PARA PAGAMENTO DO PREPARO (ART. 101, § 2º, NCPC). AUSÊNCIA DE
JUNTADA DA GUIA DE RECOLHIMENTO DO PREPARO. DESERÇÃO. DECISÃO
MANTIDA. AGRAVO INTERNO NÃO PROVIDO.
1. Aplica-se o NCPC a este recurso ante os termos no Enunciado Administrativo nº 3,
aprovado pelo Plenário do STJ na sessão de 9/3/2016: Aos recursos interpostos com
fundamento no CPC/2015 (relativos a decisões publicadas a partir de 18 de março de
2016) serão exigidos os requisitos de admissibilidade recursal na forma do novo CPC.
2. Nos termos da jurisprudência desta Corte, indeferido o pedido de gratuidade
de justiça, o requerente deve ser intimado para realizar o preparo na forma
simples e, não sendo cumprida a determinação na forma devida, o recurso não
será conhecido em virtude da deserção (art. 101, § 2º, NCPC).
3. Inaplicável ao caso as disposições do NCPC, art. 1.007, § 2º (insuficiência no valor
do preparo), § 7º (equívoco no preenchimento das guias de recolhimento) e § 4º
(ausência de comprovação do preparo no ato da interposição recursal).
4. Hipótese em que, indeferido o pedido de justiça gratuita, foi concedido prazo para a
parte comprovar o preparo, sob pena de deserção, o que não foi cumprido
adequadamente, por ausência de juntada da correspondente guia de recolhimento.
5. Preparo não devidamente comprovado. Deserção que se impõe.
6. Não sendo a linha argumentativa apresentada capaz de evidenciar a inadequação
dos fundamentos invocados pela decisão agravada, mantém-se o julgado, por não
haver motivos para a sua alteração.
7. Agravo interno não provido.
(AgInt no AREsp n. 1.727.643/RJ, relator Ministro Moura Ribeiro, Terceira Turma,
julgado em 14/3/2022, DJe de 18/3/2022.) – Destaquei
Diante do exposto, o recurso especial inadmito interposto.
Intimem-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/600045 - AR - TR - DESERTO - Indeferimento JG - preparo irregular - sem código de barras.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 606190 - AR - TR - DESERTO - indeferida a JG e prazo para recolher preparo - inércia - REsp.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_jg',
  'Permaneceu inerte (certidão de decurso de prazo)',
  'Deserção — JG indeferida, inércia (REsp)',
  $BODY$
Declaro a deserção do recurso especial, uma vez que a parte recorrente devidamente intimada
da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e
determinou o recolhimento do preparo (mov. xx.1), permaneceu inerte (mov. x).
Nesse sentido:
"PROCESSUAL CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO
ESPECIAL. DECISÃO DO RELATOR NO TRIBUNAL DE ORIGEM QUE
NEGOU SEGUIMENTO AO RECURSO DE APELAÇÃO. VIOLAÇÃO DOS
ARTS. 489 E 1.022 DO CPC. NÃO OCORRÊNCIA. DENEGAÇÃO DO
PEDIDO DE JUSTIÇA GRATUITA. AUSÊNCIA DE RECOLHIMENTO DO
PREPARO NO PRAZO ASSINALADO. DESERÇÃO. DECISÃO MANTIDA.
AGRAVO INTERNO NÃO PROVIDO.
1. Os aclaratórios são espécie de recurso de fundamentação vinculada,
exigindo para seu conhecimento a indicação de erro material, obscuridade,
contradição ou omissão em que teria incorrido o julgador (arts. 489 e 1.022
do CPC), não se prestando a novo julgamento da causa.
2. Nos termos da jurisprudência desta Corte, a parte que postula o
benefício da justiça gratuita e tem a sua pretensão rejeitada não pode ser
surpreendida com o imediato reconhecimento da deserção do seu recurso,
sem que lhe tenha sido dada a oportunidade de recolher o preparo no
valor originalmente devido, conforme previsto no art. 99, § 7º, do CPC
(EDcl nos EDcl no AgInt no AREsp nº 2.265.184/SP, relatora Ministra
MARIA ISABEL GALLOTTI, Quarta Turma, julgado aos 17/6/2024, DJe de
19/6/2024).
3. Contudo, se mesmo após ter sido intimada na forma do dispositivo
acima mencionado, a parte não efetuar o recolhimento do preparo recursal
no prazo assinalado, a consequência é o reconhecimento da deserção do
recurso, e não uma nova intimação a fim de possibilitar o recolhimento em
dobro, na esteira do que dispõe o art. 1.007, § 4º, do CPC.
4. Agravo interno não provido".
(AgInt no AREsp n. 2.624.581/MS, relator Ministro Moura Ribeiro, Terceira
Turma, julgado em 24/2/2025, DJEN de 28/2/2025.)
Diante do exposto, inadmito o recurso especial interposto.
Intimem-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/606190 - AR - TR - DESERTO - indeferida a JG e prazo para recolher preparo - inércia - REsp.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 672340 - AR - TR - DESERTO - indeferida a JG e prazo para recolher preparo - RE.pdf
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_jg',
  'Permaneceu inerte (certidão de decurso de prazo) [RE]',
  'Deserção — JG indeferida, inércia (RE)',
  $BODY$
Declaro a deserção do recurso extraordinário, uma vez que a parte recorrente devidamente
intimada da decisão que indeferiu o pedido de justiça gratuita formulado na petição recursal e
determinou o recolhimento do preparo (mov. xx.1), permaneceu inerte (mov. xx.1).
Nesse sentido:
"AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. AÇÃO DE
BUSCA E APREENSÃO. 1. DESERÇÃO DO RECURSO ESPECIAL
AFIRMADA PELA CORTE DE ORIGEM. PEDIDO DE ASSISTÊNCIA
JUDICIÁRIA GRATUITA. COMPROVAÇÃO DA HIPOSSUFICIÊNCIA.
PRODUÇÃO DE PROVAS. IMPOSSIBILIDADE DE ANÁLISE. SÚMULA 7
/STJ. 2. INAPLICABILIDADE DO ENTENDIMENTO FIRMADO NO AGRG
NOS ERESP 1.222.355/MG. 3. INÉRCIA DA RECORRENTE EM
ATENDER O CHAMADO PARA A REALIZAÇÃO DO PREPARO.
DESERÇÃO CONFIGURADA. 4. IRRETROATIVIDADE DA CONCESSÃO
DA ASSISTÊNCIA JUDICIÁRIA GRATUITA. 5. AGRAVO IMPROVIDO.(...)"
(AgInt no AREsp 983.952/RJ, Rel. Ministro MARCO AURÉLIO
BELLIZZE, TERCEIRA TURMA, julgado em 23/05/2017, DJe 01/06/2017)
(Destaquei)
"AGRAVO REGIMENTAL. RECLAMAÇÃO. GRATUIDADE DE JUSTIÇA A
EMPRESA PRIVADA. INDEFERIMENTO. CONCESSÃO DE
PRAZO PARA RECOLHIMENTO DAS CUSTAS. AUSÊNCIA
R E C O L H I M E N T O .
INDEFERIMENTO DA PETIÇÃO INICIAL. DESPROVIMENTO 1. Na hipótese em que indeferido o benefício da gratuidade da justiça, deve ser concedido à parte reclamante prazo para recolhimento das custas processuais, nos termos do art. 102, caput, do CPC. Caso não efetuado o recolhimento, deve ser indeferida a petição inicial, nos termos do art. 102, parágrafo único, do CPC. 2.Agravo a que se nega provimento."
(Rcl 66767 AgR, Relator(a): FLÁVIO DINO, Primeira Turma, julgado em
06- 11-2024, PROCESSO ELETRÔNICO DJe-s/n DIVULG 13-11-
2024 PUBLIC 14-11-2024)
Diante do exposto, inadmito o recurso extraordinário interposto.
Intimem-se. Diligências necessárias.
  $BODY$,
  ARRAY['minutas/672340 - AR - TR - DESERTO - indeferida a JG e prazo para recolher preparo - RE.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- =============================================================================
-- PDFs NÃO MAPEADOS (sem template gerado)
-- =============================================================================
-- 0015914-78.2026.8.16.0000 Pet - DESISTENCIA J.G. - CUSTAS DOBRO - PEDIDO DE PARCELAMENTO - INDEFERIDO.pdf -> SEM MAPEAMENTO
-- 596214 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial - Valor a partir de 01.24.pdf -> SEM MAPEAMENTO
-- 596274 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Extraordinário.pdf -> SEM MAPEAMENTO
-- 596759 - AR - TR - DOBRO - Comprovante GRU sem código de barras + FUNJUS.pdf -> SEM MAPEAMENTO
-- 599705 - AR - TR - DOBRO - Comprovante sem código de barras e sem guia.pdf -> SEM MAPEAMENTO
-- 599974 - AR - TR - DESERTO - 1.007 §2º - Divergência código barras - Recurso Especial.pdf -> SEM MAPEAMENTO
-- 604326 - AR - TR - DESERTO - dobro - comprovou FUNJUS forma simples - Recurso Extraordinário.pdf -> SEM MAPEAMENTO
-- 606008 - AR - TR - DESERTO - dobro - comprovação forma simples.pdf -> SEM MAPEAMENTO
-- 608076 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Recolhimento do valor de FUNJUS pela guia FUNREJUS.pdf -> SEM MAPEAMENTO
-- 645022 - AR - TR - DESERTO - 1.007 §2º - despacho procuração e preparo.pdf -> SEM MAPEAMENTO
-- 670304 - AR - TR - INTEMPESTIVO E DESERTO (DOBRO) - DECURSO DE PRAZO - Recurso Especial.pdf -> SEM MAPEAMENTO
-- Caso 01.pdf -> SEM MAPEAMENTO
-- Caso 02.pdf -> SEM MAPEAMENTO
-- Caso 05.pdf -> SEM MAPEAMENTO
-- Caso 07.pdf -> SEM MAPEAMENTO
-- Caso 08.pdf -> SEM MAPEAMENTO
-- Caso 10.pdf -> SEM MAPEAMENTO
-- Caso 12.pdf -> SEM MAPEAMENTO
-- Caso 13.pdf -> SEM MAPEAMENTO
-- apos-indeferimento-de-jg-intimado-para-preparo-simples-e-nao-regularizou.pdf -> SEM MAPEAMENTO
-- nao_tem_comprovante_de_agendamento.pdf -> SEM MAPEAMENTO