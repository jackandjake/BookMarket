drop table bookmarket.member;

CREATE TABLE bookmarket.member (
  cid varchar(10) NOT NULL,
  cname varchar(10) DEFAULT NULL,
  cpw varchar(10) NOT NULL,
  cbday varchar(10) DEFAULT NULL,
  cmail varchar(30) DEFAULT NULL,
  cphone varchar(20) DEFAULT NULL,
  zipcode varchar(5) DEFAULT NULL,
  roadaddr varchar(100) DEFAULT NULL,
  jibuncaddr varchar(100) DEFAULT NULL,
  detailcaddr varchar(100) DEFAULT NULL,
  register_day varchar(50) DEFAULT NULL,
  PRIMARY KEY (cid)
);

INSERT INTO bookmarket.member VALUES ('admin', '관리자', 'admin1234', '2021/12/12', 'admin@naver.com', '010-1111-1111', 41069, '대구 동구 첨단로8길 8', '대구 동구 신서동 1148', '1234', null);
INSERT INTO bookmarket.member VALUES ('hong', '홍길동', '1234', '2021/12/12', 'hong@naver.com', '010-1111-1111', 41069, '대구 동구 첨단로8길 8', '대구 동구 신서동 1148', '1234', null);


create table bookmarket.product (
productId varchar(10) not null,
pname varchar(100) null,
pwriter varchar(45) null,
unitPrice int null,
category varchar(45) null,
publisher varchar(45) null,
publishDate varchar(45) null,
descriptoin text null,
unitsInStock mediumtext null,
filename varchar(45) null,
primary key(productId)
);

create table bb(
num int primary key,         -- 글 번호
writer varchar(30) not null,   -- 작성자
subject varchar(100) not null, -- 제목
content varchar(2048) not null,-- 내용
readcount int default 0,     -- 조회수
password varchar(20) not null, -- 비밀번호
reg_date varchar(45) DEFAULT NULL,  -- 등록일자
ip varchar(30) not null,       -- ip주소
ref int not null,            -- 답변글 그룹
re_step int not null,        -- ref내의 순서
re_level int not null        -- 들여쓰기
);