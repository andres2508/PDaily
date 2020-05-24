SELECT COUNT(*) as visits
FROM SALES_ACTIVITIES a
         INNER JOIN SALES_ACTIVITIES_PURPOSES p ON p.ID = a.PURPOSE_ID
         INNER JOIN BS_CUSTOMERS_BUSINESS_VIEW bs ON bs.CUSTOMER_ID = a.BUYER_ID
WHERE a.TENANT_ID = '{{tenant_id}}'
  AND ('{{salesRepId}}' IS NULL OR A.SALES_REP_ID = '{{salesRepId}}')
  AND ('{{businessId}}' IS NULL OR BS.BUSINESS_ID = '{{businessId}}')
  AND A.ACTIVITY_DATE BETWEEN '{{startDate}}' AND '{{endDate}}'
