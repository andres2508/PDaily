INSERT INTO BS_BUSINESS_UNITS(id, name, reference, effective_activity_threshold, tenant_id)
VALUES ('1AE480CA-9CAA-4C62-B34F-8DE97E604F16', 'FOR_PROD_GROUP', 'FOR_PROD_GROUP', 24,
        'F8523E75-9070-4A60-991A-BF22A46F0866')
ON CONFLICT DO NOTHING;
INSERT INTO bs_product_groups(id, name, reference, business_id, tenant_id)
VALUES ('D6D9FC09-5D06-4125-AD0A-570539192AFA', 'EXISTENT', 'EXISTENT', '31273662-2A1F-4E82-BA33-E4A7D35A961B',
        'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('9DAF8AF0-98B5-4950-AE7F-0A352AE9CBFE', 'TO_DELETE', 'TO_DELETE', '31273662-2A1F-4E82-BA33-E4A7D35A961B',
        'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('FEBD52E9-627C-4B23-BFF5-35FB8EC74A0D', 'TO_UPDATE', 'TO_UPDATE', '31273662-2A1F-4E82-BA33-E4A7D35A961B',
        'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('1CF410E9-EE4B-4592-B3E4-67DAFE23B525', 'FOR_BUSINESS_UNIT', 'FOR_BUSINESS_UNIT',
        '1AE480CA-9CAA-4C62-B34F-8DE97E604F16',
        'f8523e75-9070-4a60-991a-bf22a46f0866')
ON CONFLICT DO NOTHING;

