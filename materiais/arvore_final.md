# Árvore de Saídas — Gerador de Minutas TJPR

**Base:** `src/data/flow.ts` (estado pós-SQL consolidado 2026-04-24)
**Total de saídas:** 228 (114 caminhos terminais × REsp / RE)

| Emoji | Significado |
|-------|-------------|
| ✅ | Template cadastrado no Supabase — cobertura 100% |
| 🔴 | Intimação / despacho para regularização |
| ⚖️ | Deserção / inadmissão do recurso |
| 📄 | Recurso regular (sem exigência de preparo) |

---

## PASSO 1 — Tipo de Recurso (`inicio`)

```
├── Apelação ───────────────────────────────→ classif_irregularidade
├── Recurso Inominado (JEC) ────────────────→ classif_irregularidade
├── Agravo de Instrumento ──────────────────→ classif_irregularidade
├── Recurso Especial (REsp) ────────────────→ classif_irregularidade
├── Recurso Extraordinário (RE) ────────────→ classif_irregularidade
├── Agravo em REsp (AREsp) ─────────────────→ 📄 final
├── Agravo Interno (AgInt) ─────────────────→ 📄 final
└── Embargos de Declaração (EDcl) ──────────→ 📄 final
```

**Saídas diretas: 3** (todas com template ✅)

---

## PASSO 2 — Classificação da Irregularidade (`classif_irregularidade`)

```
├── A. COMPLEMENTAÇÃO ──────────────────────→ complementacao
├── B. PREPARO SIMPLES (pós-JG) ────────────→ preparo_simples_jg
├── C. PAGAMENTO EM DOBRO ──────────────────→ dobro
└── D. DESERÇÃO ────────────────────────────→ desercao
```

---

## A. COMPLEMENTAÇÃO (`complementacao`)

```
├── Falta só a guia ────────────────────────→ comp_falta_guia
├── Falta só o comprovante ─────────────────→ comp_falta_comprovante
├── Irregularidade na GRU ──────────────────→ comp_irr_gru
└── Irregularidade na FUNJUS ───────────────→ comp_irr_funjus
```

### A.1 — Falta só a guia (`comp_falta_guia`)

```
├── GRU  → 🔴 INTIMAÇÃO §7º ✅
└── FUNJUS  → 🔴 INTIMAÇÃO §7º ✅
```

**Saídas: 2**

### A.2 — Falta só o comprovante (`comp_falta_comprovante`)

```
├── GRU  → 🔴 INTIMAÇÃO §7º ✅
└── FUNJUS  → 🔴 INTIMAÇÃO §7º ✅
```

**Saídas: 2**

### A.3 — Irregularidade na GRU (`comp_irr_gru`)

```
Irregularidade GRU (FUNJUS regular, parte não intimada)
├── Juntou só a guia GRU (sem comprovante) ───────────→ 🔴 INTIMAÇÃO §2º ✅
├── Juntou só o comprovante GRU (sem guia) ───────────→ 🔴 INTIMAÇÃO §2º ✅
├── Agendamento / em análise ─────────────────────────→ 🔴 INTIMAÇÃO §7º ✅
├── Valor divergente / insuficiente ──────────────────→ 🔴 INTIMAÇÃO §2º ✅
├── Sem número de processo / número incorreto ────────→ 🔴 INTIMAÇÃO §7º ✅
├── Número único divergente da árvore processual ─────→ 🔴 INTIMAÇÃO §7º ✅
├── Comprovante sem código de barras legível ─────────→ 🔴 INTIMAÇÃO §7º ✅
├── Divergência no código de barras ──────────────────→ 🔴 INTIMAÇÃO §7º ✅
├── Pago a destempo – PAD ────────────────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Comprovante não localizado (N/D) ─────────────────→ 🔴 INTIMAÇÃO §7º ✅
└── Guia pertencente a outro processo ────────────────→ 🔴 INTIMAÇÃO §7º ✅
```

**Saídas: 11**

### A.4 — Irregularidade na FUNJUS (`comp_irr_funjus`)

