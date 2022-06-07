select * from shop_member;
select * from shop_board;
select * from goods;
select * from BASKET;
select * from Shop_ccode;
select * from shop_dcode;
select * from shop_ccode,shop_dcode
delete from DB_ACCESS
select count(*) as cnt from goods where gcode like '%B11%'
select count(*) from goods
select mno,mid,mpw,mname,mtel,maddress,memail,mnick,mcash,mpoint,mgrade,to_char(mjday,'yyyy-MM-dd HH24:mi:ss') as jday, to_char(mlatest,'yyyy-MM-dd HH24:mi:ss') as latest from shop_member order by mno desc;
select * from payment;
select * from shop_comment;

insert into shop_comment values(1,'A110001','admin','너무 좋아요',5);


CREATE TABLE db_access (
  no number primary key,
  request_uri varchar(100),
  query_string varchar(200),
  remote_address varchar(30),
  server_name varchar(60),
  server_port varchar(10),
  locale varchar(20),
  browser varchar(200),
  referer varchar(255),
  session_id varchar(80),
  user_id varchar(20),
  response_time number,
  reg_date date default sysdate
);



create table shop_board (
no number primary key,
tit varchar2(200) not null,
con varchar2(2000) not null,
writer varchar(200) not null,
regdate date default sysdate,
viewed number default 0,
thumb number default 0,
lock_post number default 1
);

insert into shop_board values(
1,
'제목1',
'내용1',
'작성자',
sysdate,
0,
0,
1
);

insert into shop_board values(
(select nvl(max(no),0)+1 from shop_board),
'제목2',
'내용2',
'작성자',
sysdate,
0,
0,
1
);

select * from shop_board;

--------------------------------------------------------------------------------
drop table shop_member;
create table shop_member(
mno number,
mid varchar2(100) not null primary key,
mpw varchar2(2000) not null,
mname varchar2(20) not null,
mtel varchar2(50) not null,
maddress varchar2(200) not null,
memail varchar2(100) not null,
mnick varchar2(50) not null,
mcash number default 0,
mpoint number default 0,
mgrade number default 1,
mjday date default sysdate,
mlatest date default sysdate
);

insert into shop_member values(
1,
'admin',
'1234',
'관리자',
'010-0000-0000',
'파주시',
'admin@admin.com',
'관리자',
1000,
1000,
5,
sysdate,
sysdate
);

insert into shop_member values(
(select nvl(max(mno),0)+1 from shop_member),
'admin2',
'1234',
'관리자2',
'010-0000-0000',
'파주시',
'admin2@admin.com',
'관리자2',
1000,
1000,
5,
sysdate,
sysdate
);

select * from shop_member;

desc shop_member;
commit;


update shop_member set mpoint=mpoint+10 where mid='admin';
update shop_member set mpw='MTIzNA==' where mid='admin';



create table goods(
gcode varchar2(2000) primary key,			--상품코드
gno number not null,						--상품번호
gname varchar2(200) not null,				--상품이름
gdetail varchar2(1000) not null,			--상품설명
gimage varchar2(2000),						--상품이미지
gprice number not null,						--상품가격
gamount number not null,					--상품수량
goption varchar2(200) default 1,			--상품옵션1
goption2 varchar2(200),						--상품옵션2
gsize varchar2(200)							--상품사이즈
);

select * from goods;
insert into goods values(
'A110001',
1,
'루어',
'5인치/5g',
'./image/1.png',
5000,
10,
1,
0,
0
);

insert into goods values(
'A110002',
(select nvl(max(gno),0)+1 from goods),
'루어',
'5인치/5g',
'./image/1.png',
5000,
10,
1,
0,
0
);

select * from goods;
select * from goods where gcode='A110001' order by gno desc;

update goods set 
gname = 'a',
gdetail = 'b',
gimage = 'c',
gprice = 100,
gamount = 10,
goption = '1',
goption2 = '0',
gsize = '0'
where gno = 1;


delete from goods where gno = 2;

select * from goods order by gno desc
drop table basket
create table basket(
bno number primary key,
gcode varchar2(1000) not null,
bamount number default 1,
userid varchar2(200) not null,
bdate varchar2(200) default sysdate
);


select * from basket;
insert into basket values(
(select nvl(max(bno),0)+1 from basket),
'A110001',
'admin',
sysdate
)


select a.bno, a.gcode, a.bamount , a.userid, a.bdate, b.gname, b.gimage, b.gprice from basket a inner join goods b on a.gcode = b.gcode;

select a.bno, a.gcode, a.bamount , a.userid, a.bdate, b.gname, b.gimage, b.gprice from basket a inner join goods b on a.gcode = b.gcode where userid ='admin' order by a.bno desc


create table shop_ccode (ccode varchar2(20), ccode_res varchar(50));
create table shop_dcode (dcode varchar2(20), dcode_res varchar(50));

--A	루어/미끼
--B	바늘/훅
--C	루어낚시대
--D	릴
--E	기타


--A -------- 	11 : 웜
--				12 : 하드베이트
--				13 : 프로그
--				14 : 스피너베이트
			
--B -------- 	11 : 지그헤드
--				12 : 와이드갭
--				13 : 언더헤드
			
