--������ ����
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
-- ȸ��
create table member (
member_id varchar(20) primary key,  --���̵�
member_pw varchar(20) not null,     --���
member_name varchar(20) not null,   --�̸�
member_pnum varchar(20),            --��ȭ��ȣ
member_adress varchar(50),          --�ּ�
member_cash number(38) default 0,             --ȸ��ĳ��
member_point number(38) default 0,            --ȸ������Ʈ
member_grade number(10) default 1 not null,   --ȸ�����
member_num number(38) not null,      --ȸ����ȣ
member_latest varchar(30)           --�ֱ�������
);

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

-- �Խ���
create table tour_board (
tour_board_num number(38) primary key,      --�Խñ۹�ȣ
tour_board_tit varchar(50) not null,        --�Խñ�����
tour_board_detail varchar(2000) not null,    --�Խñ۳���
tour_board_writer varchar(20) not null,     --�ۼ���
tour_board_cdate date DEFAULT SYSDATE,       --�ۼ���
tour_board_views number default 0,                    --��ȸ��
tour_board_thumb number default 0,                    --��õ��
tour_board_img1 varchar(50),                --�̹���1 ���
tour_board_img2 varchar(50),                --�̹���2 ���
tour_board_img3 varchar(50),                --�̹���3 ���
tour_board_img4 varchar(50)                --�̹���4 ���
TOUR_BOARD_ADRESS varchar(200);             --�ּ�
TOUR_BOARD_TEL varchar(200);                --��ȭ��ȣ
);

desc tour_board;


-- ����Խ���
create table tour_view (
tour_id varchar (20) primary key,       --���� �ڵ�
tour_num number not null,               --���� ��ȣ
tour_name varchar (50) not null,        --���� �̸�
tour_detail varchar (2000) not null,      --���� ����
tour_img1 varchar(50),                     --�̹���1 ���
tour_img2 varchar(50),                      --�̹���2 ���
tour_img3 varchar(50),                     --�̹���3 ���
tour_img4 varchar(50)                      --�̹���4 ���
);
desc tour_view;
-- tour_id
-- (A011001)
-- A : ����
-- B : ����
-- C : ����
-- D : ü��(��Ƽ��Ƽ)
-- E : ����
-- F : ����

-- A���� - 11:�ѽ� 12:�߽� 13:��� 14:�Ͻ� 15:�н� 16:���� 17:��� 18:��Ÿ
-- B���� - 11:ȣ�� 12:���� 13:��� 14:�ι� 15:���� 16:ķ�� 17:��Ÿ
-- C���� - 11:���� 12:��Ʈ 13:��ȭ�� 14:����Ư�깰 15:���ǰ 16:��Ÿ
-- Dü�� - 11:���� 12:��Ʈ 13:������ 14:��� 15:��Ÿ
-- E���� - 11:������� 12:������� 13:����� 14:����������� 15:��Ÿ
-- F���� - 11:�ٴ� 12:�� 13:�� 14:�� 15:��ȭ�� 16:������


--�ڵ� ���̺� 

--�����ڵ�
create table tour_ccode(
ccode varchar(2) primary key,
ccode_res varchar(20)
);
--�������ڵ�
create table tour_dcode(
dcode varchar(10) primary key,
dcode_res varchar(20)
);

insert into tour_ccode values('A','����');
insert into tour_ccode values('B','����');
insert into tour_ccode values('C','����');
insert into tour_ccode values('D','ü��');
insert into tour_ccode values('E','����');
insert into tour_ccode values('F','����');
select * from tour_ccode;
insert into tour_dcode values('A11','�ѽ�');
insert into tour_dcode values('A12','�߽�');
insert into tour_dcode values('A13','���');
insert into tour_dcode values('A14','�Ͻ�');
insert into tour_dcode values('A15','�н�');
insert into tour_dcode values('A16','����');
insert into tour_dcode values('A17','���');
insert into tour_dcode values('A18','��Ÿ');

insert into tour_dcode values('B11','ȣ��');
insert into tour_dcode values('B12','����');
insert into tour_dcode values('B13','���');
insert into tour_dcode values('B14','�ι�');
insert into tour_dcode values('B15','�Խ�Ʈ�Ͽ콺');
insert into tour_dcode values('B16','ķ��');
insert into tour_dcode values('B17','��Ÿ');

