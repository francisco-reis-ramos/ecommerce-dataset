
-- CRIANDO TABELA DE PRODU플O 'CUSTOMER'
CREATE TABLE TB_ACT_OLIST_CUSTOMER
(
CUSTOMER_ID NVARCHAR (150),
CUSTOMER_UNIQUE_ID NVARCHAR (150),
CUSTOMER_ZIP_CODE_PREFIX NVARCHAR (15),
CUSTOMER_CITY NVARCHAR (100),
CUSTOMER_STATE CHAR (2)
)


-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'CUSTOMER' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_CUSTOMER
SELECT * FROM dbo.TB_CG_OLIST_CUSTOMER


-- CRIANDO TABELA DE PRODU플O 'GEOLOCATION'
CREATE TABLE TB_ACT_OLIST_GEOLOCATION
(
GEOLOCATION_ZIP_CODE_PREFIX NVARCHAR (15),
GEOLOCATION_LAT NVARCHAR (100),
GEOLOCATION_LNG NVARCHAR (100),
GEOLOCATION_CITY NVARCHAR (100),
GEOLOCATION_STATE CHAR (2)
)


-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'GEOLOCATION' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_GEOLOCATION
SELECT * FROM dbo.TB_CG_OLIST_GEOLOCATION


-- CRIANDO TABELA DE PRODU플O 'ORDER ITENS'
CREATE TABLE TB_ACT_OLIST_ORDER_ITENS
(
ORDER_ID NVARCHAR (150),
ORDER_ITEM_ID INT,
PRODUCT_ID NVARCHAR (150),
SELLER_ID NVARCHAR (150),
SHIPPING_LIMIT_DATE DATETIME2,
PRICE SMALLMONEY,
FREIGHT_VALUE SMALLMONEY
)

-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'ORDER ITENS' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_ORDER_ITENS
SELECT * FROM dbo.TB_CG_OLIST_ORDER_ITENS

-- CRIANDO TABELA DE PRODU플O 'ORDER PAYMENTS'
CREATE TABLE TB_ACT_OLIST_ORDER_PAYMENTS
(
ORDER_ID NVARCHAR (150),
PAYMENT_SEQUENTIAL INT,
PAYMENT_TYPE NVARCHAR (40),
PAYMENT_INSTALLMENTS INT,
PAYMENT_VALUE MONEY,
)

-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'ORDER PAYMENTS' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_ORDER_PAYMENTS
SELECT * FROM dbo.TB_CG_OLIST_ORDER_PAYMENTS


-- CRIANDO TABELA DE PRODU플O 'ORDERS'
CREATE TABLE TB_ACT_OLIST_ORDERS
(
ORDER_ID NVARCHAR (150),
CUSTOMER_ID NVARCHAR (150),
ORDER_STATUS NVARCHAR (30),
ORDER_PURCHASE_TIMESTAMP DATETIME2,
ORDER_APPROVED_AT DATETIME2,
ORDER_DELIVERED_CARRIER_DATE DATETIME2,
ORDER_DELIVERED_CUSTOMER_DATE DATETIME2,
ORDER_ESTIMATED_DELIVERY_DATE DATETIME2
)

-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'ORDERS' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_ORDERS
SELECT * FROM dbo.TB_CG_OLIST_ORDERS


-- CRIANDO TABELA DE PRODU플O 'PRODUCT CATEGORY'
CREATE TABLE TB_ACT_OLIST_PRODUCT_CATEGORY
(
PRODUCT_CATEGORY_NAME NVARCHAR (150),
PRODUCT_CATEGORY_NAME_ENGLISH NVARCHAR (150)
)

-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'PRODUCT CATEGORY' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_PRODUCT_CATEGORY
SELECT * FROM dbo.TB_CG_OLIST_PRODUCT_CATEGORY


-- CRIANDO TABELA DE PRODU플O 'PRODUCTS'
CREATE TABLE TB_ACT_OLIST_PRODUCTS
(
PRODUCT_ID NVARCHAR (150),
PRODUCT_CATEGORY_NAME NVARCHAR (150),
PRODUCT_NAME_LENGHT INT,
PRODUCT_DESCRIPTION_LENGHT INT,
PRODUCT_PHOTOS_QTY INT,
PRODUCT_WEIGHT_G INT,
PRODUCT_LENGHT_CM INT,
PRODUCT_HEIGHT_CM INT,
PRODUCT_WIDTH_CM INT
)

-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'PRODUCTS' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_PRODUCTS
SELECT * FROM dbo.TB_CG_OLIST_PRODUCTS


-- CRIANDO TABELA DE PRODU플O 'SELLERS'
CREATE TABLE TB_ACT_OLIST_SELLERS
(
SELLER_ID NVARCHAR (150),
SELLER_ZIP_CODE_PREFIX NVARCHAR (15),
SELLER_CITY NVARCHAR (100),
SELLER_STATE CHAR (2)
)

-- IMPORTANDO PARA A TEBELA DE PRODU플O OS DADOS DE 'SELLERS' A PARTIR DA TABELA DE CARGA
INSERT INTO dbo.TB_ACT_OLIST_SELLERS
SELECT * FROM dbo.TB_CG_OLIST_SELLERS
