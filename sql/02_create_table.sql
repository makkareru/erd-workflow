USE testdb;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
    user_id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    created_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS user_profile;
CREATE TABLE user_profile (
    user_id BIGINT NOT NULL PRIMARY KEY,
    gender ENUM('MAN', 'WOMAN') NOT NULL,
    age INTEGER NOT NULL,
    created_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY user_profile_user_id_foreign_key (user_id) REFERENCES user(user_id)
);

DROP TABLE IF EXISTS user_password;
CREATE TABLE user_password (
    user_id BIGINT NOT NULL PRIMARY KEY,
    password VARBINARY(255) NOT NULL,
    solt VARCHAR(32) NOT NULL,
    created_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY user_password_user_id_foreign_key (user_id) REFERENCES user (user_id)
);

SET FOREIGN_KEY_CHECKS = 1;