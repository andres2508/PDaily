INSERT INTO SALES_ACTIVITIES_TASKS(tenant_id, id, name)
VALUES ('F8523E75-9070-4A60-991A-BF22A46F0866', '4EDB9A68-FA61-4581-85B3-0670868E73F9', 'EXISTENT'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', 'C5A36B70-0370-4B83-AC24-76633849C767', 'TO_UPDATE'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', '5F716902-1C2E-4E31-BB20-708DC0EECF36', 'TO_DELETE'),
       ('F8523E75-9070-4A60-991A-BF22A46F0866', 'A2109A10-59B7-4845-86A3-2BB877C258DC', 'TASK_FOR_DETAIL')
ON CONFLICT DO NOTHING;
