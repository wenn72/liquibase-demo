--liquibase formatted sql

--changeset wendy:4 runOnChange:true
--preconditions onFail:MARK_RAN onError:MARK_RAN
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM demo.`users`;
INSERT INTO demo.users (id, user_name, email, birthday, is_active, create_time) VALUES (1, 'Li', null, null, DEFAULT, UNIX_TIMESTAMP() * 1000);
INSERT INTO demo.users (id, user_name, email, birthday, is_active, create_time) VALUES (2, 'Zo', null, null, DEFAULT, UNIX_TIMESTAMP() * 1000);
INSERT INTO demo.users (id, user_name, email, birthday, is_active, create_time) VALUES (3, 'Jay', null, null, DEFAULT, UNIX_TIMESTAMP() * 1000);

--changeset wendy:5 runOnChange:true
--preconditions onFail:MARK_RAN onError:MARK_RAN
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM demo.`users`;
INSERT INTO demo.users (id, user_name, email, birthday, is_active, create_time) VALUES (1, 'Li', null, null, DEFAULT, UNIX_TIMESTAMP() * 1000);
INSERT INTO demo.users (id, user_name, email, birthday, is_active, create_time) VALUES (2, 'Zo', null, null, DEFAULT, UNIX_TIMESTAMP() * 1000);
INSERT INTO demo.users (id, user_name, email, birthday, is_active, create_time) VALUES (3, 'Jay', null, null, DEFAULT, UNIX_TIMESTAMP() * 1000);

