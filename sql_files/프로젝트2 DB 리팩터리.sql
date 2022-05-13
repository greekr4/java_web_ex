--������ ����


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


-----------------ȸ�����̺�------------------

create table member (
member_id varchar(20) primary key,  --���̵�
member_pw varchar(20) not null,     --���
member_name varchar(20) not null,   --�̸�
member_pnum varchar(20),            --��ȭ��ȣ
member_adress varchar(50),          --�ּ�
member_cash number(38) default 0,             --ȸ��ĳ��
member_point number(38) default 0,            --ȸ������Ʈ
member_grade number(10) default 1 not null,   --ȸ�����
member_num number(38) not null,         --ȸ����ȣ
member_latest varchar(30) default 'new'              --�ֱ�������
);

--ȸ������ �μ�Ʈ--
insert into member (member_id,member_pw,member_name,member_pnum,member_adress,member_num) values
('admin','1234','������','010-0000-0000','������ �ּ�',MEMBERNUM_SEQ.nextval);
insert into member (member_id,member_pw,member_name,member_pnum,member_adress,member_num) values
('testuser1','1234','ȫ�浿','010-0000-0000','���ֽ� �絿18�� 12-1',MEMBERNUM_SEQ.nextval);
insert into member (member_id,member_pw,member_name,member_pnum,member_adress,member_num) values
('testuser2','1234','��浿','010-0000-0000','�Ⱦ�� ���ķ� 1����',MEMBERNUM_SEQ.nextval);
select * from member;
commit;
-----------------ȸ�����------------------
create table grade(
mgrade number primary key,
grade_value varchar(20) not null
);

insert into grade values(1,'�Ϲ�ȸ��');
insert into grade values(2,'���ȸ��');
insert into grade values(3,'VIPȸ��');
insert into grade values(4,'���');
insert into grade values(5,'�ְ������');
select * from grade;

-----------------�����---------------------

create table tour_view (
tour_id varchar (20) primary key,       --���� �ڵ�
tour_num number not null,               --���� ��ȣ
tour_name varchar (50) not null,        --���� �̸�
tour_detail varchar (2000) not null,      --���� ����
tour_address varchar (200),        --���� �ּ�
tour_tel varchar(200),                    --���� ��ȭ��ȣ
tour_img1 varchar(200) default 'none',                     --�̹���1 ���
tour_img2 varchar(200) default 'none',                      --�̹���2 ���
tour_img3 varchar(200) default 'none',                     --�̹���3 ���
tour_img4 varchar(200) default 'none'                      --�̹���4 ���
);



-- tour_id
-- (A011001)
-- A : �ڿ�����
-- B : �������
-- C : ��ȭ��
-- D : �ڽ�����
-- E : ���ýü�
-- F : ����
-- G : ����
-- H : ����
-- I : ����
-- J : ����

-- A : �ڿ����� - 11:�� 12:���/��å�� 13:�ؼ�����
-- B : ������� - 11:���� 12:�ְŰǹ� 13:�ڹ���/���ð� 14:�س� 8��
-- C : ��ȭ�� - 11:����������ȭ�� 12:��������ȭ�� 13:����������
-- D : �ڽ����� - 11:�������ڽ� 12:�ǿ����ڽ� 13:�̾߱⺰�ڽ� 14:�������ڽ�
-- E : ���ýü� - 11:���ý����� 12:�����ü�� 13:����ü��
-- F : ���� - 11:����ø���� 12:������ȭ���� 13:�漮��ö���� 14:�����س����ظ������� 15:��ȭ��� 16:��Ÿ��� 17:�޸��� �������� 18:�س� �̳� ����
-- G : ���� - 11:�س��� 8�� 12:�س��� ��ǥ������ 13:�س� ��ö �� 14:�س� ��õ ���� 15:���麰 ������
-- H : ���� - 11:ȣ��/����Ʈ 12:����/���� 13:�ι�/��� 14:�޾縲/ķ��ī 15:����ȣ���� 16:Ȳ�䳪���׸���
-- I : ���� - 11:�س��귣�� 12:�س�Ư�깰 13:�س��̼� 14:���������Ȳ 15:������
-- J : ���� - 11:����̹��� 12:����������� 13:��ӹ��� 14:����������� �͹̳� 15:���������� 16:�����װ�


