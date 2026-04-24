-- 596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf
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
  ARRAY['596230 - AR - TR - DESERTO - 1.007 §4º - Ausência de manifestação - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596255 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf | escolha: desercao_nd_2pgto / Documentos não localizados (N/D), pois a minuta aponta ausência das guias sem individualizar GRU ou FUNJUS.
INSERT INTO minuta_templates (id, step_key, option_text, title, template_text, source_files)
VALUES (
  gen_random_uuid(),
  'desercao_nd_2pgto',
  'Documentos não localizados (N/D)',
  'Deserção § 1.007, §4º - juntou apenas comprovantes',
  $BODY$
O(A) Recorrente, devidamente intimado(a) para comprovar o recolhimento em dobro do preparo (despacho de [MOV_DESPACHO]), apresentou tão somente os comprovantes de pagamento ([MOV_COMPROVANTE]), deixando, portanto, de juntar as respectivas guias de recolhimento.
Sendo assim, nos termos do § 4º do artigo 1.007 do Código de Processo Civil, declaro a deserção do recurso especial.
Nesse sentido, os seguintes precedentes:
"PROCESSO CIVIL. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. FALTA DE COMPROVAÇÃO DO PREPARO, INTIMAÇÃO PARA RECOLHIMENTO EM DOBRO. NÃO CUMPRIMENTO. RECURSO DESERTO. AGRAVO INTERNO NÃO PROVIDO.
1. Esta Corte Superior de Justiça tem entendimento consolidado no sentido de que, o recorrente, no ato da interposição do recurso especial, deve comprovar o recolhimento do porte remessa e retorno e das custas judiciais, bem como dos valores exigidos pelo Tribunal de origem.
2. A parte recorrente foi intimidada, por decisão da Presidência do Superior Tribunal de Justiça, para apresentar o comprovante de efetivo pagamento e realizar a complementação do recolhimento do preparo, uma vez que devido em dobro, nos termos do art. 1.007, §4º, do CPC.
3. Ocorre que a parte recorrente não atendeu no prazo estipulado a integralidade da determinação da Presidência.
4. Registra-se que o Superior Tribunal de Justiça firmou entendimento no sentido de que é imprescindível que os recursos interpostos para esta Corte Superior estejam acompanhados não só dos comprovantes de pagamento, mas também das guias de recolhimento devidamente preenchidas, sob pena de deserção.
5. Agravo interno não provido."
(AgInt no AREsp n. 2.172.045/PA, relator Ministro Mauro Campbell Marques, Segunda Turma, julgado em 3/4/2023, DJe de 13/4/2023.)


"DIREITO ADMINISTRATIVO. AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. IRREGULARIDADE NO PREPARO. GUIA DE RECOLHIMENTO. AUSÊNCIA DE JUNTADA SIMULTÂNEA COM O COMPROVANTE DE PAGAMENTO DAS CUSTAS RECURSAIS. APRESENTAÇÃO POSTERIOR DA GUIA. IMPOSSIBILIDADE. PRECLUSÃO CONSUMATIVA. DESERÇÃO CONFIGURADA. SÚMULA 187/STJ. AGRAVO INTERNO A QUE SE NEGA PROVIMENTO.
1. Consoante asseverado na decisão agravada da Presidência do Superior Tribunal de Justiça, o STJ consolidou o entendimento de que os recursos interpostos para esta Corte Superior devem estar acompanhados, simultaneamente, das Guias de Recolhimento da União (GRU) devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível, sob pena de deserção.
2. Na hipótese dos autos, a petição de interposição do recurso especial foi instruída apenas com a prova de quitação, ausente a GRU (fls. 217/218).
3. Considera-se deserto o recurso especial interposto sem a comprovação do preparo mediante a apresentação conjunta dos comprovantes de pagamento das custas processuais e das respectivas guias de recolhimento da União. Incidência da Súmula 187/STJ.
4. Ressalto, por fim, que 'a jurisprudência assente desta Corte Superior é no sentido de que a intimação para complementação do preparo somente é admitida quando pago o valor de forma insuficiente, e não por ausência das guias de recolhimento, como no caso dos autos, por operada a preclusão consumativa' (AgRg no REsp n. 1.562.615/SP, relator Ministro Benedito Gonçalves, Primeira Turma, julgado em 21/11 /2017, DJe de 27/11/2017).
5. Agravo a que se nega provimento."
(AgInt no AREsp n. 2.258.023/GO, relator Ministro Paulo Sérgio Domingues, Primeira Turma, julgado em 4/9/2023, DJe de 8/9/2023.)
Diante do exposto, inadmito o recurso especial interposto.
Intime-se.
$BODY$,
  ARRAY['596255 - AR - TR - DESERTO - 1.007 §4º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- 596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf | escolha: desercao_nd_2pgto / Sem código de barras legível, pois a minuta trata o preparo em conjunto, sem individualizar GRU ou FUNJUS.
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
  ARRAY['596792 - AR - TR - DESERTO - 1.007 §4º - guias sem código de barras - Recurso Especial.pdf']
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
  ARRAY['607949 - AR - TR - DESERTO - 1.007 §4º - Recurso Especial - Comprovação fora do prazo legal.pdf']
)
ON CONFLICT (step_key, option_text) DO UPDATE
SET template_text = EXCLUDED.template_text,
    title = EXCLUDED.title,
    source_files = EXCLUDED.source_files,
    updated_at = now();

-- NOVO NÓ NECESSÁRIO: 627206 - AR - TR - INTEMPESTIVO E DESERTO (complementação) - DECURSO DE PRAZO - Recurso Especial.pdf → minuta cumulativa de intempestividade e deserção por inércia após intimação para comprovar feriado local/suspensão e regularizar complementação do preparo.

-- NOVO NÓ NECESSÁRIO: 670304 - AR - TR - INTEMPESTIVO E DESERTO (DOBRO) - DECURSO DE PRAZO - Recurso Especial.pdf → minuta cumulativa de intempestividade e deserção por inércia após intimação para comprovar feriado local/suspensão e recolher preparo em dobro.

-- NOVO NÓ NECESSÁRIO: 600045 - AR - TR - DESERTO - Indeferimento JG - preparo irregular - sem código de barras.pdf → indeferimento de justiça gratuita com prazo para preparo simples; parte juntou guia/comprovante sem código de barras legível, hipótese fora dos nós atuais.

-- NOVO NÓ NECESSÁRIO: 606190 - AR - TR - DESERTO - indeferida a JG e prazo para recolher preparo - inércia - REsp.pdf → indeferimento de justiça gratuita com concessão de prazo para preparo simples e inércia da parte, hipótese fora dos nós atuais.
