-- SQL gerado a partir de extração com pdftotext -enc UTF-8
-- Diretório-fonte: D:/CODE_TONI/gerador_minutas/minutas/
-- Arquivos de Recurso Extraordinário ignorados conforme instrução: 596190, 596227, 604326

-- 596836 - mesmo terminal de 596186 (desercao_gru_1pgto / Sem código de barras legível),
-- mas com redação própria; não inserido para evitar conflito na UNIQUE (step_key, option_text).
-- 599974 - mesmo terminal de 596186 (desercao_gru_1pgto / Sem código de barras legível),
-- mas com redação própria; não inserido para evitar conflito na UNIQUE (step_key, option_text).
INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files) VALUES (
  'desercao_gru_1pgto',
  'Sem código de barras legível',
  'Deserção §2º — código de barras irregular na GRU (REsp)',
  $m1$
Declaro a deserção do recurso especial, nos termos do § 2º do artigo 1.007 do Código de Processo Civil, uma vez que a complementação do preparo não se deu de forma válida. Isso porque não há correspondência entre o número do código de barras da guia de recolhimento de mov. [MOV_GUIA] e o comprovante de pagamento de mov. [MOV_COMPROVANTE].
A jurisprudência do Superior Tribunal de Justiça"(...) firmou compreensão segundo a qual é exigida as guias de recolhimento do preparo juntamente com o comprovante de pagamento bancário, a fim de que todas as informações necessárias para individualizar o pagamento e identificar a sua pertinência ao processo respectivo sejam colhidas (código de recolhimento, UG/Gestão, CPF/CNPJ do contribuinte, nome do contribuinte, número de referência)" (AgInt no AREsp 1.217.562/SP, Rel. Ministro Benedito Gonçalves, Primeira Turma, DJe 10/9/2018).
Ainda, nesse sentido:
“AGRAVO INTERNO NO AGRAVO EM RECURSO ESPECIAL. PREPARO RECURSAL. AUSÊNCIA DE CORRESPONDÊNCIA ENTRE O NÚMERO DE CÓDIGO DE BARRAS E DO COMPROVANTE DE PAGAMENTO BANCÁRIO. RECURSO DESERTO. AGRAVO INTERNO DESPROVIDO.
1. Nos termos da jurisprudência do Superior Tribunal de Justiça, ‘a falta de correspondência entre o código de barras da guia de recolhimento e o comprovante de pagamento enseja irregularidade no preparo do recurso especial e, portanto, sua deserção’ (AgInt no AREsp 1.449.432/SP, Relator Ministro Luis Felipe Salomão, Quarta Turma, DJe de 12/5/2020).
2. É inviável a análise de questão meritória em recurso especial que não ultrapassa sequer o juízo de admissibilidade.
3. Agravo interno desprovido.”
(AgInt no AREsp n. 2.665.947/MS, relator Ministro Marco Aurélio Bellizze, Terceira Turma, julgado em 28/10/2024, DJe de 5/11/2024.).

Diante do exposto, inadmito o recurso especial interposto. Intimem-se.
$m1$,
  ARRAY['minutas/596186 - AR - TR - DESERTO - 1.007 §2º - ausência de correspondência código de barras - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO NOTHING;

-- NOVA OPÇÃO NECESSÁRIA NO FLUXO: 596193 -> juntou apenas o comprovante de pagamento, sem a respectiva guia.
INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files) VALUES (
  'desercao_gru_1pgto',
  'Guia GRU não apresentada após intimação (nunca juntada)',
  'Deserção §2º — comprovante sem guia GRU após intimação (REsp)',
  $m2$
A parte recorrente foi intimada para comprovar a complementação do preparo recursal, na forma do despacho de mov. [MOV_DESPACHO].
No entanto, não cumpriu a determinação, visto que apresentou tão somente o comprovante de pagamento (mov. [MOV_COMPROVANTE]), sem a respectiva guia de recolhimento.
Nesse particular, é assente o entendimento do Superior Tribunal de Justiça “(...) no sentido de que os recursos especiais devem estar acompanhados das guias de recolhimento devidamente preenchidas, além dos respectivos comprovantes de pagamento, ambos de forma visível e legível. A juntada apenas do comprovante de pagamento das custas, sem a respectiva guia de recolhimento, configura ausência de regular comprovação do preparo." (AgInt no AREsp n. 2.208.504/RS, Rel. Min. Benedito Gonçalves, Primeira Turma, DJe de 26/4 /2023).
Veja-se, ainda:
"DIREITO PROCESSUAL CIVIL. AGRAVO REGIMENTAL. IRREGULARIDADE NO RECOLHIMENTO DO PREPARO. RECURSO IMPROVIDO. I. Caso em exame 1. Agravo regimental interposto contra decisão da Presidência do STJ que não conheceu do recurso em mandado de segurança, em razão de irregularidade no recolhimento do preparo. 2. O agravante foi intimado para sanar o vício, mas não regularizou a situação, apresentando apenas comprovante de pagamento sem a guia de recolhimento das custas devidas ao STJ. II. Questão em discussão 3. A questão em discussão consiste em saber se a ausência de regularização do preparo, mesmo após intimação, impede o conhecimento do recurso em mandado de segurança.

III. Razões de decidir 4. O STJ entende que é deserto o recurso se a parte não comprova, adequada e tempestivamente, o recolhimento do preparo recursal, mesmo após intimação. 5. A jurisprudência do STJ é firme no sentido de que a ausência de comprovação do recolhimento das custas devidas, na forma exigida, acarreta a deserção do recurso. 6. A alegação de rigor excessivo e formalismo exacerbado não afasta a necessidade de cumprimento das exigências processuais para o conhecimento do recurso. IV. Dispositivo e tese 7. Agravo regimental improvido. Tese de julgamento: '1. A ausência de regularização do preparo, mesmo após intimação, impede o conhecimento do recurso. 2. A jurisprudência do STJ exige a comprovação adequada e tempestiva do recolhimento do preparo recursal para evitar a deserção do recurso'. Dispositivos relevantes citados: CPC, art. 1.007, § 4º; RISTJ, art. 21-E, V. Jurisprudência relevante citada: STJ, AgRg no RMS 72.268/RS, Rel. Min. Reynaldo Soares da Fonseca, Quinta Turma, julgado em 12/12/2023; STJ, AgRg no RMS 73.256/SP, Rel. Min. Antonio Saldanha Palheiro, Sexta Turma, julgado em 17/6/2024. (AgRg no RMS n. 75.687/SC, relator Ministro Ribeiro Dantas, Quinta Turma, julgado em 14/4/2025, DJEN de 24/4/2025.)
Sendo assim, nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do recurso especial.
Diante do exposto, inadmito o recurso especial interposto.
Intime-se.
$m2$,
  ARRAY['minutas/596193 - AR - TR - DESERTO - 1.007 §2º - Juntou apenas o comprovante de pagamento - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO NOTHING;

-- 596214 - mesmo terminal de 596217 (desercao_funjus_1pgto / Guia pertencente a outro processo),
-- mas com redação própria e menção expressa ao valor de R$ 66,85; não inserido para evitar conflito na UNIQUE.
-- 608076 - aproximado ao mesmo terminal de 596217 (desercao_funjus_1pgto / Guia pertencente a outro processo),
-- mas com redação específica de recolhimento por FUNREJUS em vez de FUNJUS; não inserido para evitar conflito na UNIQUE.
INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files) VALUES (
  'desercao_funjus_1pgto',
  'Guia pertencente a outro processo',
  'Deserção §2º — recolhimento de FUNJUS por guia indevida (REsp)',
  $m3$
A parte foi intimada para complementar o preparo do Recurso Especial, sob pena de deserção, na forma do despacho de mov. [MOV_DESPACHO].
Todavia, a complementação do preparo não se deu de forma válida, eis que a recorrente utilizou a guia GRU-COBRANÇA para efetuar o pagamento (mov. [MOV_GUIA]), quando deveria tê-lo feito por meio de guia gerada no sítio deste Tribunal de Justiça do Estado do Paraná (FUNJUS), eis que se trata de custas estaduais, na forma do que constou no despacho de mov. [MOV_DESPACHO].
Nesse particular, é assente o entendimento da Corte Superior de que “É deserto o recurso especial na hipótese em que a parte recorrente, mesmo após intimada a regularizar o preparo, não o faz devidamente (art. 1.007, § 7º, do CPC/2015). Precedentes.” (AgInt no AREsp n. 1.692.201/MT, relator Ministro Ricardo Villas Bôas Cueva, Terceira Turma, julgado em 8/2/2021, DJe de 12/2/2021.).
Veja-se:
"Na hipótese de insuficiência do recolhimento do preparo no ato da interposição do recurso, o recorrente será intimado para realizar o recolhimento, sob pena de deserção (art. 1.007, § 2º, do CPC). (...) No presente caso, intimada a complementar o preparo, a parte recorrente deixou de supri-lo, devendo ser mantida a decisão agravada. (STJ. AgInt no AREsp 1520429/RJ, Rel. Ministro LUIS FELIPE SALOMÃO, QUARTA TURMA, julgado em 05/11/2019, DJe 12/11/2019).
Assim sendo, e considerando a ausência da complementação determinada, é que nos termos do artigo 1.007, § 2º, do Código de Processo Civil, declaro a deserção do Recurso Especial.
Diante do exposto, inadmito o Recurso Especial interposto.
Intime-se.
$m3$,
  ARRAY['minutas/596217 - AR - TR - DESERTO - 1.007 §2º - recolhimento do valor de FUNJUS pela guia GRU - Recurso Especial.pdf']
)
ON CONFLICT (step_key, option_text) DO NOTHING;

-- NOVO NÓ NECESSÁRIO: 596222 - parte intimada para complementar o preparo e permaneceu inerte;
-- houve certidão de decurso de prazo.

INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files) VALUES (
  'desercao_funjus_1pgto',
  'Agendamento bancário',
  'Deserção §2º — comprovante de agendamento bancário FUNJUS (REsp)',
  $m4$
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
$m4$,
  ARRAY['minutas/609103 - AR - TR - DESERTO - 1.007 §2º - Recurso Especial - Comprovante de agendamento.pdf']
)
ON CONFLICT (step_key, option_text) DO NOTHING;

-- NOVA OPÇÃO NECESSÁRIA NO FLUXO: 606008 -> intimado para recolher em dobro, mas juntou guias e comprovantes em forma simples.
INSERT INTO minuta_templates (step_key, option_text, title, template_text, source_files) VALUES (
  'desercao_nd_2pgto',
  'Intimado para pagar em dobro e pagou simples',
  'Deserção §4º — intimado para pagar em dobro e pagou simples (REsp)',
  $m5$
A recorrente foi intimada para comprovar o recolhimento em dobro do preparo recursal, sob pena de deserção, na forma do despacho de mov. [MOV_DESPACHO].
Todavia, a parte limitou-se a informar que "as custas foram tempestivamente pagas, e apenas por uma falha no momento do protocolo, não foram juntadas aos presentes autos" (petição de mov. [MOV_PETICAO]), apresentando agora as guias e os comprovantes de movs. [MOV_GUIA] a [MOV_COMPROVANTE], os quais deveriam ter sido juntados quando da interposição do recurso, o que não atende à determinação do preparo de forma dobrada e por isso este recurso é deserto, o que declaro, nos termos do artigo 1.007, § 4º, do Código de Processo Civil.
Neste sentido:
"A jurisprudência do STJ é firme no sentido de que a ausência de comprovação do preparo no ato da interposição do recurso, seguida de intimação para recolhimento em dobro não atendida, acarreta a deserção do recurso". (AgInt no AREsp n. 2.711.425/MS, relator Ministro Antonio Carlos Ferreira, Quarta Turma, julgado em 24/2 /2025, DJEN de 28/2/2025).
Diante do exposto, inadmito o recurso especial interposto.
$m5$,
  ARRAY['minutas/606008 - AR - TR - DESERTO - dobro - comprovação forma simples.pdf']
)
ON CONFLICT (step_key, option_text) DO NOTHING;

-- NOVO NÓ NECESSÁRIO: 607948 - comprovação intempestiva da complementação do preparo (§2º).

-- NOVO NÓ NECESSÁRIO: 645022 - despacho conjunto para regularização de procuração e preparo;
-- a parte regularizou apenas a representação processual e não comprovou o preparo recursal.

-- NOVO NÓ NECESSÁRIO: 604597 - após intimação para recolhimento em dobro, a parte formulou pedido tardio
-- de gratuidade da justiça, rejeitado por ausência de efeito retroativo.
