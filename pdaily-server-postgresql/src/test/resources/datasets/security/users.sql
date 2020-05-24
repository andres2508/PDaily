INSERT INTO SECURITY_USERS(ID, GIVEN_NAME, LAST_NAME, EMAIL, USERNAME, TYPE, HASH_ITERATIONS, SALT, PASSWORD,
                           ACCOUNT_ID,
                           LICENSE_ID)
VALUES ('B667B7EE-1211-4A8B-BBC6-B98E7BA5CDA0', 'TO_UPDATE', 'TO_UPDATE', 'update@haruk.co', 'to_update', 'N', 27500,
        'o5mxNvXiCinpxnS1Q5X06g==',
        'p+kFo+CmHkj/kdNIro/OjIwZi6QURqhbkApOHYV0y8EroX2YJN7F+xkNm32PppoliddeWYunYHt7E4D5SKsbLg==',
        'F8523E75-9070-4A60-991A-BF22A46F0866', NULL),
       ('E69BE2D5-D0D2-40F4-A5D9-8B4733D28E5C', 'TO_CHANGE_PASS', 'TO_CHANGE_PASS', 'changepass@haruk.co',
        'to_change_pass', 'N', 27500, 'o5mxNvXiCinpxnS1Q5X06g==',
        'p+kFo+CmHkj/kdNIro/OjIwZi6QURqhbkApOHYV0y8EroX2YJN7F+xkNm32PppoliddeWYunYHt7E4D5SKsbLg==',
        'F8523E75-9070-4A60-991A-BF22A46F0866', NULL),
       ('5D7BAD11-3721-4E56-B17F-CDF91B598FBD', 'EXISTENT', 'EXISTENT', 'existent@haruk.co', 'existent', 'N', 27500,
        'o5mxNvXiCinpxnS1Q5X06g==',
        'p+kFo+CmHkj/kdNIro/OjIwZi6QURqhbkApOHYV0y8EroX2YJN7F+xkNm32PppoliddeWYunYHt7E4D5SKsbLg==',
        'F8523E75-9070-4A60-991A-BF22A46F0866', NULL),
       ('CC2F3984-67D0-4A17-9E16-F053DCFBED79', 'TO_DELETE', 'TO_DELETE', 'delete@haruk.co', 'to_delete', 'N', 27500,
        'o5mxNvXiCinpxnS1Q5X06g==',
        'p+kFo+CmHkj/kdNIro/OjIwZi6QURqhbkApOHYV0y8EroX2YJN7F+xkNm32PppoliddeWYunYHt7E4D5SKsbLg==',
        'F8523E75-9070-4A60-991A-BF22A46F0866', NULL)
ON CONFLICT DO NOTHING;