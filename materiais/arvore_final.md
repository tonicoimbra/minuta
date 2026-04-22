# Árvore de Saídas — Gerador de Minutas TJPR

**Base:** `src/data/flow.ts` (estado pós-expansão 2026-04-22)
**Total de saídas:** 144 (72 caminhos × REsp / RE)

As saídas marcadas com `🔴 INTIMAÇÃO` geram despacho intimando a parte para regularizar.
As marcadas com `⚖️ DESERÇÃO` decretam a deserção / inadmissão do recurso.

> `★` = opção adicionada na expansão de 2026-04-22 (51 PDFs)

---

## PASSO 1 — Tipo de Recurso

```
REsp  →  (todos os caminhos abaixo — template gerado via Supabase)
RE    →  (todos os caminhos abaixo — retorna "AINDA SEM REFERENCIA DE MINUTAS")
```

---

## PASSO 2 — Classificação da Irregularidade

```
├── A. COMPLEMENTAÇÃO          (15 caminhos)
├── B. PAGAMENTO EM DOBRO      (17 caminhos)
└── C. DESERÇÃO                (40 caminhos)
```

---

## A. COMPLEMENTAÇÃO

> Nó pai: `comp_guia` → `comp_gru` ou `comp_funjus`

### A.1 — Irregularidade na GRU (`comp_gru`)

```
Irregularidade GRU (FUNJUS regular, parte não intimada)
├── Juntou só a guia GRU (sem comprovante de pagamento)
│   └── 🔴 INTIMAÇÃO §2º
├── Juntou só o comprovante GRU (sem a guia de recolhimento)
│   └── 🔴 INTIMAÇÃO §2º
├── Guia GRU juntada + comprovante de agendamento bancário
│   └── 🔴 INTIMAÇÃO §2º
├── Guia GRU juntada + comprovante sem código de barras legível
│   └── 🔴 INTIMAÇÃO §2º
├── Guia GRU juntada + número de processo ausente ou incorreto
│   └── 🔴 INTIMAÇÃO §2º
├── Guia GRU juntada + comprovante não localizado (N/D)
│   └── 🔴 INTIMAÇÃO §2º
└── Guia GRU pertencente a outro processo
    └── 🔴 INTIMAÇÃO §2º
```

**Saídas: 7**

---

### A.2 — Irregularidade na FUNJUS (`comp_funjus`)

```
Irregularidade FUNJUS (GRU regular, parte não intimada)
├── Juntou só a guia FUNJUS (sem comprovante de pagamento)
│   └── 🔴 INTIMAÇÃO §2º
├── Juntou só o comprovante FUNJUS (sem a guia de recolhimento)
│   └── 🔴 INTIMAÇÃO §2º
├── Guia FUNJUS juntada + comprovante de agendamento bancário
│   └── 🔴 INTIMAÇÃO §2º
├── Guia FUNJUS juntada + comprovante sem código de barras legível
│   └── 🔴 INTIMAÇÃO §2º
├── Guia FUNJUS juntada + número de processo ausente ou incorreto
│   └── 🔴 INTIMAÇÃO §2º
├── Guia FUNJUS juntada + comprovante não localizado (N/D)
│   └── 🔴 INTIMAÇÃO §2º
├── Guia FUNJUS pertencente a outro processo
│   └── 🔴 INTIMAÇÃO §2º
└── ★ Guia FUNJUS juntada + divergência no código de barras
    └── 🔴 INTIMAÇÃO §2º
```

**Saídas: 8**

---

**TOTAL COMPLEMENTAÇÃO: 15 caminhos (×2 = 30 saídas)**

---

## B. PAGAMENTO EM DOBRO

> Nó pai: `dobro` → opções diretas ou sub-nós

### B.1 — Opções diretas do nó `dobro`

```
Situação documental no ato da interposição
├── Juntou só as guias GRU e FUNJUS (sem comprovantes de pagamento)
│   └── 🔴 INTIMAÇÃO §4º dobro
├── Juntou só os comprovantes GRU e FUNJUS (sem as guias de recolhimento)
│   └── 🔴 INTIMAÇÃO §4º dobro
├── ★ JG alegada — concessão não localizada nos autos
│   └── 🔴 INTIMAÇÃO §4º dobro
├── ★ JG alegada — ato incompatível (pagamento anterior no recurso originário)
│   └── 🔴 INTIMAÇÃO §4º dobro
└── ★ Preparo juntado após o ato da interposição (pagamento simples)
    └── 🔴 INTIMAÇÃO §4º complementação dobro
```

