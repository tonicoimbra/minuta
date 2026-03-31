# Árvore de Saídas — Gerador de Minutas TJPR

**Base:** `src/data/flow.ts` (estado atual pós-refatoração)
**Total de saídas:** 86 (43 caminhos × REsp / RE)

As saídas marcadas com `🔴 INTIMAÇÃO` geram despacho intimando a parte para regularizar.
As marcadas com `⚖️ DESERÇÃO` decretam a deserção.
As marcadas com `🚫 INADMISSÃO` inadmitem o recurso diretamente.

---

## PASSO 1 — Tipo de Recurso

```
REsp  →  (todos os caminhos abaixo, com texto voltado ao STJ)
RE    →  (todos os caminhos abaixo, com texto voltado ao STF)
```

> Cada ramo abaixo se repete para REsp e RE.

---

## PASSO 2 — Classificação da Irregularidade

```
├── A. COMPLEMENTAÇÃO
├── B. PAGAMENTO EM DOBRO
├── C. DESERÇÃO
└── D. INTEMPESTIVO
```

---

## A. COMPLEMENTAÇÃO

### A.1 — Falta só a guia (pagamento feito, formulário não juntado)

```
Falta só a guia
├── GRU ausente
│   └── 🔴 INTIMAÇÃO — Juntar guia GRU (5 dias úteis) · art. 1.007 §7° CPC
└── FUNJUS ausente
    └── 🔴 INTIMAÇÃO — Juntar guia FUNJUS (5 dias úteis) · art. 1.007 §7° CPC
```

**Saídas: 2**

---

### A.2 — Falta só o comprovante (guia presente, sem recibo)

```
Falta só o comprovante
├── GRU → Situação do comprovante GRU
│   ├── Agendamento / em análise (transação não efetivada)
│   │   └── 🔴 INTIMAÇÃO — Apresentar comprovante definitivo GRU · art. 1.007 §2° CPC
│   └── Valor divergente / insuficiente
│       └── 🔴 INTIMAÇÃO — Complementar recolhimento GRU · art. 1.007 §2° CPC
└── FUNJUS → Situação do comprovante FUNJUS
    ├── Agendamento / em análise
    │   └── 🔴 INTIMAÇÃO — Apresentar comprovante definitivo FUNJUS · art. 1.007 §2° CPC
    └── Valor divergente / insuficiente
        └── 🔴 INTIMAÇÃO — Complementar recolhimento FUNJUS · art. 1.007 §2° CPC
```

**Saídas: 4**

---

### A.3 — Irregularidade na guia GRU (FUNJUS regular)

```
Irregularidade GRU
├── Sem número de processo / número incorreto
│   └── 🔴 INTIMAÇÃO — Juntar GRU com identificação correta (5 dias) · art. 1.007 §7° CPC
│       + jurisprudência AgInt AREsp 2.208.504/RS
└── Guia pertencente a outro processo
    └── 🔴 INTIMAÇÃO — Juntar GRU deste feito (5 dias) · art. 1.007 §7° CPC
        + jurisprudência AgInt AREsp 2.208.504/RS
```

**Saídas: 2**

---

### A.4 — Irregularidade na guia FUNJUS (GRU regular)

```
Irregularidade FUNJUS
├── Agendamento / em análise
│   └── 🔴 INTIMAÇÃO — Apresentar comprovante definitivo FUNJUS · art. 1.007 §2° CPC
├── Valor divergente / insuficiente
│   └── 🔴 INTIMAÇÃO — Complementar recolhimento FUNJUS · art. 1.007 §2° CPC
├── Sem número de processo / número incorreto
│   └── 🔴 INTIMAÇÃO — Juntar FUNJUS com identificação correta (5 dias) · art. 1.007 §7° CPC
└── Guia pertencente a outro processo
    └── 🔴 INTIMAÇÃO — Juntar FUNJUS deste feito (5 dias) · art. 1.007 §2° CPC
```

**Saídas: 4**

---

**TOTAL COMPLEMENTAÇÃO: 12 saídas (×2 = 24 com REsp/RE)**

---

## B. PAGAMENTO EM DOBRO

### B.1 — Falta só a guia (GRU + FUNJUS ausentes)