--C --------	11 : 배스로드
--				12 : 계류로드
--				13 : 가물치로드
			
--D --------	11 : 스피닝릴
--				12 : 베이트릴

--E --------	11 : 카본 루어라인
--				12 : 모노 루어라인
--				13 : 하이브리드 라인

insert into shop_ccode values('A','루어·미끼');
insert into shop_ccode values('B','바늘·훅');
insert into shop_ccode values('C','루어낚시대');
insert into shop_ccode values('D','릴');
insert into shop_ccode values('E','기타');

insert into shop_dcode values('A11','웜');
insert into shop_dcode values('A12','하드베이트');
insert into shop_dcode values('A13','프로그');
insert into shop_dcode values('A14','스피너베이트');
insert into shop_dcode values('B11','지그헤드');
insert into shop_dcode values('B12','와이드갭');
insert into shop_dcode values('B13','언더헤드');
insert into shop_dcode values('C11','배스로드');
insert into shop_dcode values('C12','계류로드');
insert into shop_dcode values('C13','가물치로드');
insert into shop_dcode values('D11','스피닝릴');
insert into shop_dcode values('D12','베이트릴');
insert into shop_dcode values('E11','카본 루어라인');
insert into shop_dcode values('E12','모노 루어라인');
insert into shop_dcode values('E13','하이브리드 라인');

select * from shop_ccode;
select * from shop_dcode;

select * from goods a inner join shop_ccode b on substr(a.gcode,1,1) = b.ccode inner join shop_dcode c on substr(a.gcode,1,3) = c.dcode;
select * from goods a inner join shop_ccode b on substr(a.gcode,1,1) = b.ccode inner join shop_dcode c on substr(a.gcode,1,3) = c.dcode order by a.gno desc



create table payment(ono number primary key, -- 결제번호
    paytype varchar2(20),   -- 결제방식
    payno varchar2(30),     -- 결제카드번호
    money number,           -- 결제금액
    sdate date,             -- 결제일
    gcode varchar2(2000),   -- 상품코드
    amount number,          -- 수량
    userid varchar2(20),    -- 사용자아이디
	rname varchar2(30),     -- 수신자명
    tel varchar2(20),       -- 수신자전화번호
    addr1 varchar2(200),    -- 수신자 기본주소
    addr2 varchar2(100),    -- 수신자 상세주소
    postcode varchar2(10),  -- 수신자 우편번호
    transno varchar2(50),   -- 배송코드
    transco varchar2(50),   -- 배송회사
    rstatus varchar2(20),   -- 수신상태
    rdate date,             -- 도착일
	memo varchar2(100)      -- 메모
);

insert into payment values(1,'계좌이체','1111-2222-3333-4444',5000,sysdate,'A110001',1,'admin','김태균','010-4191-1611','당동리','12-1','413-871','1','','승인전','','메모');
insert into payment values((select nvl(max(ono),0)+1 from payment),'계좌이체','1111-2222-3333-4444',5000,sysdate,'A110001',1,'admin','김태균','010-4191-1611','당동리','12-1','413-871','1','','승인전','','메모');


select count(*) as cnt from goods where gcode like 'A11%'

drop table shop_order
drop table shop_order_line

create table shop_order(
ORDER_SEQ number primary key,
ORDER_STATE number,
ORDER_PAY_STATE number,
ORDER_NO number,
DELIVERY_USER_NAME varchar2(20),
DELIVERY_CELLPHONE varchar2(15),
DELIVERY_ZIP_CODE varchar2(50),
DELIVERY_ADDRESS varchar2(200),
DELIVERY_ADDRESS_DETAILS varchar2(200),
ORDER_EMAIL varchar2(200),
user_id varchar2 (40),
gtotal number,
regdate date
)

create table shop_order_line(
order_line_seq number primary key,
order_no number,
gcode varchar2(40),
gqty number
);

insert into shop_order values(
1, --시퀸스
1,
1,
1, --주문번호
'김태균',
'01041911611',
'12345',
'경기도파주시당동1로',
'123-456',
'greekr3@greekr3.com',
'admin',
1000,
sysdate
)

insert into shop_order values(
(select nvl(max(ORDER_SEQ),0)+1 from shop_order), --시퀸스
1,
1,
(select nvl(max(ORDER_NO),0)+1 from shop_order), --주문번호 int ?
'김태균',
'01041911611',
'12345',
'경기도파주시당동1로',
'123-456',
'greekr3@greekr3.com',
'admin',
2000,
sysdate
)




insert into shop_order_line values(
(select nvl(max(order_line_seq),0)+1 from shop_order_line),
1,										-- 주문번호 int ?,
'A110001',
1
)


select * from shop_ccode;
select * from shop_dcode;

select * from shop_order
select * from shop_order_line


update shop_order set order_state = 4 where order_no = 2;


select a.*,b.gname,b.gprice from shop_order_line a
inner join goods b on a.gcode = b.gcode where a.order_no = 9;

delete from shop_order;
delete from shop_order_line;

create table shop_comment(
c_seq number primary key,
gcode varchar2(2000) not null,
user_id	varchar2(200) not null,
cdetail varchar2(2000) not null,
thumb number not null
);


select * from shop_order_line
update shop_member set mpoint=mpoint+ latest=sysdate where mid=?