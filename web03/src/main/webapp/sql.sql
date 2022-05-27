select * from shop_member;
select * from shop_board;
select mno,mid,mpw,mname,mtel,maddress,memail,mnick,mcash,mpoint,mgrade,to_char(mjday,'yyyy-MM-dd HH24:mi:ss') as jday, to_char(mlatest,'yyyy-MM-dd HH24:mi:ss') as latest from shop_member order by mno desc;

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
