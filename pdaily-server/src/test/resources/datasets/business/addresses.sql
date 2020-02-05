DELETE
FROM BS_ADDRESSES;
INSERT INTO BS_ADDRESSES(id, referenced_id, description, is_main, street_line, street_line2, city_id, latitude,
                         longitude, tenant_id)
VALUES ('90E21347-E4B6-4AB1-A004-DB99B9DCD949', 'E05DCE19-F0E9-49A5-A04E-02798DE3E795', 'EXISTENT', TRUE, 'EXISTENT',
        'EXISTENT', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0, 'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('E7CCD6FE-6A98-4A75-82A3-0C1F3D0BB411', 'E05DCE19-F0E9-49A5-A04E-02798DE3E795', 'EXISTENT_SECOND', FALSE,
        'EXISTENT_SECOND', 'EXISTENT', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0,
        'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('EB9ED3E5-BC3F-463D-A86D-FE66611CD1DE', '9202A002-9FDC-4D24-B52B-0B64BBDBA6E8', 'EXISTENT_THIRD', FALSE,
        'EXISTENT_THIRD', 'EXISTENT_THIRD', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0,
        'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('BA4259DF-AA51-412C-8B9D-3635F92CA02E', '8F510F15-C662-40C0-895C-E9D83CD85FE6', 'TO_UPDATE', TRUE, 'TO_UPDATE',
        'TO_UPDATE', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0, 'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('B1DFA682-4CA5-40DF-91AD-63390CAC6622', '82B9C02C-7638-4497-829A-90E3B125857B', 'TO_DELETE', TRUE, 'TO_DELETE',
        'TO_DELETE', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0, 'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('B5C2180E-C130-4D80-8929-D6895DCC26C3', 'AAE5FEF6-1592-4060-946C-183BEFD85086', 'TO_UPDATE_BY_REF', TRUE,
        'TO_UPDATE_BY_REF', 'TO_UPDATE_BY_REF', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0,
        'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('1D2B4D94-6B2B-484A-998F-C1ADCD34F4E1', '11EDB595-52BD-4DCF-ABEF-3A74DE63B27F', 'TO_DELETE_BY_REF', FALSE,
        'TO_DELETE_BY_REF', 'TO_DELETE_BY_REF', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0,
        'F8523E75-9070-4A60-991A-BF22A46F0866'),
       ('3E277929-93B6-48A8-A7AC-64DE92DF7918', 'CE6474ED-F94B-4806-8DFF-B2EDC01C653C', 'TO_DELETE_MAIN_BY_REF', TRUE,
        'TO_DELETE_MAIN_BY_REF', 'TO_DELETE_MAIN_BY_REF', 'DAC12850-7490-4AAE-A396-0A1DF253D751', 0, 0,
        'F8523E75-9070-4A60-991A-BF22A46F0866');
