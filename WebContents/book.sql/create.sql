CREATE TABLE member (
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


create table product (
productId varchar(10) not null,
pname varchar(100) null,
pwriter varchar(45) null,
unitPrice int null,
category varchar(45) null,
publisher varchar(45) null,
publishDate varchar(45) null,
description text null,
unitsInStock mediumtext null,
filename varchar(45) null,
primary key(productId)
);

INSERT INTO book.product VALUES('A1001','로블록스 게임 제작 무작정 따라하기 미래의 게임 프로그래머를 위한','서종원, 김연호, 강은숙','18000','게임','길벗','2021-06-07','"나만의 로블록스 게임을 단계별로 따라 하며 만들 수 있는 튜토리얼 교재 국내 최초 로블록스 공식 교육자(Roblox Featured Eucator)로 선정된 저자 집필!"','1000','C:\Image\1-1.jfif');
INSERT INTO book.product VALUES('A2001','영화/게임/웹툰/애니메이션의 컨셉 아트를 위한 로호의 배경 일러스트 메이킹','고아라','30000','그래픽/디자인/멀티미디어','정보문화사','2021-06-07','"배경 일러스트레이터로서의 시작.프로페셔널 컨셉 아트 디자이너로 가는 길,『로호의 배경 일러스트 메이킹』이 쉽게 알려준다!"','1000','C:\Image\2-1.jfif');
INSERT INTO book.product VALUES('A3001','비트코인과 블록체인, 가상자산의 실체 2/e 암호화폐의 허상','이병욱','24000','네트워크/해킹/보안','에이콘출판사','2020-09-29','"『비트코인과 블록체인, 탐욕이 삼켜버린 기술』의 2판 출간! 대한민국학술원선정 2019 교육부 우수학술도서『블록체인 해설서』 저자 신간, 블록체인과 가상자산의 실체를 파헤쳤다!"','1000','C:\Image\3-1.jfif');
INSERT INTO book.product VALUES('A4001','Kotlin in Action 코틀린 컴파일러 개발자가 직접 알려주는 코틀린 언어 핵심','서드미트리 제메로프, 스베트라나 이사코바 저/오현석 역','36000','모바일 프로그래밍','에이콘출판사','2017-10-31','코틀린 언어를 개발한 젯브레인의 코틀린 컴파일러 개발자들이 직접 쓴 일종의 공식 서적','1000','C:\Image\4-1.jfif');

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

CREATE TABLE `delivery` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `nickName` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zipcode` varchar(5) DEFAULT NULL,
  `roadAddress` varchar(100) DEFAULT NULL,
  `jibunAddress` varchar(100) DEFAULT NULL,
  `detailAddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`seq`)
);