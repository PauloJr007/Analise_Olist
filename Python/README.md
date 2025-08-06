# 📓 Notebooks Python – Projeto Olist
Esta pasta contém os notebooks utilizados durante as etapas de exploração, tratamento e inserção dos dados no banco de dados MySQL. Todos os arquivos estão em formato .ipynb.

## 📁 Descrição dos Arquivos

### 1. `EDA_1.ipynb`
Primeira análise exploratória dos dados brutos.

**Objetivo: Identificação de inconsistências, erros e problemas de qualidade nos dados.**

### 2. `preprocessing.ipynb`
Etapas de limpeza e tratamento dos dados com base nos problemas identificados no EDA_1.

**Inclui padronizações, remoção de registros inválidos e correções.**

### 3. `EDA_2.ipynb`
Segunda análise exploratória, agora com os dados limpos.

**Objetivo: Extração de insights e entendimento mais profundo das variáveis.**

### 4. `Insert_Dados.ipynb`
Notebook responsável pela inserção dos dados no banco MySQL via SQLAlchemy.

**Contém dois blocos principais:**

- Inserção dos dados brutos (antes do tratamento).

- Atualização dos dados (substituição pelos dados tratados após o preprocessing).
