# 📦 Análise de Dados – Olist E-commerce

## 📽️ Apresentação do Projeto
*[Apresentação Executiva](https://www.canva.com/design/DAGu1l0HmME/wi1hSlDXeumOPzRq9YxfpQ/view?utm_content=DAGu1l0HmME&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=hd0331f14be)*

**Este projeto foi desenvolvido com o objetivo de explorar e analisar todas as tabelas disponíveis do dataset da Olist por meio de uma abordagem multidimensional.**  

**A análise foi dividida em duas entregas complementares:**

- **Diagnóstico Estratégico**: Uma análise aprofundada com foco em cancelamentos e sazonalidade dos pedidos, visando entender as principais causas operacionais e identificar padrões críticos de comportamento.

- **Painéis de Monitoramento**: Construção de dashboards interativos no Power BI, conectados diretamente ao banco de dados MySQL, com o intuito de oferecer monitoramento contínuo da operação, vendas, logística e avaliações dos clientes.

A base de dados foi estruturada em um banco relacional local, permitindo consultas SQL otimizadas para cruzamento de tabelas e geração de indicadores relevantes.

## 📁 Estrutura do Projeto
```
📂 Analise_Olist  
├── 📂 Python  
│   ├── EDA_1.ipynb — Encontrando Anomalias e Inconsistências nos Dados  
│   ├── EDA_2.ipynb — Análise Exploratória em busca de Insights, Diagnóstico estratégico e storytelling  
│   ├── preprocessing.ipynb — Limpeza e Tratamento dos Dados  
│   ├── Insert_Dados.ipynb — Inserção e atualização dos Dados no Banco de Dados  
├── 📂 SQL  
│   ├── Criacao_Tabela.sql — Criação do Banco de Dados relacional e Tabelas necessárias  
│   ├── querys_visao_analitica_pedidos.sql — Querys para extração dos dados no Power BI (Dashboard: Visão Analítica dos Pedidos)  
│   ├── Vendas_Marketplace.sql — Querys para extração dos dados no Power BI (Dashboard: Painel de Monitoramento de Vendas)  
│   ├── cancelamentos.sql — Querys para extração dos dados no Power BI  
│   ├── operacoes_logistica.sql — Querys para extração dos dados no Power BI  
│   ├── financeiro.sql — Querys para extração dos dados no Power BI  
├── 📂 Dashboards  
│   ├── 📊 Dashboard 1 — Diagnóstico Estratégico (Storytelling)  
│   └── 📊 Dashboard 2 — Monitoramento Operacional Contínuo  
└── 📂 Documentação do Projeto  
    ├── 📘 Dicionário dos Dados.pdf    
    ├── 🕵️ Registros de Anomalias e Inconsistências.pdf   
    └── 🔁 Fluxograma do Projeto.png
```


## 🧩 Ferramentas e Tecnologias  
- **Python** (*Pandas, Numpy, matplotlib, seaborn, unicodedata, unidecode, re, sqlalchemy, wordcloud, rapidfuzz*)
- **MySQL**
- **Power BI**
- **Canva**
- **Miro**
- **Notion**

## 🧠 Principais Análises Realizadas  

- Cancelamentos por região, categoria e seller
- Atrasos logísticos e impacto nas avaliações
- Sazonalidade dos pedidos e comportamento do consumidor
- Segmentação de sellers e oportunidades de expansão
- Avaliação de KPIs operacionais e de vendas

## 📊 Dashboards
- [Visão Analítica dos Pedidos](https://app.powerbi.com/view?r=eyJrIjoiMzY1Yzc3YzEtMzU1Ny00NzM3LWEzOGItYWFkNmE0YzhmNTIyIiwidCI6IjE4OTkzNTlhLTNjNTAtNGRlZS1iMmNjLWEzM2MzYzc2NGE0OCJ9)
- [Painéis de Monitoramento](https://app.powerbi.com/view?r=eyJrIjoiYTZkNTZhNTMtODdiNS00ZDJhLWJmODMtMjM0YWVlMWIzZWRhIiwidCI6IjE4OTkzNTlhLTNjNTAtNGRlZS1iMmNjLWEzM2MzYzc2NGE0OCJ9)

## 🔗 Fontes
- Dataset original: [Olist Store – Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce/data)
- Projeto desenvolvido com dados públicos

## 👨‍💻 Autor  
**Paulo Ribeiro da Costa Junior**  
**Estudante de Ciência e análise de Dados • [Portfólio](https://portfolio-paulo-ribeiro-dados.lovable.app/)**
