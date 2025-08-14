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

### 3. 📂 `Querys_Paineis_Monitoramento.sql`

> Consultas utilizadas nos Painéis de Monitoramento do Power BI, com foco em:

- Monitorar pedidos cancelados e estimar o GMV perdido.
- Analisar indicadores financeiros (receita gerada e perdas por cancelamento).
- Acompanhar vendas no marketplace, segmentando por categoria, região e desempenho de avaliação.
- Monitorar a performance logística, com indicadores de entregas adiantadas, no prazo e atrasadas.

**Principais consultas:**
1. Cancelamentos → lista detalhada de pedidos cancelados, incluindo data, produto, vendedor, cliente e valores envolvidos.
2. Financeiro → consolida GMV efetivo e GMV perdido, filtrando pedidos conforme status de processamento ou cancelamento.
3. Vendas → retorna todas as vendas concluídas ou em andamento, associando avaliação do cliente (review score) para análise de qualidade.
4. Operações & Logística → traz informações de prazo de entrega (real vs. estimado), permitindo calcular indicadores de pontualidade e mapear gargalos logísticos.

