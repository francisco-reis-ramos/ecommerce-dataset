BREVE JUSTIFICATIVA

A execução desse projeto foi realizada com o intuito de simular um caso de solução de problemas reais e, como isso, aprimorar habilidades em análise de dados usando banco de dados, linguagem SQL e Power BI. Para isso, foi utilizada uma base de dados disponibilizada no site Kaggle pelo e-commerce brasileiro Olist.  


- Inicialmente, a Base de dados utilizada no projeto foi baixada através do link "https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce".
- Foram baixados 8 arquivos e para cada um deles foi criada no SQL Server uma tabela de carga. Os arquivos baixados foram:
	. Customer
	. Geolocation
	. Order itens
	. Order payments
	. Orders
	. Product Category
	. Products
	. Sellers
- Para cada tabela de carga foi criada uma tabela permanente (de produção).
- Após a criação das tabelas permanentes, fez-se a importação dos dados a partir de cada uma das tabelas de carga.
- Como não havia informação de cidade e estado dos clentes na tabela de pedidos (TB_ACT_OLIST_ORDERS), foi criada uma view para exibir essa informação.