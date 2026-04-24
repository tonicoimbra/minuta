-- Criados:
-- A) dobro | Juntou so as guias GRU e FUNJUS (sem comprovantes de pagamento) [RE]
-- B) dobro | Juntou so os comprovantes GRU e FUNJUS (sem as guias de recolhimento) [RE]
-- C) dobro | JG alegada - concessao nao localizada nos autos [RE]
-- D) dobro | JG alegada - ato incompativel (pagamento anterior no recurso originario) [RE]
-- E) dobro | Preparo juntado apos o ato da interposicao (pagamento simples) [RE]
-- F) dobro | Nao pagou / documentos N/D (ausentes ou invalidos) [RE]
-- G) dobro_nd | Comprovantes com status Em processo de autenticacao [RE]
-- H) dobro_nd | Divergencia entre codigo de barras da guia e do comprovante [RE]
-- I) dobro_nd | 2 agendamentos bancarios como comprovante [RE]
-- J) dobro_nd | 2 comprovantes sem codigo de barras legivel [RE]
-- K) dobro_nd | 2 documentos nao localizados (N/D) [RE]
-- L) dobro_nd | 1 guia certa (GRU ou FUNJUS) + comprovante ausente/invalido [RE]
-- M) dobro_nd | Comprovante GRU sem guia + FUNJUS nao recolhida [RE]
-- N) dobro_nd | Guia GRU sem comprovante + FUNJUS nao recolhida [RE]
-- O) dobro_decreto | Documentos de preparo nao localizados (N/D) + Decreto nao apresentado
-- P) dobro_decreto | Juntou so comprovantes (sem guias de recolhimento) + Decreto nao apresentado
-- Q) dobro_decreto | Documentos de preparo nao localizados (N/D) + Decreto nao apresentado [RE]
-- R) dobro_decreto | Juntou so comprovantes (sem guias de recolhimento) + Decreto nao apresentado [RE]
-- S) dobro_proc | Procuracao e preparo em dobro - ambos ausentes
-- T) dobro_proc | Procuracao e preparo em dobro - ambos ausentes [RE]
-- Pulados:
-- Nenhum. Os 20 pares (step_key, option_text) pedidos nao existem exatamente em sql_minutas_FINAL.sql nem em sql_minutas_novos_nos.sql.

