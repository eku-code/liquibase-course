-- liquibase formatted sql

-- changeset eku94:1
drop table t_friends;
-- rollback CREATE TABLE t_friends
--(
--    friend_id          BIGSERIAL          PRIMARY KEY NOT NULL,
--    user_one_id        BIGINT             NOT NULL,
--    user_two_id        BIGINT             NOT NULL,
--    created_at         TIMESTAMP          NOT NULL,
--    updated_at         TIMESTAMP,
--    FOREIGN KEY (user_one_id) REFERENCES t_user (user_id),
--    FOREIGN KEY (user_two_id) REFERENCES t_user (user_id)
--);

-- changeset eku94:2
ALTER TABLE t_user DROP COLUMN address;
-- rollback ALTER TABLE t_user ADD COLUMN address VARCHAR(500);