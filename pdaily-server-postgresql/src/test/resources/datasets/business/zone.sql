INSERT INTO BS_BUSINESS_UNITS(id, name, reference, effective_activity_threshold, tenant_id)
VALUES ('FD1E8B13-7F85-4D76-BFBC-4F03FB1BBE6C', 'FOR_ZONE', 'FOR_ZONE', 24, 'F8523E75-9070-4A60-991A-BF22A46F0866')
ON CONFLICT DO NOTHING;
INSERT INTO BS_ZONES(id, name, reference, business_id, tenant_id)
VALUES ('A2D733A9-9525-48C5-88E7-433F86D8B6DD', 'EXISTENT', 'EXISTENT', '31273662-2A1F-4E82-BA33-E4A7D35A961B',
        'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('00297AE7-1B85-44CF-B8E9-6C535641A85F', 'TO_UPDATE', 'TO_UPDATE', '31273662-2A1F-4E82-BA33-E4A7D35A961B',
        'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('77B54019-2EAF-4C6E-83CC-F5756AA177F9', 'TO_DELETE', 'TO_DELETE', '31273662-2A1F-4E82-BA33-E4A7D35A961B',
        'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('5FB44FBA-CC3F-4AA5-9F89-76626A0E23BA', 'FOR_BUSINESS_UNIT', 'FOR_BUSINESS_UNIT',
        'FD1E8B13-7F85-4D76-BFBC-4F03FB1BBE6C', 'F8523E75-9070-4A60-991A-BF22A46F0866')
ON CONFLICT DO NOTHING;