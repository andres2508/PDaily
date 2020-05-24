INSERT INTO BS_BUSINESS_UNITS(id, name, reference, effective_activity_threshold, tenant_id)
VALUES ('8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_MARKET_ATTRIBUTE', 'TO_MARKET_ATTRIBUTE', 24,
        'F8523E75-9070-4A60-991A-BF22A46F0866')
ON CONFLICT DO NOTHING;

INSERT INTO market_attributes(id, business_id, label, dataType, subjectType, tenant_id)
VALUES ('D86EF0AA-26F8-4BE2-BA56-AE9BD818B5BD', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'EXISTENT', 'STRING', 'CONTACT',
        'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('9DAF8AF0-98B5-4950-AE7F-0A352AE9CBFE', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_DELETE', 'STRING',
        'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('FEBD52E9-627C-4B23-BFF5-35FB8EC74A0D', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_UPDATE', 'STRING',
        'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('ADA1690C-D96C-4D16-8412-3331B64C2469', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_UPDATE_LIST',
        'LIST_MULTIPLE_ANS', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('9D074A1B-8231-46C2-A6D2-99BB52C1E09F', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_PICKLIST_MULTIPLE_VALIDATE',
        'LIST_MULTIPLE_ANS', 'CUSTOMER', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('0D125ECC-9C7F-4B50-B158-7C1EF54D7BB5', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_PICKLIST_SINGLE_VALIDATE',
        'LIST_SINGLE_ANS', 'CUSTOMER', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('C6CC2A08-2C0F-469C-8EBB-0079520823B5', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_UPDATE', 'STRING',
        'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('BCDE817E-E53B-41BC-9294-B98D9D7D0D38', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_DELETE', 'STRING',
        'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('73C31A43-188C-4439-8946-D78ADF961893', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_INT', 'NUMBER',
        'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('6DB7F263-63D7-47E2-94D6-34AE8A968045', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_LIST_MULTIPLE',
        'LIST_MULTIPLE_ANS', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('C701D6E9-579A-4F2A-8CCB-336672E2F6EF', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_LIST_SINGLE',
        'LIST_SINGLE_ANS', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('5867247C-AA03-4D78-905C-014DE0AD8C90', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_BOOLEAN', 'BOOLEAN',
        'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('E8283AFB-F7F9-4F62-904D-6F8F80D1C461', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_BOOLEAN_IGNORE_CASE',
        'BOOLEAN', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('F4B022BC-A303-4FEF-A59D-66886616C6DA', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_CREATE', 'STRING',
        'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('86C91255-DEE4-42F0-8488-FDC14E84CCC0', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_VALUE_NULL_CREATE',
        'STRING', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('18D46944-F62F-454B-A7D0-1833322D56AB', '8179C70D-D977-4FEE-8C06-42B9A98E6D35',
        'TO_VALUE_EMPTY_MULTIPLE_LIST_CREATE', 'LIST_MULTIPLE_ANS', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('73AA9EEC-EE5C-4139-B918-2AC1CD7078DF', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_UPDATE_FAIL_VALIDATION',
        'STRING', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866'),
       ('80326C17-8764-4EAD-B96C-C7210AFCF9C1', '8179C70D-D977-4FEE-8C06-42B9A98E6D35', 'TO_DELETE_VALUES_VALIDATION',
        'STRING', 'CONTACT', 'f8523e75-9070-4a60-991a-bf22a46f0866')
ON CONFLICT DO NOTHING;

INSERT INTO market_attribute_value(tenant_id, id, attribute_id, value, subject_id, is_deleted)
VALUES ('f8523e75-9070-4a60-991a-bf22a46f0866', '2278B236-8980-40A3-96EC-5AA7C3EA943A',
        '73AA9EEC-EE5C-4139-B918-2AC1CD7078DF', '"TO_MARKET_ATTRIBUTE_UPDATED_FAIL_VALIDATION"',
        '430F5FE2-1807-4EB8-836D-213C6FA24684', false),
       ('f8523e75-9070-4a60-991a-bf22a46f0866', 'D07F2F3C-7C9B-458F-9682-67F6D7CB2911',
        '80326C17-8764-4EAD-B96C-C7210AFCF9C1', '"TO_MARKET_ATTRIBUTE_DELETE_VALIDATION"',
        '430F5FE2-1807-4EB8-836D-213C6FA24684', false)
ON CONFLICT DO NOTHING;