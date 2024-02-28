-- liquibase formatted sql

-- changeset eku94:1
CREATE TABLE t_user
(
    user_id            BIGSERIAL          PRIMARY KEY NOT NULL,
    first_name         VARCHAR(150),
    last_name          VARCHAR(150),
    created_at         TIMESTAMP          NOT NULL,
    updated_at         TIMESTAMP
);
-- rollback DROP TABLE t_user;

-- changeset eku94:2
CREATE TABLE t_friends
(
    friend_id          BIGSERIAL          PRIMARY KEY NOT NULL,
    user_one_id        BIGINT             NOT NULL,
    user_two_id        BIGINT             NOT NULL,
    created_at         TIMESTAMP          NOT NULL,
    updated_at         TIMESTAMP,
    FOREIGN KEY (user_one_id) REFERENCES t_user (user_id),
    FOREIGN KEY (user_two_id) REFERENCES t_user (user_id)
);
-- rollback DROP TABLE t_friends;