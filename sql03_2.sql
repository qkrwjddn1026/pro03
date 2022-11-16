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
	NO INT PRIMARY KEY AUTO_INCREMENT,
	tourno INT NOT NULL,
	picname VARCHAR(30) NOT NULL,
	