```
Irregularidade FUNJUS (GRU regular, parte não intimada)
├── Juntou só a guia FUNJUS (sem comprovante) ────────→ 🔴 INTIMAÇÃO §2º ✅
├── Juntou só o comprovante FUNJUS (sem guia) ────────→ 🔴 INTIMAÇÃO §2º ✅
├── Agendamento / em análise ─────────────────────────→ 🔴 INTIMAÇÃO §7º ✅
├── Valor divergente / insuficiente ──────────────────→ 🔴 INTIMAÇÃO §2º ✅
├── Sem número de processo / número incorreto ────────→ 🔴 INTIMAÇÃO §7º ✅
├── Número único divergente da árvore processual ─────→ 🔴 INTIMAÇÃO §7º ✅
├── Comprovante sem código de barras legível ─────────→ 🔴 INTIMAÇÃO §7º ✅
├── Divergência no código de barras ──────────────────→ 🔴 INTIMAÇÃO §7º ✅
├── Pago a destempo – PAD ────────────────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Comprovante não localizado (N/D) ─────────────────→ 🔴 INTIMAÇÃO §7º ✅
└── Guia pertencente a outro processo ────────────────→ 🔴 INTIMAÇÃO §7º ✅
```

**Saídas: 11**

---

**TOTAL COMPLEMENTAÇÃO: 26 caminhos (×2 = 52 saídas)**

---

## B. PREPARO SIMPLES APÓS JUSTIÇA GRATUITA (`preparo_simples_jg`)

```
├── JG alegada — concessão não localizada nos autos ────────→ 🔴 INTIMAÇÃO simples ✅
└── JG alegada — ato incompatível (pagamento anterior) ─────→ 🔴 INTIMAÇÃO simples ✅
```

**Saídas: 2 (×2 = 4)**

---

## C. PAGAMENTO EM DOBRO

### C.1 — Opções diretas (`dobro`)

```
Situação documental no ato da interposição
├── Juntou só as guias GRU e FUNJUS (sem comprovantes) ─────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Juntou só os comprovantes GRU e FUNJUS (sem guias) ─────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Preparo juntado após a interposição (pagamento simples) ─→ 🔴 INTIMAÇÃO §4º complementação dobro ✅
└── JG pedida no ato da interposição — depois desistiu ──────→ 🔴 INTIMAÇÃO §4º dobro ✅
```

**Saídas diretas: 4**

### C.2 — Falta só a guia (`dobro_falta_guia`)

```
├── 2 agendamentos / em análise ────────────────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 valores divergentes / insuficientes ──────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 guias sem número / número incorreto ──────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 não localizadas / não disponíveis (N/D) ──────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
└── 2 guias pertencentes a outros processos ────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
```

**Saídas: 5**

### C.3 — Falta só o comprovante (`dobro_falta_comprovante`)

```
├── 2 agendamentos / em análise ────────────────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 valores divergentes / insuficientes ──────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 guias sem número / número incorreto ──────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 não localizados / não disponíveis (N/D) ──────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
└── 2 pertencentes a outros processos ──────────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
```

**Saídas: 5**

### C.4 — Autos físicos / N-D (`dobro_nd`)

```
├── 2 agendamentos bancários como comprovante ──────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 comprovantes sem código de barras legível ────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 guias com número de processo ausente ou incorreto ────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Número único divergente da árvore processual ───────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 2 documentos não localizados (N/D) ─────────────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── 1 guia certa + comprovante ausente/inválido ────────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Comprovante GRU sem guia + FUNJUS não recolhida ────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Guia GRU sem comprovante + FUNJUS não recolhida ────────→ 🔴 INTIMAÇÃO §4º dobro ✅
├── Divergência entre código de barras da guia e comprovante → 🔴 INTIMAÇÃO §4º dobro ✅
├── Comprovantes com status "Em processo de autenticação" ──→ 🔴 INTIMAÇÃO §4º dobro ✅
└── 3 guias ausentes / incorretas (GRU + FUNJUS + porte) ───→ 🔴 INTIMAÇÃO §4º dobro ✅
```

**Saídas: 11**

### C.5 — Dobro + Decreto Judiciário (`dobro_decreto`)

```
├── Juntou só comprovantes (sem guias) + Decreto não apresentado ───→ 🔴 INTIMAÇÃO §4º + Decreto ✅
└── Documentos não localizados (N/D) + Decreto não apresentado ─────→ 🔴 INTIMAÇÃO §4º + Decreto ✅
```

**Saídas: 2**

### C.6 — Dobro + Procuração (`dobro_proc`)

```
└── Procuração e preparo em dobro — ambos ausentes ────────────────→ 🔴 INTIMAÇÃO §4º + procuração ✅
```

**Saídas: 1**

---

