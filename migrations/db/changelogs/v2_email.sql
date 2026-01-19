--liquibase formatted sql

--changeset ditnavn:1
--comment: Tilføjer email kolonne til 'navne' tabellen
ALTER TABLE navne ADD COLUMN email VARCHAR(255) AFTER navn;

--rollback ALTER TABLE navne DROP COLUMN email;
