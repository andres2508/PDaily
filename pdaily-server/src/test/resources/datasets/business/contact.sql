DELETE FROM BS_CONTACTS;
INSERT INTO BS_CONTACTS(ID, NAME, EMAIL, LANDLINE_PHONE, MOBILE_PHONE, ROLE_ID, CUSTOMER_ID, TENANT_ID)
VALUES ('430F5FE2-1807-4EB8-836D-213C6FA24684', 'EXISTENT', 'info@contact.co', '4445566', '3213453434',
        'D6D9FC09-5D06-4125-AD0A-570539192AFA', '619E1AE0-400B-494F-8E27-30A1BA6B0828', 'F8523E75-9070-4A60-991A-BF22A46F0866'),
        ('4A93DC7B-A556-4AC8-8DDD-C76F57C6292B', 'TO_UPDATE', 'info@contact2.co', '4445567', '3213453435',
        'D6D9FC09-5D06-4125-AD0A-570539192AFA', '619E1AE0-400B-494F-8E27-30A1BA6B0828', 'F8523E75-9070-4A60-991A-BF22A46F0866'),
        ('F4F7DFBF-5193-4B83-9826-2D5E7FF99536', 'TO_DELETE', 'info@contact3.co', '4445568', '3213453436',
        'D6D9FC09-5D06-4125-AD0A-570539192AFA', '619E1AE0-400B-494F-8E27-30A1BA6B0828', 'F8523E75-9070-4A60-991A-BF22A46F0866');
