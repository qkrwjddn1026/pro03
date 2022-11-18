CREATE TABLE test(NAME VARCHAR(50), POINT INT);

INSERT INTO test VALUES ("김기태",100);
INSERT INTO test VALUES ("김도연",80);

SELECT * from test;
DROP TABLE notice;
CREATE TABLE notice(
	no INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	content VARCHAR(1000),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);

DESC notice;
COMMIT;

INSERT INTO notice(title, content) VALUES ("테스트 글1", "테스트 글1 내용.");

COMMIT;
SELECT * FROM notice;

CREATE TABLE user (
id varchar(13) primary key,
pw varchar(200) not NULL,
name varchar(50) not null,
address varchar(500) not NULL, 
tel varchar(14) not null,
regDate datetime default NOW()
);

select * from USER;

DROP TABLE USER;

INSERT INTO USER (id,pw,NAME,address,tel) VALUES ("pjw","1234","박정우","김포","01012345678");

COMMIT;

CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	POINT INT DEFAULT 0,
	grade VARCHAR(4) DEFAULT "F",
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

INSERT INTO user(id,pw,NAME,tel,addr,email,birth) VALUES ("pjw","1234","박정우","01012345678","김포","qjw@naver.com","1999/10/26");
COMMIT;
CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150)
);
ALTER TABLE pic ADD COLUMN pos INT default 1; 

CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),	-- 카테고리 타입 - 마지막 레코드의 no+1
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)  
);

COMMIT;
DESC tour;
DESC pic;

CREATE TABLE impress(
	no INT PRIMARY KEY AUTO_INCREMENT,
	cate VARCHAR(20),
	tourno VARCHAR(20),
	id VARCHAR(30),
	content VARCHAR(1000),
	star DOUBLE,
	imgSrc VARCHAR(150),
	regdate DATETIME DEFAULT NOW()
);
DESC impress;

select * from impress;

CREATE TABLE qna(
no INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
content VARCHAR(1000) NOT NULL,
author VARCHAR(20) NOT NULL,
regdate DATETIME default NOW(),
lev INT DEFAULT 0,
parno INT,
sec CHAR(1),
visited INT DEFAULT 0
);
DESC qna;