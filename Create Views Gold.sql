--------

--- CREATE VIEW CALENDER 

--------

CREATE VIEW gold.calender
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Calender/',
            FORMAT = 'PARQUET'
        ) as QUER1
        GO



--------

---CREATE VIEW CUSTOMERS

--------

CREATE VIEW gold.customers
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as QUER1
        GO



---CREATE VIEW PRODUCT CATEGORIES

--------

CREATE VIEW gold.Product_Categories
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
            FORMAT = 'PARQUET'
        ) as QUER1
        GO



---CREATE VIEW PRODUCT SUB CATEGORIES

--------

CREATE VIEW gold.Product_Subcategories
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
            FORMAT = 'PARQUET'
        ) as QUER1
        GO




---CREATE VIEW PRODUCTS

--------

CREATE VIEW gold.Products
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as QUER1
        GO




---CREATE VIEW RETURNS

--------

CREATE VIEW gold.Returns
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1
        GO




---CREATE VIEW SALES

--------

CREATE VIEW gold.Sales
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1
        GO



---CREATE VIEW TERRITORIES

--------

CREATE VIEW gold.Territories
AS

SELECT
    *
FROM
    OPENROWSET
        (
            BULK 'https://advwstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as QUER1
