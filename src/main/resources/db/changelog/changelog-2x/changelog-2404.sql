--liquibase formatted sql

--changeset wendy:6 runOnChange:true
CREATE TABLE IF NOT EXISTS demo.`config` (
    `region` VARCHAR(50) NOT NULL,
    `key` VARCHAR(50) NOT NULL,
    `value` VARCHAR(100) NULL,
    `create_time` BIGINT DEFAULT 0 NOT NULL,
    `update_time` BIGINT DEFAULT 0 NOT NULL,
    `delete_time` BIGINT DEFAULT 0 NOT NULL,
    PRIMARY KEY ( `key` )
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;


--changeset wendy:7 runOnChange:true
--preconditions onFail:MARK_RAN onError:MARK_RAN
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM `config` WHERE `key` = 'support_fast_connect';
INSERT INTO demo.`config` (`region`, `key`, `value`, `create_time`) VALUES (${region}, 'support_fast_connect', 'false', UNIX_TIMESTAMP() * 1000);


--changeset wendy:8 runOnChange:true
--precondition-sql-check expectedResult:1 SELECT COUNT(*) FROM `config` WHERE `key` = 'support_fast_connect';
UPDATE demo.`config` SET `value` = 'true', `update_time` = UNIX_TIMESTAMP() * 1000 WHERE `key` = 'support_fast_connect';