insert into tour_dcode values('C11','����');
insert into tour_dcode values('C12','��Ʈ');
insert into tour_dcode values('C13','��ȭ��');
insert into tour_dcode values('C14','����Ư�깰');
insert into tour_dcode values('C15','���ǰ');
insert into tour_dcode values('C16','��Ÿ');

insert into tour_dcode values('D11','����');
insert into tour_dcode values('D12','��Ʈ');
insert into tour_dcode values('D13','������');
insert into tour_dcode values('D14','���');
insert into tour_dcode values('D15','��Ÿ');

insert into tour_dcode values('E11','�������');
insert into tour_dcode values('E12','�������');
insert into tour_dcode values('E13','�����');
insert into tour_dcode values('E14','�����������');
insert into tour_dcode values('E15','��Ÿ');

insert into tour_dcode values('F11','�ٴ�');
insert into tour_dcode values('F12','��');
insert into tour_dcode values('F13','��');
insert into tour_dcode values('F14','��');
insert into tour_dcode values('F15','��ȭ��');
insert into tour_dcode values('F16','������');



select * from tour_dcode;




insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('A110001',tour_view_seq.nextval,'Ȳĥ�������','���� ���� �ִ� ���� ���� Ȳĥ�������','./img/food/1.png','���2','���3','���4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('B110002',tour_view_seq.nextval,'�����ȣ��','Ʈ��ħ����� 6�� 10���� �� Ư�� 2��1�� 4��5õ�� 4��1�� 5��5õ�� �� 1���߰� 5õ��','./img/house/1.png','���2','���3','���4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('C150003',tour_view_seq.nextval,'�ع��翡 ��� ��','Ȳĥ���ڽ� A,B,   Ȳĥ�����,   �ؽ���','./img/food/1.png','���2','���3','���4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('D110004',tour_view_seq.nextval,'��ȣȣ','���� ����ڿ� �ټ�','./img/fishing/1.png','���2','���3','���4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('E110005',tour_view_seq.nextval,'����ø����','�Ҹ��� ��! ȣ���� �ﵹ��!','./img/festival/1.png','���2','���3','���4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('F130006',tour_view_seq.nextval,'�׵�,����(�ź��� �ٴ��)','�س��� ������ ���׸� ���� �տ��� �׵�(�뼶)�� ����(�÷缶)�� �� ���� ���� �ٴ���� ������.','./img/sum/1.png','���2','���3','���4'
);
insert into tour_view (tour_id,tour_num,tour_name,tour_detail,tour_img1,tour_img2,tour_img3,tour_img4) values
('F130007',tour_view_seq.nextval,'���ε�','���ε��Դϴ�..','./img/sum/1.png','���2','���3','���4'
);


select * from tour_view;

--(�̳�����) ��з�
select a.tour_id,a.tour_name, b.ccode_res from tour_view a
inner join tour_ccode b on substr(a.tour_id,1,1) = b.ccode order by a.tour_id;

--(�̳�����) �Һз�
select a.tour_id,a.tour_name, b.dcode_res from tour_view a
inner join tour_dcode b on substr(a.tour_id,1,3) = b.dcode order by a.tour_id;

--�̿��ı� ( ��� )
create table tour_comment (
tour_commnet_uninum number primary key,
tour_commnet_bnum number not null,
tour_commnet_detail varchar(200) not null,
tour_commnet_name varchar(20) not null,
tour_commnet_tdate varchar(30) not null,
tour_commnet_thumb number default 0
);
insert into tour_comment (tour_commnet_uninum,tour_commnet_bnum,tour_commnet_detail,tour_commnet_name,tour_commnet_tdate) values
(tour_comment_seq.nextval,1,'�� ���ƿ�','ȸ��1',TO_CHAR(sysdate,'YY-MM-DD HH24:MI'));
select * from tour_comment;
-- ���ΰԽ���
create table shop (
shop_num number(38) primary key,            --��ǰ��ȣ
shop_tit varchar(50) not null,              --��ǰ����
shop_detail varchar(2000) not null,          --��ǰ������
shop_price number(38) not null,             --��ǰ����
shop_quantity number(38) not null,           --��ǰ����
shop_img1 varchar(50),                     --�̹���1 ���
shop_img2 varchar(50),                      --�̹���2 ���
shop_img3 varchar(50),                     --�̹���3 ���
shop_img4 varchar(50)                      --�̹���4 ���
);
desc shop;

-- ���ΰ���
create table shop_admin (
shop_admin_num number(38) primary key,      --��ǰ������ȣ
shop_admin_snum number(38) not null,        --��ǰ��ȣ
shop_admin_orderer varchar(20) not null,    --�ֹ���
shop_admin_quantity number(38) not null,    --�ֹ�����
shop_admin_price number(38) not null,       --��ǰ���� (�ֹ����� * ��ǰ����)
shop_admin_rider varchar(20) not null       --��ۻ���
);
desc shop_admin;

-- �̹��� ���̺�
create table img (
filename varchar(200) primary key,
bno number not null,
regdate date DEFAULT sysdate
);
desc img;
insert into img (filename,bno) values (
'�̹�������Դϴ�.',
IMG_SQE.nextval
);
select * from img;

-- ���� ������
insert into member values ('admin','1234','������','010-4191-1611','��������',1000000,10000,5,MEMBERNUM_SEQ.nextval);
insert into member values ('test1','1234','ȸ��1','010-3333-1611','���ֽ� �絿1�� 12-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member values ('test2','1234','ȸ��2','010-3333-1231','���ֽ� �絿2�� 13-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member values ('test3','4234','ȸ��3','010-3533-1231','���ֽ� �絿3�� 15-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member values ('test4','6234','ȸ��4','010-3383-1731','���ֽ� �絿4�� 17-1',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member (member_id,member_pw,member_name,member_pnum,member_adress,member_cash,member_point,member_grade,member_num) values ('test5','5234','ȸ��5','010-3633-1831','���ֽ� �絿5�� 13-8',0,0,1,MEMBERNUM_SEQ.nextval);
insert into member (member_id,member_pw,member_name,member_pnum,member_adress,member_cash,member_point,member_grade,member_num) values ('test6','4234','ȸ��6','010-3633-1131','���ֽ� �絿6�� 13-8',0,0,1,MEMBERNUM_SEQ.nextval);

update member set member_latest= TO_CHAR(sysdate,'YY-MM-DD HH24:MI') where member_id='admin';
select * from member;

insert into tour_board (tour_board_num, tour_board_tit, tour_board_detail, tour_board_writer, tour_board_img1, tour_board_img2, tour_board_img3, tour_board_img4,tour_board_views,tour_board_thumb) values
(TOUR_BOARD_SEQ.nextval,'Ȳĥ�������','�� �丮�� ���������� �α�����, �س��� �� �ڽ��丮�� Ư���� ������ �ִ� �س������� ���� �� �ִ� ���̱� �����̴�.','������','�̹������1','�̹������2','�̹������3','�̹������4',0,0);
insert into tour_board (tour_board_num, tour_board_tit, tour_board_detail, tour_board_writer, tour_board_img1, tour_board_img2, tour_board_img3, tour_board_img4,tour_board_views,tour_board_thumb) values
(TOUR_BOARD_SEQ.nextval,'�����ȣ��','���󳲵� �س��� ������ ������� 16-2 ����� ����','������','�̹������1','�̹������2','�̹������3','�̹������4',0,0);

select * from tour_view;
select * from tour_board;

insert into shop (shop_num, shop_tit, shop_detail, shop_price, shop_quantity, shop_img1, shop_img2, shop_img3, shop_img4) values
(shop_seq.nextval, '��ǰ����','��ǰ����',5000,10,'�̹������1','�̹������2','�̹������3','�̹������4');
insert into shop (shop_num, shop_tit, shop_detail, shop_price, shop_quantity, shop_img1, shop_img2, shop_img3, shop_img4) values
(shop_seq.nextval, '������ǰ','���� ����� �ǱԾ��',100000,100,'�̹������1','�̹������2','�̹������3','�̹������4');
insert into shop (shop_num, shop_tit, shop_detail, shop_price, shop_quantity, shop_img1, shop_img2, shop_img3, shop_img4) values
(shop_seq.nextval, 'Ȳĥ�������','���� ���� �ִ� ���� ���� Ȳĥ�������',500000,100,'�̹������1','�̹������2','�̹������3','�̹������4');
select * from shop;


insert into shop_admin values (TEST3_SEQ.nextval,1,'�׽�Ʈ�ֹ���',1,10000,'�����');
insert into shop_admin values (TEST3_SEQ.nextval,2,'�׽�Ʈ�ֹ���2',2,20000,'�����');
select * from shop_admin;