-----------------------------------�μ�Ʈ��---------------------------------------------

desc tour_view;
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_address,tour_tel,tour_img1,tour_img2) values
('A110001',tour_view_seq.nextval,
'�ݰ���',
'�س��� �ݰ����� ������� �������� ȭ������ ��� ���� �����(ؿ��ߣ)�� ��õ��� �س����� ��� ���� �����(ؿ��ߣ)�� �¿�� �Ŵ��� ���̴�.',
'���󳲵� �س��� �س��� �ظ�2�� 50 (���̼���)',
'�긲������ �긲��ȣ��: 061-530- 5427/ �����ȳ�: 061-532-1330',
'./img/A/A110001/0.png',
'���2'
);

insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_address,tour_tel,tour_img1) values
('A110002',tour_view_seq.nextval,
'���ۻ�',
'���ۻ��� �̸������� ǳ����� ��Ȳ�� ������ Ȱ¦ ��� ���� �� �� ������ ���� ���̶� �ؼ� ���ۻ��̶� �̸��� ��������.',
'���󳲵� �س��� ���ϸ� ������� 391 (������ ���Ϳ�)',
'�긲������ �긲��ȣ��: 061-530-5427 / �����ȳ�: 061-532-1330/ 061-530-5915',
'./img/A/A110002/0.png'
);

insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_address,tour_tel,tour_img1) values
('A110003',tour_view_seq.nextval,
'���λ�',
'���λ��� �س��� �ֳ��ܿ� ��ġ�� ������ ������ ���ڶ��� Ħ�� ���Ҵٴµ����� ���̸��� �����ƴ�.',
'���󳲵� �س��� ������ ���������� 60-28',
'�긲������ �긲��ȣ��: 061-530-5427/ �����ȳ�: 061-532-1330',
'./img/A/A110003/0.png'
);

----------------------��ϰ˻�----------------
select a.tour_id, b.ccode_res, c.dcode_res,a.tour_num,a.tour_name,a.tour_tel,a.tour_address,a.tour_img1 from tour_view a
inner join tour_ccode b on substr(a.tour_id,1,1) = b.ccode
inner join tour_dcode c on substr(a.tour_id,1,3) = c.dcode order by a.tour_id;

desc tour_ccode;
desc tour_dcode;
desc member;

alter table member add constraint (member_pw);

commit;
desc tour_view;
desc tour_board;
desc tour_comment;
desc member;
select * from tour_board;
select * from tour_view;

delete from tour_view where tour_num=6;
---------------------------------------------------------------------------------------
--�����ڵ�
create table tour_ccode(
ccode varchar(2) primary key,
ccode_res varchar(50)
);
--�������ڵ�
create table tour_dcode(
dcode varchar(10) primary key,
dcode_res varchar(50)
);
------------------------------------�μ�Ʈ��---------------------------------------------------

insert into tour_ccode values('A','�ڿ�����');
insert into tour_ccode values('B','�������');
insert into tour_ccode values('C','��ȭ��');
insert into tour_ccode values('D','�ڽ�����');
insert into tour_ccode values('E','���ýü�');
insert into tour_ccode values('F','����');
insert into tour_ccode values('G','����');
insert into tour_ccode values('H','����');
insert into tour_ccode values('I','����');
insert into tour_ccode values('J','����');


insert into tour_dcode values('A11','��');
insert into tour_dcode values('A12','���/��å��');
insert into tour_dcode values('A13','�ؼ�����');

insert into tour_dcode values('B11','����');
insert into tour_dcode values('B12','�ְŰǹ�');
insert into tour_dcode values('B13','�ڹ���/���ð�');
insert into tour_dcode values('B14','�س� 8��');

insert into tour_dcode values('C11','����������ȭ��');
insert into tour_dcode values('C12','��������ȭ��');
insert into tour_dcode values('C13','����������');