**Saídas diretas: 5**

---

### B.2 — Documentos ausentes/inválidos (`dobro_nd`)

```
Problema específico nos documentos (N/D ou inválidos)
├── 2 agendamentos bancários como comprovante
│   └── 🔴 INTIMAÇÃO §4º dobro
├── 2 comprovantes sem código de barras legível
│   └── 🔴 INTIMAÇÃO §4º dobro
├── 2 guias com número de processo ausente ou incorreto
│   └── 🔴 INTIMAÇÃO §4º dobro
├── 2 documentos não localizados (N/D)
│   └── 🔴 INTIMAÇÃO §4º dobro
├── 1 guia certa (GRU ou FUNJUS) + comprovante ausente/inválido
│   └── 🔴 INTIMAÇÃO §4º dobro
├── ★ Comprovante GRU sem guia + FUNJUS não recolhida
│   └── 🔴 INTIMAÇÃO §4º dobro
├── ★ Guia GRU sem comprovante + FUNJUS não recolhida
│   └── 🔴 INTIMAÇÃO §4º dobro
├── ★ Divergência entre código de barras da guia e do comprovante
│   └── 🔴 INTIMAÇÃO §4º dobro
└── ★ Comprovantes com status 'Em processo de autenticação'
    └── 🔴 INTIMAÇÃO §4º dobro
```

**Saídas: 9**

---

### B.3 — Dobro + Decreto Judiciário (`dobro_decreto`) ★

```
Preparo ausente + Decreto Judiciário (feriado/suspensão) também ausente
├── ★ Juntou só comprovantes (sem guias de recolhimento) + Decreto não apresentado
│   └── 🔴 INTIMAÇÃO §4º dobro + juntar Decreto
└── ★ Documentos de preparo não localizados (N/D) + Decreto não apresentado
    └── 🔴 INTIMAÇÃO §4º dobro + juntar Decreto
```

**Saídas: 2**

---

### B.4 — Dobro + Procuração (`dobro_proc`) ★

```
Preparo ausente + representação processual irregular
└── ★ Procuração e preparo em dobro — ambos ausentes
    └── 🔴 INTIMAÇÃO §4º dobro + regularizar procuração
```

**Saídas: 1**

---

**TOTAL PAGAMENTO EM DOBRO: 17 caminhos (×2 = 34 saídas)**

---

## C. DESERÇÃO

> Nó pai: `desercao`

### C.1 — Opções diretas do nó `desercao`

```
Situação documental que fundamenta a deserção
├── Juntou só as guias GRU e FUNJUS (sem comprovantes)
│   └── ⚖️ DESERÇÃO
└── Juntou só os comprovantes GRU e FUNJUS (sem guias)
    └── ⚖️ DESERÇÃO
```

**Saídas diretas: 2**

---

### C.2 — Ambas as guias N/D — §2º (`desercao_nd_1pgto`)

> Caminho: `desercao` → `desercao_nd_pgto` → `desercao_nd_1pgto`

```
Vício após intimação §2º (GRU + FUNJUS)
├── Agendamento bancário
│   └── ⚖️ DESERÇÃO §2º
├── Sem código de barras legível
│   └── ⚖️ DESERÇÃO §2º
├── Número de processo ausente ou incorreto
│   └── ⚖️ DESERÇÃO §2º
├── Guia pertencente a outro processo
│   └── ⚖️ DESERÇÃO §2º
├── ★ Comprovação da complementação apresentada fora do prazo legal
│   └── ⚖️ DESERÇÃO §2º (intempestiva)
└── ★ Procuração regularizada, mas preparo não comprovado
    └── ⚖️ DESERÇÃO §2º
```

**Saídas: 6**

---

### C.3 — Ambas as guias N/D — §4º (`desercao_nd_2pgto`)

> Caminho: `desercao` → `desercao_nd_pgto` → `desercao_nd_2pgto`

