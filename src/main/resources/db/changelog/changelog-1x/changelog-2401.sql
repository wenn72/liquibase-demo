--liquibase formatted sql

--changeset wendy:1 runOnChange:true
CREATE TABLE IF NOT EXISTS demo.`users` (
    `id` INT,
    `user_name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NULL,
    `birthday` DATE NULL,
    `is_active` BOOLEAN DEFAULT TRUE,
    `create_time` BIGINT DEFAULT 0 NOT NULL,
    `update_time` BIGINT DEFAULT 0 NOT NULL,
    `delete_time` BIGINT DEFAULT 0 NOT NULL,
    PRIMARY KEY ( `id` )
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;


--changeset wendy:2 runOnChange:true
--preconditions onFail:MARK_RAN onError:MARK_RAN
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM information_schema.`columns` WHERE `TABLE_SCHEMA` = 'demo' AND `TABLE_NAME` = 'users' AND `COLUMN_NAME` = 'birthday';
ALTER TABLE demo.`users`
    ADD COLUMN `birthday` DATE AFTER `is_active`;

--changeset wendy:3 runOnChange:true
--preconditions onFail:MARK_RAN onError:MARK_RAN
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM information_schema.`columns` WHERE `TABLE_SCHEMA` = 'demo' AND `TABLE_NAME` = 'users' AND `COLUMN_NAME` = 'hobby';
ALTER TABLE demo.`users`
    ADD COLUMN `hobby` VARCHAR(50) NULL AFTER `is_active`;