```
Falta só a guia
├── 2 agendamentos / em análise
│   └── 🔴 INTIMAÇÃO — Recolhimento em dobro GRU + FUNJUS (5 dias) · art. 1.007 §4° CPC
├── 2 valores divergentes / insuficientes
│   └── 🔴 INTIMAÇÃO — Recolhimento em dobro dos valores corretos · art. 1.007 §4° CPC
├── 2 guias sem número / número incorreto de processo
│   └── 🔴 INTIMAÇÃO — Recolhimento em dobro com identificação correta · art. 1.007 §4° CPC
├── 2 não localizadas / não disponíveis (N/D)
│   └── 🔴 INTIMAÇÃO — Recolhimento em dobro GRU + FUNJUS · art. 1.007 §4° CPC
└── 2 guias pertencentes a outros processos
    └── 🔴 INTIMAÇÃO — Recolhimento em dobro das guias deste feito · art. 1.007 §4° CPC
```

**Saídas: 5**

---

### B.2 — Falta só o comprovante (GRU + FUNJUS sem débito)

```
Falta só o comprovante
├── 2 agendamentos / em análise
│   └── 🔴 INTIMAÇÃO — Comprovante definitivo em dobro (5 dias) · art. 1.007 §4° CPC
├── 2 valores divergentes / insuficientes
│   └── 🔴 INTIMAÇÃO — Recolhimento em dobro + comprovantes · art. 1.007 §4° CPC
└── 2 não localizados / não disponíveis (N/D)
    └── 🔴 INTIMAÇÃO — Juntar comprovantes em dobro GRU + FUNJUS · art. 1.007 §4° CPC
```

**Saídas: 3**

---

### B.3 — Autos físicos não digitalizados (N/D)

```
Autos físicos
└── 3 guias ausentes / incorretas (GRU + FUNJUS + porte de remessa)
    └── 🔴 INTIMAÇÃO — Recolhimento em dobro de 3 guias · art. 1.007 §4° CPC + Súmula 187/STJ
```

**Saídas: 1**

---

### B.4 — Pagamento Intempestivo (recolhimento após o prazo recursal)

```
Pagamento Intempestivo
├── GRU (recolhimento após o prazo recursal)
│   └── 🔴 INTIMAÇÃO — Recolhimento em dobro da GRU · art. 1.007 §4° CPC
├── FUNJUS (recolhimento após o prazo recursal)
│   └── 🔴 INTIMAÇÃO — Recolhimento em dobro da FUNJUS · art. 1.007 §4° CPC
└── GRU e FUNJUS (ambas após o prazo recursal)
    └── 🔴 INTIMAÇÃO — Recolhimento em dobro de GRU e FUNJUS · art. 1.007 §4° CPC
```

**Saídas: 3**

---

**TOTAL PAGAMENTO EM DOBRO: 12 saídas (×2 = 24 com REsp/RE)**

---

## C. DESERÇÃO

### C.1 — Irregularidade definitiva na GRU (FUNJUS regular)

```
Deserção — GRU
├── Agendamento não efetivado
│   └── ⚖️ DESERÇÃO — Agendamento não sana o preparo · art. 1.007 §4°-5° CPC
├── Valor divergente (insuficiente)
│   └── ⚖️ DESERÇÃO — Valor insuficiente não regularizado · art. 1.007 §4°-5° CPC
├── Intimado para pagar em dobro e pagou simples
│   └── ⚖️ DESERÇÃO — Pagamento simples não atende a determinação de dobro
│       + jurisprudência AgInt AREsp 2.665.947/MS (código de barras)
├── Não localizada / não disponível (N/D)
│   └── ⚖️ DESERÇÃO — Ausência de comprovante · art. 1.007 §4°-5° CPC + Súmula 187/STJ
├── Guia pertencente a outro processo
│   └── ⚖️ DESERÇÃO — Guia de outro processo não regularizada
│       + jurisprudência AgInt AREsp 2.665.947/MS (código de barras)
└── Inadmissão por intempestividade → [vai para D. INTEMPESTIVO]
    ├── Pagamento realizado fora do prazo recursal
    │   └── 🚫 INADMISSÃO — Preparo intempestivo · art. 1.003 §5° c/c art. 219 CPC
    └── Comprovante de pagamento juntado fora do prazo recursal
        └── 🚫 INADMISSÃO — Comprovante intempestivo · art. 1.003 §5° c/c art. 219 CPC
```

