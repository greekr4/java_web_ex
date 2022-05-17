--시퀀스 생성
select * from tour_ccode a 
inner join tour_dcode b on substr(b.dcode,1,1) = a.ccode
order by dcode;


select * from tour_board;
select * from tour_view;
desc tour_board;


create SEQUENCE membernum_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
create SEQUENCE board_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
create SEQUENCE shop_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
create SEQUENCE shop_admin_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
create SEQUENCE img_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
drop SEQUENCE tour_seq;
create SEQUENCE tour_view_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
drop SEQUENCE tour_board_seq;
create SEQUENCE tour_board_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
create SEQUENCE tour_comment_seq START WITH 1 INCREMENT by 1 MAXVALUE 100000 MINVALUE 1 NOCACHE NOCYCLE;
select * from tour_board a
inner join tour_comment b on a.tour_board_num = b.
-- 회원
create table member (
member_id varchar(20) primary key,  --아이디
member_pw varchar(20) not null,     --비번
member_name varchar(20) not null,   --이름
member_pnum varchar(20),            --전화번호
member_adress varchar(50),          --주소
member_cash number(38) default 0,             --회원캐쉬
member_point number(38) default 0,            --회원포인트
member_grade number(10) default 1 not null,   --회원계급
member_num number(38) not null,      --회원번호
member_latest varchar(30)           --최근접속일
);

create table grade(
mgrade number primary key,
grade_value varchar(20) not null
);

insert into grade values(1,'일반회원');
insert into grade values(2,'우수회원');
insert into grade values(3,'VIP회원');
insert into grade values(4,'운영진');
insert into grade values(5,'최고관리자');
select * from grade;

-- 게시판
create table tour_board (
tour_board_num number(38) primary key,      --게시글번호
tour_board_tit varchar(50) not null,        --게시글제목
tour_board_detail varchar(2000) not null,    --게시글내용
tour_board_writer varchar(20) not null,     --작성자
tour_board_cdate date DEFAULT SYSDATE,       --작성일
tour_board_views number default 0,                    --조회수
tour_board_thumb number default 0,                    --추천수
tour_board_img1 varchar(50),                --이미지1 경로
tour_board_img2 varchar(50),                --이미지2 경로
tour_board_img3 varchar(50),                --이미지3 경로
tour_board_img4 varchar(50)                --이미지4 경로
TOUR_BOARD_ADRESS varchar(200);             --주소
TOUR_BOARD_TEL varchar(200);                --전화번호
);

desc tour_board;


-- 투어게시판
create table tour_view (
tour_id varchar (20) primary key,       --투어 코드
tour_num number not null,               --투어 번호
tour_name varchar (50) not null,        --투어 이름
tour_detail varchar (2000) not null,      --투어 설명
tour_img1 varchar(50),                     --이미지1 경로
tour_img2 varchar(50),                      --이미지2 경로
tour_img3 varchar(50),                     --이미지3 경로
tour_img4 varchar(50)                      --이미지4 경로
);
desc tour_view;
-- tour_id
-- (A011001)
-- A : 음식
-- B : 숙박
-- C : 쇼핑
-- D : 체험(액티비티)
-- E : 축제
-- F : 관광

-- A음식 - 11:한식 12:중식 13:양식 14:일식 15:분식 16:수산 17:축산 18:기타
-- B숙박 - 11:호텔 12:모텔 13:펜션 14:민박 15:게하 16:캠핑 17:기타
-- C쇼핑 - 11:시장 12:마트 13:백화점 14:지역특산물 15:기념품 16:기타
-- D체험 - 11:낚시 12:요트 13:수상레저 14:산악 15:기타
-- E축제 - 11:전통행사 12:음식행사 13:꽃행사 14:땅끝관련행사 15:기타
-- F관광 - 11:바다 12:강 13:섬 14:산 15:문화재 16:전망대


--코드 테이블 

--공통코드
create table tour_ccode(
ccode varchar(2) primary key,
ccode_res varchar(20)
);
--디테일코드
create table tour_dcode(
dcode varchar(10) primary key,
dcode_res varchar(20)
);

insert into tour_ccode values('A','음식');
insert into tour_ccode values('B','숙박');
insert into tour_ccode values('C','쇼핑');
insert into tour_ccode values('D','체험');
insert into tour_ccode values('E','축제');
insert into tour_ccode values('F','관광');
select * from tour_ccode;
insert into tour_dcode values('A11','한식');
insert into tour_dcode values('A12','중식');
insert into tour_dcode values('A13','양식');
insert into tour_dcode values('A14','일식');
insert into tour_dcode values('A15','분식');
insert into tour_dcode values('A16','수산');
insert into tour_dcode values('A17','축산');
insert into tour_dcode values('A18','기타');

