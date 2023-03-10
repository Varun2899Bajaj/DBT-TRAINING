with
orders as (
    select * from {{ ref('RAW_ORDERS') }}

)
SELECT 
    ORDERID,
    SUM(ORDERSELLINGPRICE) AS TOTAL_SP
FROM RAW_ORDERS
GROUP BY ORDERID
HAVING TOTAL_SP<0