**Saídas: 7**

---

### C.2 — Irregularidade definitiva em ambas (GRU + FUNJUS)

```
Deserção — GRU + FUNJUS
├── Agendamentos não efetivados
│   └── ⚖️ DESERÇÃO — Agendamentos não sanam o preparo · art. 1.007 §4°-5° CPC
├── Valores divergentes
│   └── ⚖️ DESERÇÃO — Valores insuficientes não regularizados · art. 1.007 §4°-5° CPC
│       + jurisprudência AgInt AREsp 2.665.947/MS
├── Sem número de processo / número incorreto
│   └── ⚖️ DESERÇÃO — Identificação processual incorreta não regularizada · art. 1.007 §4°-5° CPC
├── Não localizadas / não disponíveis (N/D)
│   └── ⚖️ DESERÇÃO — Ausência de comprovantes · art. 1.007 §4°-5° CPC + Súmula 187/STJ
└── Guias pertencentes a outros processos
    └── ⚖️ DESERÇÃO — Guias de outros processos não regularizadas · art. 1.007 §4°-5° CPC
        + jurisprudência AgInt AREsp 2.665.947/MS
```

**Saídas: 5**

---

### C.3 — Irregularidade definitiva na FUNJUS (GRU regular)

```
Deserção — FUNJUS
├── Agendamento não efetivado
│   └── ⚖️ DESERÇÃO — Agendamento não sana o preparo · art. 1.007 §4°-5° CPC
├── Valor divergente (insuficiente)
│   └── ⚖️ DESERÇÃO — Valor insuficiente não regularizado · art. 1.007 §4°-5° CPC
├── Sem número de processo / número incorreto
│   └── ⚖️ DESERÇÃO — Identificação processual incorreta não regularizada · art. 1.007 §4°-5° CPC
├── Não localizada / não disponível (N/D)
│   └── ⚖️ DESERÇÃO — Ausência de comprovante · art. 1.007 §4°-5° CPC + Súmula 187/STJ
└── Justaposição de guia FUNJUS
    └── ⚖️ DESERÇÃO — Vício insanável (guia reutilizada de outro feito) · art. 1.007 §4°-5° CPC
```

**Saídas: 5**

---

**TOTAL DESERÇÃO: 17 saídas (×2 = 34 com REsp/RE)**

---

## D. INTEMPESTIVO

```
Intempestivo (acesso direto ou via Deserção GRU)
├── Pagamento realizado fora do prazo recursal
│   └── 🚫 INADMISSÃO — Preparo efetuado fora do prazo · art. 1.003 §5° c/c art. 219 CPC
│       + jurisprudência AgInt AREsp 2.039.729/RS
└── Comprovante de pagamento juntado fora do prazo recursal
    └── 🚫 INADMISSÃO — Comprovante juntado fora do prazo · art. 1.003 §5° c/c art. 219 CPC
        + jurisprudência AgInt AREsp 2.039.729/RS
```

**Saídas: 2 (acesso direto) + 2 já contadas em C.1 via Deserção GRU**

---

## Resumo Consolidado

| Categoria | Caminhos únicos | × REsp/RE | Total saídas |
|-----------|:--------------:|:---------:|:------------:|
| A. Complementação | 12 | ×2 | 24 |
| B. Pagamento em Dobro | 12 | ×2 | 24 |
| C. Deserção | 17 | ×2 | 34 |
| D. Intempestivo (direto) | 2 | ×2 | 4 |
| **TOTAL** | **43** | | **86** |

> Os 2 caminhos de intempestividade dentro de C.1 (Deserção GRU) já estão incluídos nos 34 de Deserção e também nos 4 de Intempestivo direto — nós em comum (`intempestivo`) acessados por duas rotas diferentes.

---

## Tipos de ação por categoria

| Ação | Categorias |
|------|-----------|
| 🔴 **INTIMAÇÃO** (regularizar em 5 dias) | Complementação (A), Pagamento em Dobro (B) |
| ⚖️ **DESERÇÃO** (decretada) | Deserção (C) |
| 🚫 **INADMISSÃO** (recurso inadmitido) | Intempestivo (D), via Deserção GRU |
