# Métricas e KPIs — Lógica Analítica (DAX)

Este documento descreve a finalidade analítica das principais medidas DAX do projeto, explicando como são utilizadas e quais perguntas de negócio respondem.

---

## 🧱 Métricas Base

### Receita Total
**Utilização:**  
Mede o valor total movimentado no período selecionado.

**Perguntas que responde:**  
- Quanto o banco faturou no período?
- Como a receita evolui ao longo do tempo, regiões ou perfis de cliente?

```DAX
Receita Total =
SUM ( fato_movimentacoes[valor_transacao] )
```

---

### Total Clientes Ativos
**Utilização:**  
Quantifica os clientes com status ativo no período analisado.

**Perguntas que responde:**  
- Qual é a base real de clientes do banco?
- Sobre quantos clientes as decisões estão sendo tomadas?

```DAX
Total Clientes Ativos =
CALCULATE (
    DISTINCTCOUNT ( dim_cliente[cliente_id] ),
    dim_cliente[status_cliente] = "Ativo")
```

---

### Clientes Premium
**Utilização:**  
Identifica a quantidade de clientes ativos classificados como Premium.

**Perguntas que responde:**  
- Quantos clientes de maior valor o banco possui?
- Qual o peso do segmento Premium na base?

```DAX
Clientes Premium =
CALCULATE (
    DISTINCTCOUNT ( dim_cliente[cliente_id] ),
    dim_cliente[perfil_cliente] = "Premium",
    dim_cliente[status_cliente] = "Ativo")
```
  
---

### Clientes com Receita
**Utilização:**  
Conta os clientes que efetivamente geraram receita no período.

**Perguntas que responde:**  
- Quantos clientes estão monetizando?
- Qual é a base real de geração de receita?

```DAX
Clientes com Receita =
CALCULATE (
    DISTINCTCOUNT ( fato_movimentacoes[cliente_id] ),
    fato_movimentacoes[valor_transacao] > 0)
```

---

### Quantidade de Transações
**Utilização:**  
Mede o volume total de transações realizadas.

**Perguntas que responde:**  
- O crescimento vem de volume ou de valor?
- Qual o nível de uso dos produtos do banco?

```DAX
Qtd Transações =
COUNT ( fato_movimentacoes[movimentacao_id] )
```

---

## 🟨 Métricas Derivadas

### Ticket Médio
**Utilização:**  
Calcula a receita média por cliente que realizou movimentação financeira.

**Perguntas que responde:**  
- Quanto, em média, cada cliente que gera receita movimenta?
- A receita cresce por valor ou por quantidade de clientes?

```DAX
Ticket Médio =
DIVIDE (
    [Receita Total],
    [Clientes com Receita])
```

---

### Receita por Cliente
**Utilização:**  
Relaciona a receita total à base de clientes ativos.

**Perguntas que responde:**  
- Quanto cada cliente ativo gera de receita?
- A base está se tornando mais eficiente?

```DAX
Receita por Cliente =
DIVIDE (
    [Receita Total],
    [Total Clientes Ativos])
```

---

### Percentual de Clientes Premium
**Utilização:**  
Mede a proporção de clientes Premium em relação ao total de clientes ativos.

**Perguntas que responde:**  
- Qual a participação do segmento Premium na base?
- Existe espaço para estratégias de upsell?

```DAX
% Clientes Premium =
DIVIDE (
    [Clientes Premium],
    [Total Clientes Ativos])
```
  
---

## 📈 Métricas Temporais

### Receita Mês Anterior
**Utilização:**  
Retorna a receita do período imediatamente anterior.

**Perguntas que responde:**  
- Qual era o patamar recente de receita?
- A receita está acelerando ou desacelerando?

```DAX
Receita Mês Anterior =
CALCULATE (
    [Receita Total],
    DATEADD ( dim_tempo_corrigida[Data], -1, MONTH ))
```

---

### Total Clientes Ativos Ano Anterior
**Utilização:**  
Recupera a base de clientes ativos no mesmo período do ano anterior.

**Perguntas que responde:**  
- A base cresceu ou encolheu em relação ao ano passado?
- Qual era o tamanho histórico da base?

```DAX
Total Clientes Ativos Ano Anterior =
CALCULATE (
    [Total Clientes Ativos],
    SAMEPERIODLASTYEAR ( dim_tempo_corrigida[Data] ))
```

---

### Crescimento YoY Clientes (%)
**Utilização:**  
Calcula a variação percentual da base de clientes ativos em relação ao ano anterior.

**Perguntas que responde:**  
- O banco está crescendo em clientes?
- Em que ritmo ocorre esse crescimento?

```DAX
Crescimento YoY Clientes (%) =
DIVIDE (
    [Total Clientes Ativos] - [Total Clientes Ativos Ano Anterior],
    [Total Clientes Ativos Ano Anterior])
```

---

### Crescimento YoY Receita (%)
**Utilização:**  
Mede a variação percentual da receita em relação ao mesmo período do ano anterior.

**Perguntas que responde:**  
- O faturamento está crescendo ou caindo?
- O crescimento é sustentável?

```DAX
Crescimento YoY Receita (%) =
VAR ReceitaAnoAtual =
    [Receita Total]
VAR ReceitaAnoAnterior =
    CALCULATE (
        [Receita Total],
        SAMEPERIODLASTYEAR ( dim_tempo_corrigida[Data])
    )
RETURN
DIVIDE (
    ReceitaAnoAtual - ReceitaAnoAnterior,
    ReceitaAnoAnterior)
```

---

## 🧠 Métrica Analítica Avançada

### Concentração Top 3 Regiões
**Utilização:**  
Calcula a parcela da receita total concentrada nas três regiões com maior faturamento.

**Perguntas que responde:**  
- A receita está concentrada em poucas regiões?
- Existe risco de dependência regional?

```DAX
Concentracao Top 3 Regioes =
DIVIDE (
    CALCULATE (
        [Receita Total],
        KEEPFILTERS (
            TOPN (
                3,
                VALUES ( dim_cliente[regiao] ),
                [Receita Total],
                DESC
            )
        )
    ),
    [Receita Total Geral]
)
```

