
-----------------회원테이블------------------

create table member (
member_id varchar(20) primary key,  --아이디
member_pw varchar(20) not null,     --비번
member_name varchar(20) not null,   --이름
member_pnum varchar(20),            --전화번호
member_adress varchar(50),          --주소
member_cash number(38) default 0,             --회원캐쉬
member_point number(38) default 0,            --회원포인트
member_grade number(10) default 1 not null,   --회원계급
member_num number(38) not null,         --회원번호
member_latest varchar(30)               --최근접속일
);

-----------------회원계급------------------
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

-----------------투어뷰---------------------

create table tour_view (
tour_id varchar (20) primary key,       --투어 코드
tour_num number not null,               --투어 번호
tour_name varchar (50) not null,        --투어 이름
tour_detail varchar (2000) not null,      --투어 설명
tour_adress varchar (200)               --투어 주소
tour_tel varchar(50)                    --투어 전화번호
tour_img1 varchar(50)                     --이미지1 경로
tour_img2 varchar(50),                      --이미지2 경로
tour_img3 varchar(50),                     --이미지3 경로
tour_img4 varchar(50)                      --이미지4 경로
);

-- tour_id
-- (A011001)
-- A : 자연관광
-- B : 관광명소
-- C : 문화재
-- D : 코스관광
-- E : 수련시설
-- F : 축제
-- G : 음식
-- H : 숙박
-- I : 쇼핑
-- J : 교통

-- A : 자연관광 - 11:산 12:등산/산책로 13:해수욕장
-- B : 관광명소 - 11:사찰 12:주거건물 13:박물관/전시관 14:해남 8경
-- C : 문화재 - 11:국가지정문화재 12:도지정문화재 13:유적건조물
-- D : 코스관광 - 11:일정별코스 12:권역별코스 13:이야기별코스 14:자전거코스
-- E : 수련시설 - 11:템플스테이 12:농어촌체험 13:생태체험
-- F : 축제 - 11:명량대첩축제 12:땅끝매화축제 13:흑석산철쭉제 14:땅끝해넘이해맞이축제 15:문화행사 16:기타행사 17:달마고도 힐링축제 18:해남 미남 축제
-- G : 음식 - 11:해남명물 8미 12:해남군 대표음식점 13:해남 제철 맛 14:해남 추천 음식 15:읍면별 음식점
-- H : 숙박 - 11:호텔/리조트 12:모텔/여관 13:민박/펜션 14:휴양림/캠핑카 15:유스호스텔 16:황토나라테마촌
-- I : 쇼핑 - 11:해남브랜드 12:해남특산물 13:해남미소 14:전통시장현황 15:주조장
-- J : 교통 - 11:농어촌버스 12:직행직통버스 13:고속버스 14:우수영여객선 터미널 15:땅끝여객선 16:열차항공

---------------------------------------------------------------------------------------
--공통코드
create table tour_ccode(
ccode varchar(2) primary key,
ccode_res varchar(50)
);
--디테일코드
create table tour_dcode(
dcode varchar(10) primary key,
dcode_res varchar(50)
);
------------------------------------인서트문---------------------------------------------------

insert into tour_ccode values('A','자연관광');
insert into tour_ccode values('B','관광명소');
insert into tour_ccode values('C','문화재');
insert into tour_ccode values('D','코스관광');
insert into tour_ccode values('E','수련시설');
insert into tour_ccode values('F','축제');
insert into tour_ccode values('G','음식');
insert into tour_ccode values('H','숙박');
insert into tour_ccode values('I','쇼핑');
insert into tour_ccode values('J','교통');


insert into tour_dcode values('A11','산');
insert into tour_dcode values('A12','등산/산책로');
insert into tour_dcode values('A13','해수욕장');

insert into tour_dcode values('B11','사찰');
insert into tour_dcode values('B12','주거건물');
insert into tour_dcode values('B13','박물관/전시관');
insert into tour_dcode values('B14','해남 8경');

insert into tour_dcode values('C11','국가지정문화재');
insert into tour_dcode values('C12','도지정문화재');
insert into tour_dcode values('C13','유적건조물');

insert into tour_dcode values('D11','일정별코스');
insert into tour_dcode values('D12','권역별코스');
insert into tour_dcode values('D13','이야기별코스');
insert into tour_dcode values('D14','자전거코스');

insert into tour_dcode values('E11','템플스테이');
insert into tour_dcode values('E12','농어촌체험');
insert into tour_dcode values('E13','생테체험');

insert into tour_dcode values('F11','명량대첩축제');
insert into tour_dcode values('F12','땅끝매화축제');
insert into tour_dcode values('F13','흑석산철쭉제');
insert into tour_dcode values('F14','땅끝해넘이해맞이축제');
insert into tour_dcode values('F15','문화행사');
insert into tour_dcode values('F16','기타행사');
insert into tour_dcode values('F17','달마고도 힐링축제');
insert into tour_dcode values('F18','해남 미남 축제');

insert into tour_dcode values('G11','해남명물 8미');
insert into tour_dcode values('G12','해남군 대표음식점');
insert into tour_dcode values('G13','해남 제철 맛');
insert into tour_dcode values('G14','해남 추천 음식');
insert into tour_dcode values('G15','읍면별 음식점');

insert into tour_dcode values('H11','호텔/리조트');
insert into tour_dcode values('H12','모텔/여관');
insert into tour_dcode values('H13','민박/펜션');
insert into tour_dcode values('H14','휴양림/캠핑카');
insert into tour_dcode values('H15','유스호스텔');
insert into tour_dcode values('H16','황토나라테마촌');

insert into tour_dcode values('I11','해남브랜드');
insert into tour_dcode values('I12','해남특산물');
insert into tour_dcode values('I13','해남미소');
insert into tour_dcode values('I14','전통시장현황');
insert into tour_dcode values('I15','주조장');

insert into tour_dcode values('J11','농어촌버스');
insert into tour_dcode values('J12','직행직통버스');
insert into tour_dcode values('J13','고속버스');
insert into tour_dcode values('J14','우수영여객선 터미널');
insert into tour_dcode values('J15','땅끝여객선');
insert into tour_dcode values('J16','열차항공');

---------------------------------------------------------