-- step_key: dobro | option: Juntou so as guias GRU e FUNJUS (sem comprovantes de pagamento) [RE]
-- Fonte: PDF 596212
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
  ARRAY['PDF-596212.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro | option: Juntou so os comprovantes GRU e FUNJUS (sem as guias de recolhimento) [RE]
-- Fonte: PDF 596212 adaptado
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
  ARRAY['PDF-596212.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro | option: JG alegada - concessao nao localizada nos autos [RE]
-- Fonte: PDF 597127 adaptado para RE
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
  ARRAY['PDF-597127.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro | option: JG alegada - ato incompativel (pagamento anterior no recurso originario) [RE]
-- Fonte: PDF 600448 adaptado para RE
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
  ARRAY['PDF-600448.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro | option: Preparo juntado apos o ato da interposicao (pagamento simples) [RE]
-- Fonte: PDF 598979 adaptado para RE
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
  ARRAY['PDF-598979.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro | option: Nao pagou / documentos N/D (ausentes ou invalidos) [RE]
-- Fonte: PDF 646311 adaptado
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
  ARRAY['PDF-646311.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: Comprovantes com status Em processo de autenticacao [RE]
-- Fonte: PDF 676940 adaptado para RE
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
  ARRAY['PDF-676940.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: Divergencia entre codigo de barras da guia e do comprovante [RE]
-- Fonte: PDF 670902 adaptado para RE
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
  ARRAY['PDF-670902.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: 2 agendamentos bancarios como comprovante [RE]
-- Fonte: PDF 596208 adaptado para RE
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  '2 agendamentos bancarios como comprovante [RE]',
  'Dobro §4 - 2 agendamentos bancarios (RE)',
  $BODY$
Verifica-se que a parte recorrente não comprovou o recolhimento do preparo, já que os comprovantes de agendamento bancário juntados não são documentos aptos a demonstrar o efetivo pagamento das custas.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar os comprovantes de pagamento efetivo referentes às guias de recolhimento juntadas;
2. realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, nos termos da Resolução/STF n. 875, de 23 de junho de 2025, vigente desde 01/07/2025, totalizando o valor dobrado devido;
3. realizar novo recolhimento da importância de R$ 300,00 (trezentos reais) ao Fundo da Justiça - FUNJUS, referente às custas locais, nos termos da Lei Estadual 22.956/2025, totalizando o valor dobrado devido.

Ressalta-se que, caso seja impossível apresentar os comprovantes de pagamento mencionados no item 1, a parte deverá comprovar o recolhimento dos seguintes valores:
- R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
- R$ 600,00 (seiscentos reais), ao Fundo da Justiça - FUNJUS, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.
$BODY$,
  ARRAY['PDF-596208.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: 2 comprovantes sem codigo de barras legivel [RE]
-- Fonte: PDFs 596760 e 599705 adaptados para RE
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
  ARRAY['PDF-596760.pdf', 'PDF-599705.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: 2 documentos nao localizados (N/D) [RE]
-- Fonte: PDF 646311 adaptado para RE
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
  ARRAY['PDF-646311.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: 1 guia certa (GRU ou FUNJUS) + comprovante ausente/invalido [RE]
-- Fonte: PDFs 596759 e 599298 adaptados para RE
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
  ARRAY['PDF-596759.pdf', 'PDF-599298.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: Comprovante GRU sem guia + FUNJUS nao recolhida [RE]
-- Fonte: PDF 596206 adaptado para RE
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
  ARRAY['PDF-596206.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_nd | option: Guia GRU sem comprovante + FUNJUS nao recolhida [RE]
-- Fonte: PDF 596205 adaptado para RE
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'dobro_nd',
  'Guia GRU sem comprovante + FUNJUS nao recolhida [RE]',
  'Dobro §4 - guia GRU sem comprovante + FUNJUS ausente (RE)',
  $BODY$
Verifica-se que a parte recorrente não comprovou o recolhimento do preparo no ato da interposição do recurso, já que juntou a guia de recolhimento das custas destinadas ao Supremo Tribunal Federal, sem o respectivo comprovante de pagamento. Ademais, não realizou o recolhimento das custas locais.

Assim sendo, diante da ausência de comprovação do pagamento das custas no ato da interposição do recurso, intime-se a parte recorrente para que comprove, no prazo de 5 (cinco) dias, sob pena de deserção, nos termos do artigo 1.007, § 4º, do Código de Processo Civil, o recolhimento em dobro do preparo.

Para tanto, a parte recorrente deverá:
1. apresentar o comprovante de pagamento referente à guia de recolhimento já juntada e, ainda, realizar o recolhimento da importância de R$ 1.157,59 (mil cento e cinquenta e sete reais e cinquenta e nove centavos), referente às custas do Supremo Tribunal Federal, eis que devidas em dobro;
2. caso não seja possível juntar o documento mencionado no item 1, deverá realizar o recolhimento da importância de R$ 2.315,18 (dois mil, trezentos e quinze reais e dezoito centavos), por meio da guia GRU-Cobrança, referente ao recolhimento em dobro das custas devidas ao Supremo Tribunal Federal;
3. realizar o recolhimento da importância de R$ 600,00 (seiscentos reais) ao Fundo da Justiça - FUNJUS, por meio de guia gerada no sítio deste Tribunal de Justiça, referente ao recolhimento em dobro das custas locais, nos termos da Lei Estadual 22.956/2025.

Insta salientar que, para comprovação do efetivo recolhimento do preparo, a parte deverá providenciar a juntada da guia e do respectivo comprovante de pagamento, no qual conste o código de barras de forma visível e legível. No caso de pagamento realizado por meio da plataforma digital PagTesouro, da Secretaria do Tesouro Nacional, a parte deverá apresentar o recibo enviado pelo STF por e-mail, que conterá todas as informações do pagamento, inclusive os dados de identificação do contribuinte e o número único do processo.

Diligências necessárias.
$BODY$,
  ARRAY['PDF-596205.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_decreto | option: Documentos de preparo nao localizados (N/D) + Decreto nao apresentado
-- Fonte: PDF 615885
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
  ARRAY['PDF-615885.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_decreto | option: Juntou so comprovantes (sem guias de recolhimento) + Decreto nao apresentado
-- Fonte: PDF 677400
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
  ARRAY['PDF-677400.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_decreto | option: Documentos de preparo nao localizados (N/D) + Decreto nao apresentado [RE]
-- Fonte: PDF 646311
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
  ARRAY['PDF-646311.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_decreto | option: Juntou so comprovantes (sem guias de recolhimento) + Decreto nao apresentado [RE]
-- Fonte: PDF 677400 adaptado para RE
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
  ARRAY['PDF-677400.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_proc | option: Procuracao e preparo em dobro - ambos ausentes
-- Fonte: PDF 596249
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
  ARRAY['PDF-596249.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- step_key: dobro_proc | option: Procuracao e preparo em dobro - ambos ausentes [RE]
-- Fonte: PDF 596249 adaptado para RE
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
  ARRAY['PDF-596249.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();
