INSERT INTO EVENT_PHYSICAL_INJURY_TYPES(tenant_id, id, name)
VALUES ('F8523E75-9070-4A60-991A-BF22A46F0866', '4EDB9A68-FA61-4581-85B3-0670868E73F9', 'EXISTENT'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', 'C5A36B70-0370-4B83-AC24-76633849C767', 'TO_UPDATE'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', '5F716902-1C2E-4E31-BB20-708DC0EECF36', 'TO_DELETE'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', 'C8255B06-8ACF-434F-8C3C-A290E2D4D52D', 'Caida'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', '94525AFD-E8A2-4A16-9627-9BD129640575', 'Congelamiento'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', 'A3A6FFFA-6B90-4072-A1FA-481ECEEF99A4', 'Discinecia'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', '211AEB2A-3C33-42B8-B779-FAE2FA793FE4', 'Lentificacion'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', 'E58D8C80-B421-4CE2-8582-AB2F89330BB7', 'Temblor'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', 'B59FCF70-CEFD-423A-9E6C-B8F9527ACF6B', 'Tropezon')
ON CONFLICT DO NOTHING;