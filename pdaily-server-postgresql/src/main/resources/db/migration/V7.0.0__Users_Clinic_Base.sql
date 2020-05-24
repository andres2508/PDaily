CREATE TABLE IF NOT EXISTS medicine_levodopa_types
(
    id        UUID         NOT NULL     PRIMARY KEY ,
    label      VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS medicine_levodopa
(
    tenant_id  UUID         NOT NULL,
    id         UUID         NOT NULL    PRIMARY KEY ,
    name       VARCHAR(100) NOT NULL,
    type_id    UUID         NOT NULL,
    dose_value INT          NOT NULL
);