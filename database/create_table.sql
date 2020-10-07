use dbs_servlet;


CREATE TABLE user(
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    username VARCHAR(30) NOT NULL,
	pasword VARCHAR(60) NOT NULL,
    fullname VARCHAR(255) NULL,
    email VARCHAR(255) NULL,
    thumbnail VARCHAR(255) NULL,
    dob DATE NULL,
    phone BIGINT, 
    status INT NOT NULL,
    role TINYINT(1) DEFAULT NULL,
    post_id BIGINT NOT NULL,
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
ALTER TABLE user ADD CONSTRAINT fk_user_posts FOREIGN KEY(post_id) REFERENCES post(id);

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