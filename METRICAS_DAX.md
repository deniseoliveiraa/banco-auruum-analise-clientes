# 📊 Métricas e Lógica Analítica — Banco Auruum

Este documento descreve as principais métricas criadas no Power BI, explicando **por que elas existem** e **quais perguntas de negócio respondem**.  
O foco é registrar a **lógica analítica** por trás das métricas, e não o DAX técnico, garantindo clareza, governança e reutilização.

---

## 🧮 Total de Clientes Ativos

**Descrição:**  
Representa a base atual de clientes considerados ativos no período analisado.

**Por que essa métrica existe:**  
Foi criada para garantir que todas as análises sejam feitas sobre a base real de clientes em operação, evitando leituras baseadas em clientes históricos ou inativos.

**Perguntas que responde:**  
- Quantos clientes o banco possui atualmente?  
- Qual é a base correta para tomada de decisão?

---

## 🧮 Clientes com Movimentação

**Descrição:**  
Indica o número de clientes que realizaram ao menos uma movimentação financeira no período.

**Por que essa métrica existe:**  
Permite diferenciar **status cadastral** de **atividade financeira**, evitando confusão entre clientes ativos e clientes que apenas possuem histórico de transações.

**Perguntas que responde:**  
- Quantos clientes estão efetivamente utilizando os produtos do banco?  
- Qual o nível de engajamento da base?

---

## 🧮 Distribuição por Perfil (PF / PJ)

**Descrição:**  
Classifica a base de clientes ativos entre Pessoa Física (PF) e Pessoa Jurídica (PJ).

**Por que essa métrica existe:**  
Permite entender a composição da carteira e apoiar análises estratégicas sobre diversificação e potencial de crescimento do segmento PJ.

**Perguntas que responde:**  
- Qual é o perfil predominante da base atual?  
- Existe dependência excessiva de clientes PF?

---

## 🧮 Distribuição por Categoria (Premium / Tradicional)

**Descrição:**  
Segmenta os clientes ativos entre categorias Premium e Tradicional.

**Por que essa métrica existe:**  
Essa métrica foi criada para avaliar a **qualidade da base**, não apenas o volume, permitindo análises focadas em valor e estratégias de conversão.

**Perguntas que responde:**  
- Qual a proporção de clientes Premium na base?  
- Existe espaço para expansão do segmento Premium?

---

## 🧮 Clientes Ativos por Região

**Descrição:**  
Apresenta a distribuição da base ativa de clientes por região geográfica.

**Por que essa métrica existe:**  
Permite identificar concentração regional e apoiar decisões de priorização comercial e expansão territorial.

**Perguntas que responde:**  
- Onde estão concentrados os clientes do banco?  
- Quais regiões possuem maior base ativa?

---

## 🧮 Clientes Premium por Região

**Descrição:**  
Mostra a quantidade de clientes Premium distribuídos por região.

**Por que essa métrica existe:**  
Foi criada para identificar onde está concentrado o maior valor da base e avaliar riscos relacionados à dependência regional.

**Perguntas que responde:**  
- Em quais regiões está concentrada a base Premium?  
- Existe concentração excessiva de valor em poucas regiões?

---

## 🧮 Evolução da Base de Clientes ao Longo do Tempo

**Descrição:**  
Acompanha a variação do número de clientes ativos ao longo dos anos.

**Por que essa métrica existe:**  
Permite avaliar tendências de crescimento, estagnação ou queda da base, apoiando análises sobre a sustentabilidade do crescimento do banco.

**Perguntas que responde:**  
- A base de clientes está crescendo, estável ou em queda?  
- Em quais períodos ocorreram mudanças relevantes?

---

## 📌 Consideração Analítica Final

As métricas foram definidas com foco em **clareza conceitual**, evitando sobreposição de significados e garantindo que cada indicador responda a uma pergunta específica do negócio.  
Essa abordagem assegura consistência entre SQL, BI e os insights apresentados, fortalecendo a tomada de decisão orientada por dados.

---

## 🛠️ Observação Técnica

As métricas foram construídas a partir de uma base consolidada de clientes ativos, preparada em SQL e posteriormente consumida no Power BI, garantindo padronização, governança e facilidade de manutenção.