```
Vício após intimação §4º dobro (GRU + FUNJUS)
├── Guia pertencente a outro processo
│   └── ⚖️ DESERÇÃO §4º
├── Agendamento bancário
│   └── ⚖️ DESERÇÃO §4º
├── Sem código de barras legível
│   └── ⚖️ DESERÇÃO §4º
├── Número de processo ausente ou incorreto
│   └── ⚖️ DESERÇÃO §4º
├── Documentos não localizados (N/D)
│   └── ⚖️ DESERÇÃO §4º
├── ★ Intimado para pagar em dobro e pagou em valor simples
│   └── ⚖️ DESERÇÃO §4º
└── ★ Pedido de JG após intimação para dobro (sem efeito retroativo)
    └── ⚖️ DESERÇÃO §4º
```

**Saídas: 7**

---

### C.4 — GRU irregular — §2º (`desercao_gru_1pgto`)

> Caminho: `desercao` → `desercao_gru_pgto` → `desercao_gru_1pgto`

```
Vício na GRU após intimação §2º (FUNJUS regular)
├── Agendamento bancário
│   └── ⚖️ DESERÇÃO §2º
├── Sem código de barras legível
│   └── ⚖️ DESERÇÃO §2º
├── Número de processo ausente ou incorreto
│   └── ⚖️ DESERÇÃO §2º
├── Guia pertencente a outro processo
│   └── ⚖️ DESERÇÃO §2º
└── ★ Guia GRU não apresentada após intimação (juntou só o comprovante)
    └── ⚖️ DESERÇÃO §2º
```

**Saídas: 5**

---

### C.5 — GRU irregular — §4º (`desercao_gru_2pgto`)

> Caminho: `desercao` → `desercao_gru_pgto` → `desercao_gru_2pgto`

```
Vício na GRU após intimação §4º dobro (FUNJUS regular)
├── Guia pertencente a outro processo
│   └── ⚖️ DESERÇÃO §4º
├── Agendamento bancário
│   └── ⚖️ DESERÇÃO §4º
├── Sem código de barras legível
│   └── ⚖️ DESERÇÃO §4º
├── Número de processo ausente ou incorreto
│   └── ⚖️ DESERÇÃO §4º
└── Documentos não localizados (N/D)
    └── ⚖️ DESERÇÃO §4º
```

**Saídas: 5**

---

### C.6 — FUNJUS irregular — §2º (`desercao_funjus_1pgto`)

> Caminho: `desercao` → `desercao_funjus_pgto` → `desercao_funjus_1pgto`

```
Vício na FUNJUS após intimação §2º (GRU regular)
├── Agendamento bancário
│   └── ⚖️ DESERÇÃO §2º
├── Sem código de barras legível
│   └── ⚖️ DESERÇÃO §2º
├── Número de processo ausente ou incorreto
│   └── ⚖️ DESERÇÃO §2º
└── Guia pertencente a outro processo
    └── ⚖️ DESERÇÃO §2º
```

**Saídas: 4**

---

### C.7 — FUNJUS irregular — §4º (`desercao_funjus_2pgto`)

> Caminho: `desercao` → `desercao_funjus_pgto` → `desercao_funjus_2pgto`

```
Vício na FUNJUS após intimação §4º dobro (GRU regular)
├── Guia pertencente a outro processo
│   └── ⚖️ DESERÇÃO §4º
├── Agendamento bancário
│   └── ⚖️ DESERÇÃO §4º
├── Sem código de barras legível
│   └── ⚖️ DESERÇÃO §4º
├── Número de processo ausente ou incorreto
│   └── ⚖️ DESERÇÃO §4º
└── Documentos não localizados (N/D)
    └── ⚖️ DESERÇÃO §4º
```

**Saídas: 5**

---

### C.8 — Recurso intempestivo (`desercao_intempestivo`)

> Caminho: `desercao` → `desercao_intempestivo`

```
Natureza da intempestividade
├── Pagamento realizado fora do prazo recursal
│   └── ⚖️ DESERÇÃO / INADMISSÃO
└── Comprovante de pagamento juntado fora do prazo recursal
    └── ⚖️ DESERÇÃO / INADMISSÃO
```

**Saídas: 2**

---

### C.9 — Após indeferimento de JG (`desercao_jg`) ★

> Caminho: `desercao` → `desercao_jg`

```
JG indeferida — resultado da intimação para preparo simples
├── ★ Apresentou comprovantes sem código de barras (preparo irregular)
│   └── ⚖️ DESERÇÃO
└── ★ Permaneceu inerte (certidão de decurso de prazo)
    └── ⚖️ DESERÇÃO
```

