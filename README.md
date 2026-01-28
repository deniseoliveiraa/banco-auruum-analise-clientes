# 🏦 Banco Auruum — Análise de Clientes (SQL & BI)

## 📌 Contexto do Negócio
O **Banco Auruum** encontra-se em fase de crescimento e possui uma base relevante de clientes distribuídos por diferentes regiões do país, com perfis variados (**PF / PJ** e **Premium / Tradicional**).

Apesar do volume de dados disponível, a diretoria não possuía uma **visão clara, estruturada e confiável** sobre a composição dessa base, o que dificultava a tomada de decisões estratégicas orientadas por dados.  
As análises existentes eram pontuais e reativas, sem padronização de métricas ou visão consolidada.

---

## 🚨 Problema de Negócio
A empresa enfrentava dificuldades para responder, com segurança, a perguntas-chave como:

- Onde estão concentrados os **clientes Premium ativos**?
- Quais regiões apresentam **maior potencial de crescimento**?
- A base de clientes Premium está **crescendo, estável ou em queda** ao longo do tempo?
- Qual é o **perfil predominante** da base atual (**PF x PJ**)?

A ausência dessas respostas impactava diretamente:
- o direcionamento de ações comerciais  
- a definição de prioridades regionais  
- o planejamento estratégico de médio e longo prazo  

---

## 🧾 Solicitação da Área de Negócios
Diante desse cenário, a área de negócios solicitou apoio ao time de dados com o seguinte objetivo:

> *“Precisamos de uma análise que traga visibilidade clara sobre nossa base de clientes, com foco em segmentação por perfil e região, e que nos ajude a identificar onde estão nossas melhores oportunidades.”*

---

## 🎯 Objetivo do Projeto
Estruturar uma **análise analítica e exploratória da base de clientes**, utilizando **SQL e BI**, com métricas bem definidas, confiáveis e reutilizáveis, capazes de apoiar decisões estratégicas e acompanhamento contínuo da base.

---

## 📊 Entregas do Projeto
A solução foi estruturada para entregar:

### 1️⃣ Métricas da Base de Clientes
- Total de clientes ativos  
- Distribuição por perfil (**PF / PJ**)  
- Distribuição por categoria (**Premium / Tradicional**)  
- Percentual de clientes Premium  

### 2️⃣ Análise Regional
- Clientes ativos por região  
- Clientes Premium por região  
- Concentração da receita nas principais regiões  

### 3️⃣ Visão Temporal
- Evolução da base de clientes ao longo do tempo  
- Crescimento ano a ano (**YoY**) de clientes  
- Crescimento ano a ano (**YoY**) de receita  

### 4️⃣ Insights Analíticos
- Identificação de regiões com maior concentração de valor  
- Tendências de crescimento ou estagnação da base  
- Apoio à priorização comercial e estratégica  

---

## 🧠 Abordagem Analítica
A análise foi construída a partir de uma **base consolidada de clientes ativos**, preparada em **SQL**, garantindo consistência, padronização e governança dos dados.

As métricas e KPIs foram modelados no **Power BI**, seguindo uma separação clara entre:
- métricas base  
- métricas derivadas  
- métricas temporais e KPIs  

A lógica analítica e as medidas DAX estão documentadas no arquivo  
📄 **`METRICAS_DAX.md`**, assegurando transparência, reutilização e fácil manutenção.

Os principais insights de negócio estão registrados em  
📄 **`INSIGHTS_ANALISE.md`**.

---

## 🛠️ Tecnologias Utilizadas
- **SQL** — criação de views analíticas e consolidação da base de dados  
- **Power BI** — modelagem analítica, DAX e dashboards interativos  
- **Modelagem de Dados** — foco em negócio e governança analítica  

---

## 📂 Estrutura do Repositório
- `sql/` — scripts SQL e views analíticas  
- `METRICAS_DAX.md` — documentação das métricas, KPIs e lógica analítica  
- `INSIGHTS_ANALISE.md` — insights de negócio extraídos da análise  
- `images/` — imagens e screenshots do dashboard  
- `README.md` — contextualização do projeto
