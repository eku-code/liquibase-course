-- liquibase formatted sql

-- changeset eku94:1
ALTER TABLE t_user ADD COLUMN address VARCHAR(500);
-- rollback ALTER TABLE DROP COLUMN address;