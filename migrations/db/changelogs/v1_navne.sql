--liquibase formatted sql

--changeset navne:1
--comment: Opretter tabellen 'navne' med id og navn
CREATE TABLE navne (
    id INT NOT NULL AUTO_INCREMENT,
    navn VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--rollback DROP TABLE navne;
