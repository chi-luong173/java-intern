use dbs_servlet;


CREATE TABLE user(
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    username VARCHAR(30) NOT NULL,
	password VARCHAR(60) NOT NULL,
    fullname VARCHAR(255) NULL,
    email VARCHAR(255) NULL,
    thumbnail VARCHAR(255) NULL,
    dob DATE NULL,
    phone BIGINT, 
    status INT UNSIGNED DEFAULT 1,
    role TINYINT(1) DEFAULT 0,
    created_date TIMESTAMP NULL,
    modified_date TIMESTAMP NULL,
    created_by VARCHAR(255) NULL,
    modified_by VARCHAR(255) NULL
);

CREATE TABLE post(
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    title VARCHAR(255) NULL,
	review TEXT NULL,
    thumbnail VARCHAR(255) NULL,
    upvoted INT DEFAULT 0,
    downvoted INT DEFAULT 0, 
    rate TINYINT NULL,
    created_date TIMESTAMP NULL,
    modified_date TIMESTAMP NULL,
    created_by VARCHAR(255) NULL,
    modified_by VARCHAR(255) NULL
);

CREATE TABLE comment(
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
	content TEXT NOT NULL,
    user_id BIGINT NOT NULL,
    post_id BIGINT NOT NULL,
    created_date TIMESTAMP NULL,
    modified_date TIMESTAMP NULL,
    created_by VARCHAR(255) NULL,
    modified_by VARCHAR(255) NULL
);
ALTER TABLE comment ADD CONSTRAINT fk_comment_user FOREIGN KEY(user_id) REFERENCES user(id);
ALTER TABLE comment ADD CONSTRAINT fk_comment_post FOREIGN KEY(post_id) REFERENCES post(id);
ALTER DATABASE dbs_servlet CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
INSERT INTO user  (username,password,status,role) VALUES ('chiluong', md5('123456'),1,0);
SELECT * FROM user