insert into tour_dcode values('D11','�������ڽ�');
insert into tour_dcode values('D12','�ǿ����ڽ�');
insert into tour_dcode values('D13','�̾߱⺰�ڽ�');
insert into tour_dcode values('D14','�������ڽ�');

insert into tour_dcode values('E11','���ý�����');
insert into tour_dcode values('E12','�����ü��');
insert into tour_dcode values('E13','����ü��');

insert into tour_dcode values('F11','����ø����');
insert into tour_dcode values('F12','������ȭ����');
insert into tour_dcode values('F13','�漮��ö����');
insert into tour_dcode values('F14','�����س����ظ�������');
insert into tour_dcode values('F15','��ȭ���');
insert into tour_dcode values('F16','��Ÿ���');
insert into tour_dcode values('F17','�޸��� ��������');
insert into tour_dcode values('F18','�س� �̳� ����');

insert into tour_dcode values('G11','�س��� 8��');
insert into tour_dcode values('G12','�س��� ��ǥ������');
insert into tour_dcode values('G13','�س� ��ö ��');
insert into tour_dcode values('G14','�س� ��õ ����');
insert into tour_dcode values('G15','���麰 ������');

insert into tour_dcode values('H11','ȣ��/����Ʈ');
insert into tour_dcode values('H12','����/����');
insert into tour_dcode values('H13','�ι�/���');
insert into tour_dcode values('H14','�޾縲/ķ��ī');
insert into tour_dcode values('H15','����ȣ����');
insert into tour_dcode values('H16','Ȳ�䳪���׸���');

insert into tour_dcode values('I11','�س��귣��');
insert into tour_dcode values('I12','�س�Ư�깰');
insert into tour_dcode values('I13','�س��̼�');
insert into tour_dcode values('I14','���������Ȳ');
insert into tour_dcode values('I15','������');

insert into tour_dcode values('J11','����̹���');
insert into tour_dcode values('J12','�����������');
insert into tour_dcode values('J13','��ӹ���');
insert into tour_dcode values('J14','����������� �͹̳�');
insert into tour_dcode values('J15','����������');
insert into tour_dcode values('J16','�����װ�');

select * from tour_ccode;
select * from tour_dcode;

---------------------------�̿��ı� ( ��� )-----------------------------
drop table tour_comment;
create table tour_comment (
tour_comment_uninum number primary key,
tour_comment_bnum number not null,
tour_comment_detail varchar(200) not null,
tour_comment_name varchar(20) not null,
tour_comment_tdate varchar(30) not null,
tour_comment_thumb number default 0
);
insert into tour_comment (tour_comment_uninum,tour_comment_bnum,tour_comment_detail,tour_comment_name,tour_comment_tdate) values
(tour_comment_seq.nextval,1,'�� ���ƿ�','ȸ��1',TO_CHAR(sysdate,'YY-MM-DD HH24:MI'));
select * from tour_comment;

---------------------------����Խ���-----------------------------
-- �Խ���
drop table tour_board;
create table tour_board (
tour_board_num number(38) primary key,      --�Խñ۹�ȣ
tour_board_pidno varchar(50) not null,           --����_view id
tour_board_tit varchar(100) not null,        --�Խñ�����
tour_board_detail varchar(2000) not null,    --�Խñ۳���
tour_board_writer varchar(50) not null,     --�ۼ���
tour_board_cdate date DEFAULT SYSDATE,       --�ۼ���
tour_board_views number default 0,                    --��ȸ��
tour_board_thumb number default 0,                    --��õ��
tour_board_img1 varchar(50),                --�̹���1 ���
tour_board_img2 varchar(50),                --�̹���2 ���
tour_board_img3 varchar(50),                --�̹���3 ���
tour_board_img4 varchar(50)                --�̹���4 ���
);