**TOTAL PAGAMENTO EM DOBRO: 28 caminhos (×2 = 56 saídas)**

---

## D. DESERÇÃO

### D.1 — Opções diretas (`desercao`)

```
├── Juntou só as guias GRU e FUNJUS (sem comprovantes) ─────→ ⚖️ DESERÇÃO ✅
└── Juntou só os comprovantes GRU e FUNJUS (sem guias) ─────→ ⚖️ DESERÇÃO ✅
```

**Saídas diretas: 2**

### D.2 — Ambas as guias N/D — §2º (`desercao_nd_1pgto`)

```
├── Permaneceu inerte (certidão de decurso de prazo) ───────→ ⚖️ DESERÇÃO §2º ✅
├── Renunciou expressamente ao prazo ───────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Agendamento bancário ───────────────────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Sem código de barras legível ───────────────────────────→ ⚖️ DESERÇÃO §2º ✅
└── Comprovação da complementação apresentada fora do prazo ─→ ⚖️ DESERÇÃO §2º ✅
```

**Saídas: 5**

### D.3 — Ambas as guias N/D — §4º (`desercao_nd_2pgto`)

```
├── Permaneceu inerte (certidão de decurso de prazo) ───────→ ⚖️ DESERÇÃO §4º ✅
├── Renunciou expressamente ao prazo ───────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Documentos não localizados (N/D) ───────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Intimado para pagar em dobro e pagou em valor simples ──→ ⚖️ DESERÇÃO §4º ✅
├── Pedido de JG após intimação para dobro ─────────────────→ ⚖️ DESERÇÃO §4º ✅
└── Comprovação do dobro apresentada fora do prazo ─────────→ ⚖️ DESERÇÃO §4º ✅
```

**Saídas: 6**

### D.4 — GRU irregular — §2º (`desercao_gru_1pgto`)

```
├── Agendamento bancário ───────────────────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Sem código de barras legível ───────────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Divergência de código de barras ────────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Número de processo ausente ou incorreto ────────────────→ ⚖️ DESERÇÃO §2º ✅
└── Juntou só o comprovante GRU (sem guia) após intimação ──→ ⚖️ DESERÇÃO §2º ✅
```

**Saídas: 5**

### D.5 — GRU irregular — §4º (`desercao_gru_2pgto`)

```
├── Agendamento bancário ───────────────────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Sem código de barras legível ───────────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Divergência de código de barras ────────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Número de processo ausente ou incorreto ────────────────→ ⚖️ DESERÇÃO §4º ✅
└── Documentos não localizados (N/D) ───────────────────────→ ⚖️ DESERÇÃO §4º ✅
```

**Saídas: 5**

### D.6 — FUNJUS irregular — §2º (`desercao_funjus_1pgto`)

```
├── Agendamento bancário ───────────────────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Sem código de barras legível ───────────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Divergência de código de barras ────────────────────────→ ⚖️ DESERÇÃO §2º ✅
├── Número de processo ausente ou incorreto ────────────────→ ⚖️ DESERÇÃO §2º ✅
└── Guia pertencente a outro processo ──────────────────────→ ⚖️ DESERÇÃO §2º ✅
```

**Saídas: 5**

### D.7 — FUNJUS irregular — §4º (`desercao_funjus_2pgto`)

```
├── Agendamento bancário ───────────────────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Sem código de barras legível ───────────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Divergência de código de barras ────────────────────────→ ⚖️ DESERÇÃO §4º ✅
├── Número de processo ausente ou incorreto ────────────────→ ⚖️ DESERÇÃO §4º ✅
└── Documentos não localizados (N/D) ───────────────────────→ ⚖️ DESERÇÃO §4º ✅
```

**Saídas: 5**

### D.8 — Recurso intempestivo (`desercao_intempestivo`)

```
├── Pagamento realizado fora do prazo recursal ─────────────→ ⚖️ DESERÇÃO / INADMISSÃO ✅
└── Comprovante de pagamento juntado fora do prazo recursal ─→ ⚖️ DESERÇÃO / INADMISSÃO ✅
```

**Saídas: 2**

### D.9 — Após indeferimento de JG (`desercao_jg`)

```
├── Apresentou comprovantes sem código de barras ───────────→ ⚖️ DESERÇÃO ✅
├── Permaneceu inerte (certidão de decurso de prazo) ───────→ ⚖️ DESERÇÃO ✅
└── Renunciou ao prazo expressamente ───────────────────────→ ⚖️ DESERÇÃO ✅
```

