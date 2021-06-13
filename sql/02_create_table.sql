USE testdb;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
    user_id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    register_datetime TIMESTAMP NOT NULL,
    update_datetime TIMESTAMP NOT NULL
);

DROP TABLE IF EXISTS user_profile;
CREATE TABLE user_profile (
    user_id BIGINT NOT NULL PRIMARY KEY,
    gender ENUM('MAN', 'WOMAN') NOT NULL,
    age INTEGER NOT NULL,
    register_datetime TIMESTAMP NOT NULL,
    update_datetime TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

DROP TABLE IF EXISTS user_password;
CREATE TABLE user_password (
    user_id BIGINT NOT NULL PRIMARY KEY,
    password VARBINARY(255) NOT NULL,
    solt VARCHAR(32) NOT NULL,
    register_datetime TIMESTAMP NOT NULL,
    update_datetime TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);