desc tour_board;
insert into tour_board (tour_board_num,tour_board_pidno ,tour_board_tit, tour_board_detail, tour_board_writer, tour_board_img1, tour_board_img2, tour_board_img3, tour_board_img4) values
(TOUR_BOARD_SEQ.nextval,
'A110001',
'�ݰ���',
'�س��� �ݰ����� ������� �������� ȭ������ ��� ���� �����(ؿ��ߣ)�� ��õ��� �س����� ��� ���� �����(ؿ��ߣ)�� �¿�� �Ŵ��� ���̴�.
���⼭ ����(ؿ��)�� ������ ū������ ���̴�. ū������ ���ڷ� ��(��-�ʹ�,����)�� �ϰ�, �븦 �Ϲ������� ���� ���츮�� �ؼ��� ���� �ִ�.  �ᱹ ����(ؿ��)�� ����(ؿ��)���� �ؼ��Ѵٸ� �س��� �ݰ����� ����(����)�� �ΰ��� �Ŵ����� ���̴� ���츮�� �̸��� �̾ ���ѿ� �ִ� �ݰ����� �ϸ���õ������ ��õ���̳� �� ���� �س��� �Ƹ��ٿ� ����̴�.  <��ó : �ѱ��� ��õ>',
'������',
'./img/',
'./img/',
'./img/',
'./img/'
);

insert into tour_board (tour_board_num,tour_board_pidno ,tour_board_tit, tour_board_detail, tour_board_writer, tour_board_img1, tour_board_img2, tour_board_img3, tour_board_img4) values
(TOUR_BOARD_SEQ.nextval,
'A110002',
'���ۻ�',
'���ۻ��� �̸������� ǳ����� ��Ȳ�� ������ Ȱ¦ ��� ���� �� �� ������ ���� ���̶� �ؼ� ���ۻ��̶� �̸��� ��������. ���ۻ��� �س��� ���� �����翡�� �ϵ������� ���� ���ϸ� ������ �� ���� ��Ȳõ���� �����Ÿ��� �� 10km�� ���� �ִ� ���̴�. ��Ȳ�� �Ӹ� �κп� �ش��ϴ� ������ �ְ������ �������� �κ��� �س� ������� �̾����� �ϸ��̸� ���������� ��õ �ҷ� ���ʿ��� ����� ������ �̾����� �ɼ��̴�.
���ۻ꿡 �̸��� �ϸ��� ������ �����ɼ��� ���� ���� ���� �ٵ��ذ� �Ѵ��� ������. �ϵ����� ������������ �ؾȼ��� ������ �̾��� Ȯ Ʈ�� �ٴ� ������ ������ ���� �� �ִ� ������ �ȴ�.',
'������',
'./img/A/A110002/0.png',
'./img/A/A110002/1.png',
'./img/A/A110002/2.png',
'./img/A/A110002/3.png'
);

insert into tour_board (tour_board_num,tour_board_pidno ,tour_board_tit, tour_board_detail, tour_board_writer, tour_board_img1, tour_board_img2, tour_board_img3, tour_board_img4) values
(TOUR_BOARD_SEQ.nextval,
'A110003',
'���λ�',
'���λ��� �س��� �ֳ��ܿ� ��ġ�� ������ ������ ���ڶ��� Ħ�� ���Ҵٴµ����� ���̸��� �����ƴ�.
�ϸ� ���ں����ε� �Ҹ��� ���λ��� ����� �س��� �ְ���� �η���(����ߣ��703m)�̴�.',
'������',
'./img/A/A110003/0.png',
'./img/A/A110003/1.png',
'./img/A/A110003/2.png',
'./img/A/A110003/3.png'
);
commit;

--������Ʈ
update tour_board set tour_board_img1 = './img/A/A110003/0.png' where tour_board_num=5;
update tour_board set tour_board_img2 = './img/A/A110003/1.png' where tour_board_num=5;
update tour_board set tour_board_img3 = './img/A/A110003/2.png' where tour_board_num=5;
update tour_board set tour_board_img4 = './img/A/A110003/3.png' where tour_board_num=5;

select * from tour_board;
alter table tour_view drop column tour_detail;
select * from tour_view;
desc tour_view;
desc tour_board;
desc tour_comment;
select * from tour_comment;
commit;