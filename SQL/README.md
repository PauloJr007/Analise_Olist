# 📂 Scripts SQL do Projeto Olist

Este diretório contém todos os arquivos SQL utilizados no projeto **Análise de Dados - Olist Marketplace**, desde a criação do banco até as queries que alimentam os dashboards no Power BI.

---

## 📌 Estrutura dos Arquivos

### 1. 🏗️ `Criacao_Tabelas.sql`
> Script usado para criar o banco de dados, tabelas e estrutura inicial, com base nos datasets da Olist (Kaggle). Inclui todos os `CREATE TABLE` e tipos de dados ajustados.

---

### 2. 📊 `querys_visao_analitica_pedidos.sql`
> Consultas utilizadas no **Dashboard do Storytelling** (Visão Analítica dos Pedidos), com foco em:
- Sazonalidade dos pedidos
- Status dos pedidos
- Picos de demanda (Top 10 dias)
- Indicadores com comparação temporal (ano/mês anterior)

---

### 3. 💼 `Vendas_Marketplace.sql`
> Queries para o **Painel de Monitoramento: Vendas**, incluindo:
- GMV (volume bruto de vendas)
- Ticket médio
- Produtos e categorias mais vendidas
- Sazonalidade
- Vendas por estado e cidade

---

### 4. ❌ `cancelamentos.sql`
> Consultas para o **Painel de Monitoramento: Cancelamentos**, com análises por:
- Mês, estado, cidade
- Produto, Vendedor e categoria
- Tendências e sazonalidade de cancelamentos

---

### 5. 🚚 `operacoes_logistica.sql`
> Queries para o **Painel de Logística**, analisando:
- Regiões com maior volume de Vendas
- Atrasos de entrega
- Preço Médio do Frete
- Desempenho por Vendedor
- Filtros como Data, categoria do produto, Estados / Cidades 

---

### 6. 💰 `financeiro.sql`
> Consultas para o **Painel Financeiro**, com métricas como:
- GMV
- Custo com frete
- Meios de pagamento
- Receita estimada por mês e região


---


