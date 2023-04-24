
-- CRIANDO UMA VIEW QUE EXIBA QUAIS AS CIDADES E ESTADOS DOS CLIENTES CADASTRADOS QUE REALIZARAM PEDIDOS.
-- Passo 1) Gerando uma consulta:
SELECT O.*, C.CUSTOMER_CITY, C.CUSTOMER_STATE 
FROM [dbo].[TB_ACT_OLIST_ORDERS] AS O
INNER JOIN [dbo].[TB_ACT_OLIST_CUSTOMER] AS C
ON O.CUSTOMER_ID = C.CUSTOMER_ID

-- Passo 2) Criando a view a partir da consulta:
CREATE VIEW Vw_CUSTOMER_CITY_STATE
AS
SELECT O.*, C.CUSTOMER_CITY, C.CUSTOMER_STATE 
FROM [dbo].[TB_ACT_OLIST_ORDERS] AS O
INNER JOIN [dbo].[TB_ACT_OLIST_CUSTOMER] AS C
ON O.CUSTOMER_ID = C.CUSTOMER_ID

