TRUNCATE TABLE market_attribute_value;
INSERT INTO market_attribute_value(tenant_id, id, attribute_id, value, subject_id, is_deleted)
VALUES ('f8523e75-9070-4a60-991a-bf22a46f0866', 'C004078D-0B3B-4246-8D55-A87B38683AF5',
        'D86EF0AA-26F8-4BE2-BA56-AE9BD818B5BD', '"EXISTENT"', '430F5FE2-1807-4EB8-836D-213C6FA24684', false),
       ('f8523e75-9070-4a60-991a-bf22a46f0866', '4F5E7FE3-D284-4545-8871-E0139DDB76E9',
        'C6CC2A08-2C0F-469C-8EBB-0079520823B5', '"TO_UPDATE"', '430F5FE2-1807-4EB8-836D-213C6FA24684', false),
       ('f8523e75-9070-4a60-991a-bf22a46f0866', '31167CC2-5F8E-430C-A46E-6E73FFEFD61C',
        'BCDE817E-E53B-41BC-9294-B98D9D7D0D38', '"TO_DELETE"', '430F5FE2-1807-4EB8-836D-213C6FA24684', false),
       ('f8523e75-9070-4a60-991a-bf22a46f0866', 'A9C30AF1-9222-4A8F-B87E-BDCD99811B56',
        '9D074A1B-8231-46C2-A6D2-99BB52C1E09F',
        '[
          "5A9FE34A-4441-45F1-8FC4-7E85B8A29A30",
          "548D9815-16ED-4972-999D-76104B98A527"
        ]',
        '430F5FE2-1807-4EB8-836D-213C6FA24684', false)
ON CONFLICT DO NOTHING;