**Saídas: 2**

---

### C.10 — Inércia após Decreto + Preparo (`desercao_decreto`) ★

> Caminho: `desercao` → `desercao_decreto`

```
Intimado para Decreto Judiciário + regularizar preparo — permaneceu inerte
├── ★ Decreto + complementação (§2º) — permaneceu inerte
│   └── ⚖️ DESERÇÃO + INTEMPESTIVIDADE
└── ★ Decreto + dobro (§4º) — permaneceu inerte
    └── ⚖️ DESERÇÃO + INTEMPESTIVIDADE
```

**Saídas: 2**

---

**TOTAL DESERÇÃO: 40 caminhos (×2 = 80 saídas)**

---

## Resumo Consolidado

| Categoria | Caminhos únicos | × REsp/RE | Total saídas |
|-----------|:--------------:|:---------:|:------------:|
| A. Complementação | 15 | ×2 | 30 |
| B. Pagamento em Dobro | 17 | ×2 | 34 |
| C. Deserção | 40 | ×2 | 80 |
| **TOTAL** | **72** | | **144** |

---

## Mapa de nós do fluxo

| Nó | Tipo | Opções | Observação |
|----|------|:------:|-----------|
| `inicio` | roteador | 2 | REsp / RE |
| `classif` | roteador | 3 | Comp / Dobro / Deserção |
| `comp_guia` | roteador | 2 | GRU / FUNJUS |
| `comp_gru` | terminal | 7 | — |
| `comp_funjus` | terminal | 8 | +1 divergência ★ |
| `dobro` | misto | 8 | 5 terminais + 3 sub-nós |
| `dobro_nd` | terminal | 9 | +4 novos ★ |
| `dobro_decreto` | terminal | 2 | nó novo ★ |
| `dobro_proc` | terminal | 1 | nó novo ★ |
| `desercao` | misto | 8 | 2 terminais + 6 sub-nós |
| `desercao_nd_pgto` | roteador | 2 | §2º / §4º (ambas guias) |
| `desercao_nd_1pgto` | terminal | 6 | +2 novos ★ |
| `desercao_nd_2pgto` | terminal | 7 | +2 novos ★ |
| `desercao_gru_pgto` | roteador | 2 | §2º / §4º (GRU) |
| `desercao_gru_1pgto` | terminal | 5 | +1 novo ★ |
| `desercao_gru_2pgto` | terminal | 5 | — |
| `desercao_funjus_pgto` | roteador | 2 | §2º / §4º (FUNJUS) |
| `desercao_funjus_1pgto` | terminal | 4 | — |
| `desercao_funjus_2pgto` | terminal | 5 | — |
| `desercao_intempestivo` | terminal | 2 | — |
| `desercao_jg` | terminal | 2 | nó novo ★ |
| `desercao_decreto` | terminal | 2 | nó novo ★ |

---

## Cobertura de templates no Supabase (REsp)

| Nó | Cobertura | Opções sem template |
|----|:---------:|---|
| `comp_gru` | 1/7 | 6 opções sem template |
| `comp_funjus` | 5/8 | 3 opções sem template |
| `dobro` | 5/5 diretas ✓ | — |
| `dobro_nd` | 6/9 | "2 guias nº processo", "1 guia certa + compr. ausente", "Em processo de autenticação" |
| `dobro_decreto` | 1/2 | "N/D + Decreto não apresentado" |
| `dobro_proc` | 1/1 ✓ | — |
| `desercao` diretas | 0/2 | ambas sem template |
| `desercao_nd_1pgto` | 2/6 | 4 sem template |
| `desercao_nd_2pgto` | 4/7 | 3 sem template |
| `desercao_gru_1pgto` | 3/5 | "Agendamento bancário", "Número de processo" |
| `desercao_gru_2pgto` | 0/5 | todas sem template |
| `desercao_funjus_1pgto` | 2/4 | "Sem cód. barras", "Número de processo" |
| `desercao_funjus_2pgto` | 0/5 | todas sem template |
| `desercao_intempestivo` | 1/2 | "Pagamento fora do prazo recursal" |
| `desercao_jg` | 2/2 ✓ | — |
| `desercao_decreto` | 2/2 ✓ | — |