**Saídas: 3**

### D.10 — Inércia após Decreto + Preparo (`desercao_decreto`)

```
├── Decreto + complementação (§2º) — permaneceu inerte ─────→ ⚖️ DESERÇÃO + INTEMPESTIVIDADE ✅
└── Decreto + dobro (§4º) — permaneceu inerte ──────────────→ ⚖️ DESERÇÃO + INTEMPESTIVIDADE ✅
```

**Saídas: 2**

### D.11 — Deserção direta — GRU (`desercao_gru`)

```
├── Agendamento não efetivado ──────────────────────────────→ ⚖️ DESERÇÃO ✅
├── Valor divergente (insuficiente) ────────────────────────→ ⚖️ DESERÇÃO ✅
├── Sem número de processo / número incorreto ──────────────→ ⚖️ DESERÇÃO ✅
├── Não localizada / não disponível (N/D) ──────────────────→ ⚖️ DESERÇÃO ✅
└── Guia pertencente a outro processo ──────────────────────→ ⚖️ DESERÇÃO ✅
```

**Saídas: 5**

### D.12 — Deserção direta — ambas (`desercao_ambas`)

```
├── Agendamentos não efetivados ────────────────────────────→ ⚖️ DESERÇÃO ✅
├── Valores divergentes ────────────────────────────────────→ ⚖️ DESERÇÃO ✅
├── Sem número de processo / número incorreto ──────────────→ ⚖️ DESERÇÃO ✅
├── Não localizadas / não disponíveis (N/D) ────────────────→ ⚖️ DESERÇÃO ✅
└── Guias pertencentes a outros processos ──────────────────→ ⚖️ DESERÇÃO ✅
```

**Saídas: 5**

### D.13 — Deserção direta — FUNJUS (`desercao_funjus`)

```
├── Agendamento não efetivado ──────────────────────────────→ ⚖️ DESERÇÃO ✅
├── Valor divergente (insuficiente) ────────────────────────→ ⚖️ DESERÇÃO ✅
├── Sem número de processo / número incorreto ──────────────→ ⚖️ DESERÇÃO ✅
├── Não localizada / não disponível (N/D) ──────────────────→ ⚖️ DESERÇÃO ✅
└── Justaposição de guia FUNJUS ────────────────────────────→ ⚖️ DESERÇÃO ✅
```

**Saídas: 5**

---

**TOTAL DESERÇÃO: 55 caminhos (×2 = 110 saídas)**

---

## Resumo Consolidado

| Categoria | Caminhos únicos | × REsp/RE | Total saídas |
|-----------|:--------------:|:---------:|:------------:|
| A. Complementação | 26 | ×2 | 52 |
| B. Preparo simples pós-JG | 2 | ×2 | 4 |
| C. Pagamento em Dobro | 28 | ×2 | 56 |
| D. Deserção | 55 | ×2 | 110 |
| E. Recursos sem preparo (inicio) | 3 | ×2 | 6 |
| **TOTAL** | **114** | | **228** |

---

## Mapa de Nós do Fluxo

| Nó | Tipo | Opções | Terminais | Sub-rotas |
|----|------|:------:|:---------:|:---------:|
| `inicio` | roteador | 8 | 3 | 5 |
| `classif_irregularidade` | roteador | 4 | 0 | 4 |
| `complementacao` | roteador | 4 | 0 | 4 |
| `comp_falta_guia` | terminal | 2 | 2 | — |
| `comp_falta_comprovante` | terminal | 2 | 2 | — |
| `comp_irr_gru` | terminal | 11 | 11 | — |
| `comp_irr_funjus` | terminal | 11 | 11 | — |
| `preparo_simples_jg` | terminal | 2 | 2 | — |
| `dobro` | misto | 9 | 4 | 5 |
| `dobro_falta_guia` | terminal | 5 | 5 | — |
| `dobro_falta_comprovante` | terminal | 5 | 5 | — |
| `dobro_nd` | terminal | 11 | 11 | — |
| `dobro_decreto` | terminal | 2 | 2 | — |
| `dobro_proc` | terminal | 1 | 1 | — |
| `desercao` | misto | 11 | 2 | 9 |
| `desercao_nd_pgto` | roteador | 2 | 0 | 2 |
| `desercao_nd_1pgto` | terminal | 5 | 5 | — |
| `desercao_nd_2pgto` | terminal | 6 | 6 | — |
| `desercao_gru_pgto` | roteador | 2 | 0 | 2 |
| `desercao_gru_1pgto` | terminal | 5 | 5 | — |
| `desercao_gru_2pgto` | terminal | 5 | 5 | — |
| `desercao_funjus_pgto` | roteador | 2 | 0 | 2 |
| `desercao_funjus_1pgto` | terminal | 5 | 5 | — |
| `desercao_funjus_2pgto` | terminal | 5 | 5 | — |
| `desercao_intempestivo` | terminal | 2 | 2 | — |
| `desercao_jg` | terminal | 3 | 3 | — |
| `desercao_decreto` | terminal | 2 | 2 | — |
| `desercao_gru` | terminal | 5 | 5 | — |
| `desercao_ambas` | terminal | 5 | 5 | — |
| `desercao_funjus` | terminal | 5 | 5 | — |

