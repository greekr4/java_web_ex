
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
member_latest varchar(30)               --�ֱ�������
);

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
tour_adress varchar (200)               --���� �ּ�
tour_tel varchar(50)                    --���� ��ȭ��ȣ
tour_img1 varchar(50)                     --�̹���1 ���
tour_img2 varchar(50),                      --�̹���2 ���
tour_img3 varchar(50),                     --�̹���3 ���
tour_img4 varchar(50)                      --�̹���4 ���
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

---------------------------------------------------------