insert into tour_dcode values('B11','호텔');
insert into tour_dcode values('B12','모텔');
insert into tour_dcode values('B13','펜션');
insert into tour_dcode values('B14','민박');
insert into tour_dcode values('B15','게스트하우스');
insert into tour_dcode values('B16','캠핑');
insert into tour_dcode values('B17','기타');

insert into tour_dcode values('C11','시장');
insert into tour_dcode values('C12','마트');
insert into tour_dcode values('C13','백화점');
insert into tour_dcode values('C14','지역특산물');
insert into tour_dcode values('C15','기념품');
insert into tour_dcode values('C16','기타');

insert into tour_dcode values('D11','낚시');
insert into tour_dcode values('D12','요트');
insert into tour_dcode values('D13','수상레저');
insert into tour_dcode values('D14','산악');
insert into tour_dcode values('D15','기타');

insert into tour_dcode values('E11','전통행사');
insert into tour_dcode values('E12','음식행사');
insert into tour_dcode values('E13','꽃행사');
insert into tour_dcode values('E14','땅끝관련행사');
insert into tour_dcode values('E15','기타');

insert into tour_dcode values('F11','바다');
insert into tour_dcode values('F12','강');
insert into tour_dcode values('F13','섬');
insert into tour_dcode values('F14','산');
insert into tour_dcode values('F15','문화재');
insert into tour_dcode values('F16','전망대');



select * from tour_dcode;




insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('A110001',tour_view_seq.nextval,'황칠오리백숙','몸에 힘을 주는 보양 음식 황칠오리백숙','./img/food/1.png','경로2','경로3','경로4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('B110002',tour_view_seq.nextval,'우수영호텔','트윈침대기준 6인 10만원 · 특실 2인1실 4만5천원 4인1실 5만5천원 ※ 1인추가 5천원','./img/house/1.png','경로2','경로3','경로4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('C150003',tour_view_seq.nextval,'해물밭에 노는 닭','황칠닭코스 A,B,   황칠약오리,   해신탕','./img/food/1.png','경로2','경로3','경로4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('D110004',tour_view_seq.nextval,'금호호','각종 어업자원 다수','./img/fishing/1.png','경로2','경로3','경로4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('E110005',tour_view_seq.nextval,'명량대첩축제','불멸의 명량! 호국의 울돌목!','./img/festival/1.png','경로2','경로3','경로4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('F130006',tour_view_seq.nextval,'죽도,증도(신비의 바닷길)','해남군 송지면 대죽리 마을 앞에는 죽도(대섬)와 증도(시루섬)의 두 개의 섬에 바닷길이 열린다.','./img/sum/1.png','경로2','경로3','경로4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('F130007',tour_view_seq.nextval,'무인도','무인도입니다..','./img/sum/1.png','경로2','경로3','경로4'
);


select * from tour_view;

--(이너조인) 대분류
select a.tour_id,a.tour_name, b.ccode_res from tour_view a
inner join tour_ccode b on substr(a.tour_id,1,1) = b.ccode order by a.tour_id;

--(이너조인) 소분류
select a.tour_id,a.tour_name, b.dcode_res from tour_view a
inner join tour_dcode b on substr(a.tour_id,1,3) = b.dcode order by a.tour_id;

--이용후기 ( 댓글 )
create table tour_comment (
tour_commnet_uninum number primary key,
tour_commnet_bnum number not null,
tour_commnet_detail varchar(200) not null,
tour_commnet_name varchar(20) not null,
tour_commnet_tdate varchar(30) not null,
tour_commnet_thumb number default 0
);
insert into tour_comment (tour_commnet_uninum,tour_commnet_bnum,tour_commnet_detail,tour_commnet_name,tour_commnet_tdate) values
(tour_comment_seq.nextval,1,'와 좋아요','회원1',TO_CHAR(sysdate,'YY-MM-DD HH24:MI'));
select * from tour_comment;
-- 쇼핑게시판
create table shop (
shop_num number(38) primary key,            --상품번호
shop_tit varchar(50) not null,              --상품제목
shop_detail varchar(2000) not null,          --상품디테일
shop_price number(38) not null,             --상품가격
shop_quantity number(38) not null,           --상품수량
shop_img1 varchar(50),                     --이미지1 경로
shop_img2 varchar(50),                      --이미지2 경로
shop_img3 varchar(50),                     --이미지3 경로
shop_img4 varchar(50)                      --이미지4 경로
);
desc shop;

-- 쇼핑관리
create table shop_admin (
shop_admin_num number(38) primary key,      --상품관리번호
shop_admin_snum number(38) not null,        --상품번호
shop_admin_orderer varchar(20) not null,    --주문자
shop_admin_quantity number(38) not null,    --주문수량
shop_admin_price number(38) not null,       --상품가격 (주문수량 * 상품가격)
shop_admin_rider varchar(20) not null       --배송상태
);
desc shop_admin;

-- 이미지 테이블
create table img (
filename varchar(200) primary key,
bno number not null,
regdate date DEFAULT sysdate
);
desc img;
insert into img (filename,bno) values (
'이미지경로입니다.',
IMG_SQE.nextval
);
select * from img;

-- 더미 데이터
insert into member values ('admin','1234','관리자','010-4191-1611','관리자집',1000000,10000,5,MEMBERNUM_SEQ.nextval);
insert into member values ('test1','1234','회원1','010-3333-1611','파주시 당동1로 12-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member values ('test2','1234','회원2','010-3333-1231','파주시 당동2로 13-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member values ('test3','4234','회원3','010-3533-1231','파주시 당동3로 15-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member values ('test4','6234','회원4','010-3383-1731','파주시 당동4로 17-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member (member_id,member_pw,member_name,member_pnum,member_adress,member_cash,member_point,member_grade,member_num) values ('test5','5234','회원5','010-3633-1831','파주시 당동5로 13-8',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member (member_id,member_pw,member_name,member_pnum,member_adress,member_cash,member_point,member_grade,member_num) values ('test6','4234','회원6','010-3633-1131','파주시 당동6로 13-8',0,0,1,MEMBERNUM_SEQ.nextval);

update member set member_latest= TO_CHAR(sysdate,'YY-MM-DD HH24:MI') where member_id='admin';
select * from member;

insert into tour_board (tour_board_num, tour_board_tit, tour_board_detail, tour_board_writer, tour_board_img1, tour_board_img2, tour_board_img3, tour_board_img4,tour_board_views,tour_board_thumb) values
(TOUR_BOARD_SEQ.nextval,'황칠오리백숙','닭 요리는 전국적으로 인기지만, 해남의 닭 코스요리는 특별한 감동을 주는 해남에서만 먹을 수 있는 맛이기 때문이다.','관리자','이미지경로1','이미지경로2','이미지경로3','이미지경로4',0,0);
insert into tour_board (tour_board_num, tour_board_tit, tour_board_detail, tour_board_writer, tour_board_img1, tour_board_img2, tour_board_img3, tour_board_img4,tour_board_views,tour_board_thumb) values
(TOUR_BOARD_SEQ.nextval,'우수영호텔','전라남도 해남군 문내면 우수영로 16-2 편안한 숙박','관리자','이미지경로1','이미지경로2','이미지경로3','이미지경로4',0,0);

select * from tour_view;
select * from tour_board;

insert into shop (shop_num, shop_tit, shop_detail, shop_price, shop_quantity, shop_img1, shop_img2, shop_img3, shop_img4) values
(shop_seq.nextval, '상품제목','상품내용',5000,10,'이미지경로1','이미지경로2','이미지경로3','이미지경로4');
insert into shop (shop_num, shop_tit, shop_detail, shop_price, shop_quantity, shop_img1, shop_img2, shop_img3, shop_img4) values
(shop_seq.nextval, '공룡기념품','공룡 모양의 피규어다',100000,100,'이미지경로1','이미지경로2','이미지경로3','이미지경로4');
insert into shop (shop_num, shop_tit, shop_detail, shop_price, shop_quantity, shop_img1, shop_img2, shop_img3, shop_img4) values
(shop_seq.nextval, '황칠오리백숙','몸에 힘을 주는 보양 음식 황칠오리백숙',500000,100,'이미지경로1','이미지경로2','이미지경로3','이미지경로4');
select * from shop;


insert into shop_admin values (TEST3_SEQ.nextval,1,'테스트주문자',1,10000,'배송전');
insert into shop_admin values (TEST3_SEQ.nextval,2,'테스트주문자2',2,20000,'배송전');
select * from shop_admin;