---

## Cobertura de Templates no Supabase

> **Status geral: 114/114 terminais com template cadastrado (100%)**

| Nó | Opções | Templates | Status |
|----|:------:|:---------:|:------:|
| `inicio` | 3 | 3 | ✅ 100% |
| `comp_falta_guia` | 2 | 2 | ✅ 100% |
| `comp_falta_comprovante` | 2 | 2 | ✅ 100% |
| `comp_irr_gru` | 11 | 11 | ✅ 100% |
| `comp_irr_funjus` | 11 | 11 | ✅ 100% |
| `preparo_simples_jg` | 2 | 2 | ✅ 100% |
| `dobro` (diretas) | 4 | 4 | ✅ 100% |
| `dobro_falta_guia` | 5 | 5 | ✅ 100% |
| `dobro_falta_comprovante` | 5 | 5 | ✅ 100% |
| `dobro_nd` | 11 | 11 | ✅ 100% |
| `dobro_decreto` | 2 | 2 | ✅ 100% |
| `dobro_proc` | 1 | 1 | ✅ 100% |
| `desercao` (diretas) | 2 | 2 | ✅ 100% |
| `desercao_nd_1pgto` | 5 | 5 | ✅ 100% |
| `desercao_nd_2pgto` | 6 | 6 | ✅ 100% |
| `desercao_gru_1pgto` | 5 | 5 | ✅ 100% |
| `desercao_gru_2pgto` | 5 | 5 | ✅ 100% |
| `desercao_funjus_1pgto` | 5 | 5 | ✅ 100% |
| `desercao_funjus_2pgto` | 5 | 5 | ✅ 100% |
| `desercao_intempestivo` | 2 | 2 | ✅ 100% |
| `desercao_jg` | 3 | 3 | ✅ 100% |
| `desercao_decreto` | 2 | 2 | ✅ 100% |
| `desercao_gru` | 5 | 5 | ✅ 100% |
| `desercao_ambas` | 5 | 5 | ✅ 100% |
| `desercao_funjus` | 5 | 5 | ✅ 100% |

---

## Notas Técnicas

1. **RE vs REsp:** O sistema identifica automaticamente o tipo de recurso pela primeira seleção (`Recurso Especial` vs `Recurso Extraordinário`). O `optionVariants()` em `minutaTemplates.ts` adiciona o sufixo `[RE]` à busca quando o caminho começa com RE, permitindo que o mesmo template seja reutilizado para ambos (salvo quando houver diferenças de valores STF vs STJ, que devem ter templates específicos).

2. **Aliases:** A busca no Supabase utiliza aliases legados (`comp_irr_gru` → `comp_gru`, `comp_irr_funjus` → `comp_funjus`) e aliases de opções (`comp_falta_guia:GRU` → `comp_gru:Juntou só o comprovante...`, etc.) para compatibilidade com templates cadastrados em fases anteriores do projeto.

3. **Valores vigentes:** Todos os templates foram revisados para refletir os valores da INSTRUÇÃO NORMATIVA STJ/GP N. 13/2026 (vigente desde 02/02/2026):
   - GRU REsp: R$ 270,12 (dobro: R$ 540,24)
   - FUNJUS: R$ 300,00 (dobro: R$ 600,00)
   - GRU RE: R$ 1.157,59

4. **Reexecução segura:** Todos os INSERTs utilizam `ON CONFLICT (step_key, option_text) DO UPDATE`, permitindo que o script `sql_correcoes_finais.sql` seja rodado múltiplas vezes sem duplicar registros.
