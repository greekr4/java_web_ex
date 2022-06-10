--------------------------------------------------------
--  파일이 생성됨 - 금요일-6월-10-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SHOP_ADMIN
--------------------------------------------------------

  CREATE TABLE "SHOP_ADMIN" 
   (	"SHOP_ADMIN_NUM" NUMBER(38,0), 
	"SHOP_ADMIN_SNUM" NUMBER(38,0), 
	"SHOP_ADMIN_ORDERER" VARCHAR2(20), 
	"SHOP_ADMIN_QUANTITY" NUMBER(38,0), 
	"SHOP_ADMIN_PRICE" NUMBER(38,0), 
	"SHOP_ADMIN_RIDER" VARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_BOARD
--------------------------------------------------------

  CREATE TABLE "SHOP_BOARD" 
   (	"NO" NUMBER, 
	"TIT" VARCHAR2(200), 
	"CON" VARCHAR2(2000), 
	"WRITER" VARCHAR2(200), 
	"REGDATE" DATE DEFAULT sysdate, 
	"VIEWED" NUMBER DEFAULT 0, 
	"THUMB" NUMBER DEFAULT 0, 
	"LOCK_POST" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_CCODE
--------------------------------------------------------

  CREATE TABLE "SHOP_CCODE" 
   (	"CCODE" VARCHAR2(20), 
	"CCODE_RES" VARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_CHAT
--------------------------------------------------------

  CREATE TABLE "SHOP_CHAT" 
   (	"CNO" NUMBER, 
	"CDETAIL" VARCHAR2(100), 
	"SENDID" VARCHAR2(100), 
	"REQID" VARCHAR2(100), 
	"CDATE" DATE, 
	"ANSWER_VAL" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_COMMENT
--------------------------------------------------------

  CREATE TABLE "SHOP_COMMENT" 
   (	"C_SEQ" NUMBER, 
	"GCODE" VARCHAR2(2000), 
	"USER_ID" VARCHAR2(200), 
	"CDETAIL" VARCHAR2(2000), 
	"THUMB" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_DCODE
--------------------------------------------------------

  CREATE TABLE "SHOP_DCODE" 
   (	"DCODE" VARCHAR2(20), 
	"DCODE_RES" VARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_MEMBER
--------------------------------------------------------

  CREATE TABLE "SHOP_MEMBER" 
   (	"MNO" NUMBER, 
	"MID" VARCHAR2(100), 
	"MPW" VARCHAR2(2000), 
	"MNAME" VARCHAR2(20), 
	"MTEL" VARCHAR2(50), 
	"MADDRESS" VARCHAR2(200), 
	"MEMAIL" VARCHAR2(100), 
	"MNICK" VARCHAR2(50), 
	"MCASH" NUMBER DEFAULT 0, 
	"MPOINT" NUMBER DEFAULT 0, 
	"MGRADE" NUMBER DEFAULT 1, 
	"MJDAY" DATE DEFAULT sysdate, 
	"MLATEST" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_ORDER
--------------------------------------------------------

  CREATE TABLE "SHOP_ORDER" 
   (	"ORDER_SEQ" NUMBER, 
	"ORDER_STATE" NUMBER, 
	"ORDER_PAY_STATE" NUMBER, 
	"ORDER_NO" NUMBER, 
	"DELIVERY_USER_NAME" VARCHAR2(20), 
	"DELIVERY_CELLPHONE" VARCHAR2(15), 
	"DELIVERY_ZIP_CODE" VARCHAR2(50), 
	"DELIVERY_ADDRESS" VARCHAR2(200), 
	"DELIVERY_ADDRESS_DETAILS" VARCHAR2(200), 
	"ORDER_EMAIL" VARCHAR2(200), 
	"USER_ID" VARCHAR2(40), 
	"GTOTAL" NUMBER, 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOP_ORDER_LINE
--------------------------------------------------------

  CREATE TABLE "SHOP_ORDER_LINE" 
   (	"ORDER_LINE_SEQ" NUMBER, 
	"ORDER_NO" NUMBER, 
	"GCODE" VARCHAR2(40), 
	"GQTY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GOODS
--------------------------------------------------------

  CREATE TABLE "GOODS" 
   (	"GCODE" VARCHAR2(2000), 
	"GNO" NUMBER, 
	"GNAME" VARCHAR2(200), 
	"GDETAIL" VARCHAR2(1000), 
	"GIMAGE" VARCHAR2(2000), 
	"GPRICE" NUMBER, 
	"GAMOUNT" NUMBER, 
	"GOPTION" VARCHAR2(200) DEFAULT 1, 
	"GOPTION2" VARCHAR2(200), 
	"GSIZE" VARCHAR2(200)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BASKET
--------------------------------------------------------

  CREATE TABLE "BASKET" 
   (	"BNO" NUMBER, 
	"GCODE" VARCHAR2(1000), 
	"BAMOUNT" NUMBER DEFAULT 1, 
	"USERID" VARCHAR2(200), 
	"BDATE" VARCHAR2(200) DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SHOP_ADMIN
SET DEFINE OFF;
Insert into SHOP_ADMIN (SHOP_ADMIN_NUM,SHOP_ADMIN_SNUM,SHOP_ADMIN_ORDERER,SHOP_ADMIN_QUANTITY,SHOP_ADMIN_PRICE,SHOP_ADMIN_RIDER) values (1,1,'테스트주문자',1,10000,'배송전');
Insert into SHOP_ADMIN (SHOP_ADMIN_NUM,SHOP_ADMIN_SNUM,SHOP_ADMIN_ORDERER,SHOP_ADMIN_QUANTITY,SHOP_ADMIN_PRICE,SHOP_ADMIN_RIDER) values (2,2,'테스트주문자2',2,20000,'배송전');
REM INSERTING into SHOP_BOARD
SET DEFINE OFF;
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (3,'123','213','123',to_date('22/05/23','RR/MM/DD'),0,0,123);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (5,'한글','테스트','글쓴이',to_date('22/05/23','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (6,'123','213','123',to_date('22/05/23','RR/MM/DD'),0,0,123);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (14,'퍼가요~','퍼가여~','111',to_date('22/06/02','RR/MM/DD'),0,0,2);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (8,'aaa','aaa','zzz',to_date('22/05/24','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (10,'제목','내용','작성자',to_date('22/05/24','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (12,'1113355','113','113',to_date('22/05/25','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (13,'제목','내용','작성자',to_date('22/05/25','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (7,'ㅋㅋㅋ','ㅋㅋㅋ','ㅋㅋ',to_date('22/05/23','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (1,'제목1','내용1','작성자',to_date('22/05/23','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (2,'제목2','내용2','작성자',to_date('22/05/23','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (9,'제목','내용','작성자',to_date('22/05/24','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (11,'aaazz','aaazz','aaa',to_date('22/05/25','RR/MM/DD'),0,0,1);
Insert into SHOP_BOARD (NO,TIT,CON,WRITER,REGDATE,VIEWED,THUMB,LOCK_POST) values (15,'개잘하네','test','test',to_date('22/06/09','RR/MM/DD'),0,0,1);
REM INSERTING into SHOP_CCODE
SET DEFINE OFF;
Insert into SHOP_CCODE (CCODE,CCODE_RES) values ('A','루어·미끼');
Insert into SHOP_CCODE (CCODE,CCODE_RES) values ('B','바늘·훅');
Insert into SHOP_CCODE (CCODE,CCODE_RES) values ('C','루어낚시대');
Insert into SHOP_CCODE (CCODE,CCODE_RES) values ('D','릴');
Insert into SHOP_CCODE (CCODE,CCODE_RES) values ('E','기타');
REM INSERTING into SHOP_CHAT
SET DEFINE OFF;
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (22,'zzz','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (23,'gd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (86,'123','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (87,'gd','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (88,'1132321','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (89,'zz','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (90,'321312321','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (91,'zzz','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (92,'gd','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (93,'굿','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (94,'오 ㅋㅋ','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (95,'재영이새기야','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (96,'재영이 바보','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (97,'이거로채팅하자','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (1,'ㅎㅇㅎㅇ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (2,'ㅇㅇㅇ','admin',null,to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (5,'ㅎㅇㅎㅇ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (6,'ㅋㅋㅋ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (9,'ss','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (12,'dd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (13,'gdgd','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (14,'gdgd','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (15,'gdgd','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (16,'gdgdgd','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (17,'gdgd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (18,'ddgd','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (19,'dd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (20,'dd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (21,'dd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (24,'123213131232313','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (25,'123213123213','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (26,'zzzzzzzzzzz','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (27,'gdgd','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (28,'오 ㅋㅋ','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (29,'재영아','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (30,'ㅋㅋㅋㅋㅋㅋㅋ','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (31,'굿','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (32,'관리자꼐너ㅜㅁ어지럽네','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (33,'재영이 바보','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (34,'ㅇㅈ','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (39,null,'admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (40,'??',null,'admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (54,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (55,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (56,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (57,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (58,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (59,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (60,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (61,'ㅎㅇㅎㅇ','admin','1',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (62,'ㅎㅇ','admin','1',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (63,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (64,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (65,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (66,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (67,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (68,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (69,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (70,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (71,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (72,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (73,'ㅋㅋㅋ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (75,'gg','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (76,'zz','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (77,'ddd','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (78,'fff','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (79,'z','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (80,'zz','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (81,'안녕하세요','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (82,'123123',null,'admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (98,'ㅋㅋㅋㅋㅋㅋ','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (99,'힘들었다','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (100,'개꿀','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (101,'ㅋㅋ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (102,'6','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (103,'ㅋㅋㅋ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (106,'ㅋㅋㅋ','admin',null,to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (107,'ㅇㅇ','admin',null,to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (108,'ㅇㅇ','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (109,'ㅎㅇ','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (110,'dd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (111,'dd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (112,'gd','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (113,'야','admin','1234',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (114,'자신과의채팅','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (115,'ㅋㅋ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (116,'채팅',null,'admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (137,'월요일 12시 집 갈예정','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (138,'너도채팅하나만들어','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (139,'재밋다','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (140,'우리팀 저땜에 늦게 갈 예정','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (141,'ㄱㅊ','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (142,'내팀아님','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (143,'ㅋㅋㅋㅋㅋ','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (7,'안녕하세요??','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (35,'zzz','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (36,'ddd','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (37,'재영이 ㅄ','admin','kiki',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (38,'ㅋㅋㅋㅋㅋㅋㅋㅇㅈ','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (41,'dddddddddddddd?','1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (42,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (43,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (44,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (45,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (46,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (47,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (48,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (49,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (50,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (51,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (52,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (53,null,'1','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (74,'yy','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (83,'12312321','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (84,'1231231','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (85,'1212312','kiki','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (104,'ddd','1234','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (117,'s','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (118,null,'jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (119,'ㅎㅇ','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (120,'들림?','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (121,'보여요','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (122,'들리냐고','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (123,'굿','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (124,'아 예','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (125,'굿','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (126,'굿이라고','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (127,'화면깜빡거리는거 맘에 안든다','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (128,'ㅇㅈ','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (129,'?','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (130,'해결해','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (131,'빨리','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (132,'엌','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (133,'크','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (134,'집에갈수있겟다','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (135,'부럽다','jang','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (136,'장성필화이팅!!!!!!!!!!!!!','admin','jang',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (3,null,'admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (4,'ㅎㅇㅎㅇ','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (8,'네 안녕하세요','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (10,'ss','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (11,'ss','admin','admin',to_date('22/06/10','RR/MM/DD'),0);
Insert into SHOP_CHAT (CNO,CDETAIL,SENDID,REQID,CDATE,ANSWER_VAL) values (105,'ㅋㅋ','admin',null,to_date('22/06/10','RR/MM/DD'),0);
REM INSERTING into SHOP_COMMENT
SET DEFINE OFF;
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (5,'A110004','admin','와좋아용',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (6,'A110004','admin','ㅋㅋㅋㅋㅋ',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (7,'A110004','admin','zzzzzzz',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (8,'A110004','admin','4점',4);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (9,'$A110004','admin','3점',3);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (10,'$A110004','admin','2점준다',2);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (11,'A110004','admin','3점준다',3);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (12,'A110004','admin','2점줄꺼다',2);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (13,'A110004','admin','1',1);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (1,'A110001','admin','너무 좋아요',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (2,'A140003','admin','zzz',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (3,'A110004','admin','와너무 좋아요 ㅜㅜ',0);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (14,'A110002','admin','zzzz',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (15,'A110002','admin','ccc',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (16,'A110002','admin','ddd',5);
Insert into SHOP_COMMENT (C_SEQ,GCODE,USER_ID,CDETAIL,THUMB) values (4,'A140003','admin','zzzzzzzz',5);
REM INSERTING into SHOP_DCODE
SET DEFINE OFF;
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('A11','웜');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('A12','하드베이트');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('A13','프로그');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('A14','스피너베이트');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('B11','지그헤드');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('B12','와이드갭');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('B13','언더헤드');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('C11','배스로드');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('C12','계류로드');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('C13','가물치로드');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('D11','스피닝릴');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('D12','베이트릴');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('E11','카본 루어라인');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('E12','모노 루어라인');
Insert into SHOP_DCODE (DCODE,DCODE_RES) values ('E13','하이브리드 라인');
REM INSERTING into SHOP_MEMBER
SET DEFINE OFF;
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (1,'admin','MTIzNA==','관리자','010-0000-0000','파주시','admin@admin.com','관리자1',1000,1125,5,to_date('22/05/24','RR/MM/DD'),to_date('22/06/10','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (2,'admin2','1234','관리자2','010-0000-0000','파주시','admin2@admin.com','관리자2',1000,1000,5,to_date('22/05/24','RR/MM/DD'),to_date('22/05/24','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (5,'admin3','MTIzNA==','관리자3','010-0000-0000','경기 성남시 분당구 대왕판교11로 477 상세주소 없음','admin3@naver.com','관리자31',0,0,1,to_date('22/05/24','RR/MM/DD'),to_date('22/05/24','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (9,'test10','MTIzNA==','김태균','010-4444-4444','경기 고양시 일산서구 일산로 485 123-444','test10@nate.com','김태균_테스트',0,0,1,to_date('22/05/24','RR/MM/DD'),to_date('22/05/24','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (4,'test','MTIzNA==','김태균','010-4191-1611','경기 파주시 문산읍 당동1로 12 403-705','greekr4@naver.com','테스트',0,15,1,to_date('22/05/24','RR/MM/DD'),to_date('22/06/10','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (7,'test3','MTIzNA==','1234','1234','충북 청주시 서원구 1순환로 627 1234','1234','1234',1,1,1,to_date('22/05/24','RR/MM/DD'),to_date('22/05/24','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (8,'test4','MTIzNA==','1234','1234','서울 송파구 가락로12길 5 1234','1234','1234',0,0,1,to_date('22/05/24','RR/MM/DD'),to_date('22/05/24','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (11,'sdfsdf','MTIzNA==','13123','213','서울 송파구 가락로12길 5 123123','44124','123123',214,214,1,to_date('22/05/25','RR/MM/DD'),to_date('22/05/25','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (12,'1234','MTIzNA==','1234','1234','경기 파주시 문산읍 개포래로 34 1234','1234','1234',0,35,1,to_date('22/05/31','RR/MM/DD'),to_date('22/06/10','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (14,'1','MQ==','1','1','경기 가평군 가평읍 광장로22번길 27-9 1','1','1',0,10,1,to_date('22/06/10','RR/MM/DD'),to_date('22/06/10','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (15,'kiki','MTIzNA==','김동','010-1111-1111','세종특별자치시 가름로 153 123123','kkk@naver.com','존멋',0,10,1,to_date('22/06/10','RR/MM/DD'),to_date('22/06/10','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (16,'jang','MTIzNA==','네','010111111','충북 청주시 서원구 1순환로 627 123','12433124124@naver.com','네',0,5,1,to_date('22/06/10','RR/MM/DD'),to_date('22/06/10','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (10,'aaaa1','MTIzNA==','1234','1234','충북 청주시 서원구 1순환로 627 1234','1234','1234zz',1234,1234,5,to_date('22/05/25','RR/MM/DD'),to_date('22/05/25','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (6,'test2','MTIzNA==','qweqwe','qweqwe','서울 강북구 4.19로11길 6 1234','1234','qweqwe',0,0,1,to_date('22/05/24','RR/MM/DD'),to_date('22/05/24','RR/MM/DD'));
Insert into SHOP_MEMBER (MNO,MID,MPW,MNAME,MTEL,MADDRESS,MEMAIL,MNICK,MCASH,MPOINT,MGRADE,MJDAY,MLATEST) values (13,'qwer','MTExMQ==','cccc','010-2345-2345','경기 파주시 가나무로 79 상세주소 없음','test10@nate.com','lcjh',0,5,1,to_date('22/06/09','RR/MM/DD'),to_date('22/06/09','RR/MM/DD'));
REM INSERTING into SHOP_ORDER
SET DEFINE OFF;
Insert into SHOP_ORDER (ORDER_SEQ,ORDER_STATE,ORDER_PAY_STATE,ORDER_NO,DELIVERY_USER_NAME,DELIVERY_CELLPHONE,DELIVERY_ZIP_CODE,DELIVERY_ADDRESS,DELIVERY_ADDRESS_DETAILS,ORDER_EMAIL,USER_ID,GTOTAL,REGDATE) values (1,4,3,1,'김태균','01041911611','10819','경기 파주시 문산읍 당동1로 11','403-705','greekr4@naver.com','admin',46000,to_date('22/06/08','RR/MM/DD'));
Insert into SHOP_ORDER (ORDER_SEQ,ORDER_STATE,ORDER_PAY_STATE,ORDER_NO,DELIVERY_USER_NAME,DELIVERY_CELLPHONE,DELIVERY_ZIP_CODE,DELIVERY_ADDRESS,DELIVERY_ADDRESS_DETAILS,ORDER_EMAIL,USER_ID,GTOTAL,REGDATE) values (2,1,3,2,'김태균','01028815555','10816','경기 파주시 문산읍 당동2로 1','1111','ggg@naver.com','admin',18600,to_date('22/06/08','RR/MM/DD'));
REM INSERTING into SHOP_ORDER_LINE
SET DEFINE OFF;
Insert into SHOP_ORDER_LINE (ORDER_LINE_SEQ,ORDER_NO,GCODE,GQTY) values (1,1,'A130002',1);
Insert into SHOP_ORDER_LINE (ORDER_LINE_SEQ,ORDER_NO,GCODE,GQTY) values (2,1,'A110003',5);
Insert into SHOP_ORDER_LINE (ORDER_LINE_SEQ,ORDER_NO,GCODE,GQTY) values (3,2,'A120002',1);
REM INSERTING into GOODS
SET DEFINE OFF;
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A110002',7,'하프루어 슬랩스틱','4.2인치│107mm 8.3g 웜이 미노우로 진화하다','0190250012613.jpg',7000,99,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A110001',6,'요시카와 야마데스 WD110 4인치 5.6g 소프트루어웜','4인치│110mm 5.6g 10PCS','019025000143.jpg',1600,99,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A110004',9,'레이드재팬 팻 휩 크로울러 5인치 소프트루어웜','소프트루어웜│5인치','019025001283.jpg',9600,0,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A120001',10,'다솔라이징 5 12g 탑워터 플로팅','탑워터│90mm 12g F','019026001023.jpg',3800,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A120002',11,'레이드재팬 레벨 쉐드 크랭크 하드베이트','크랭크│50.3mm 4.3g / 서스펜드','019026001666.jpg',18600,99,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A120003',12,'베이비페이스 BB180-SF 배스 스웜베이트','스윔베이트│180mm 80g / 슬로우 플로팅','019026001658.jpg',35200,90,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A130001',13,'하프루어 쁘록 17 프로그 플로팅 개구리루어','프로그│약60mm 14.5g / 플로팅','019034000114.jpg',8000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A130002',14,'워터맨 패들프로그 개구리루어 배스낚시','프로그│65mm 18.7g / 탑워터','019034000119.jpg',8000,99,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A140001',16,'하프루어 배스피나 롱캐스트 스피너베이트','스피너베이트│더블윌로우 3/8oz 1/2oz','019031000262.jpg',5000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A140002',17,'A3 스커트 슈더 스핀 스피너베이트 싱글윌로우','에이쓰리','019031000265.jpg',5500,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A140003',18,'스톡 스피너베이트 (STOCK SPINNER BAIT) 1/2oz','스톡','019031000215.jpg',1900,99,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('tk123',5,'태균이 1일 이용권','한정판매','charcol.png',500,1,'1','2','3');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A110003',8,'사와무라 원업쉐드 5인치 배스 소프트루어웜','5인치│127mm','019025000130.jpg',7600,94,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B110001',20,'캣츠크로우 지그헤드 (덕용) / 1/16~1/32oz','1/16, 1/4, 3/16, 1/8, 3/32, 1/24, 1/32','B110001.jpg',8000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('A130003',15,'스미스 글로사 아거스 프로그 개구리루어','프로그│79mm 18.5g','019034000125.jpg',16000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('D120001',19,'시마노 16 안타레스 DC (ANTARES DC `16)','▼시마노 스토어 아듀! 세일이벤트','037016000347.jpg',490000,10,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B110002',21,'캣츠크로우 424 라운드 에볼루션','424 Round Evolution','B110002.jpg',3000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B110003',22,'탑캐스팅 TIPPA 울트라 편탁지그헤드 벌크','1/4 티파','B110003.jpg',8000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B110004',23,'오너 에일리언 헤드 / JH-31','1/4 오너','B110004.jpg',3800,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B120001',24,'레토피아?웜훅34?블랙','와이드갭','B120001.jpg',1800,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B120002',25,'캣츠크로우 와이드갭 316 (WIDE GAP 316)','일반용량 / 316훅 8~6개','B120002.jpg',2200,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B120003',26,'가마가츠 웜훅 322 (SLIM STYLE)','와이드갭','B120003.jpg',4000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B120004',27,'다미끼 바이퍼 와이드갭','와이드갭','B120004.jpg',3600,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B130001',28,'레토피아 웜훅21 레드','언더훅','B130001.jpg',1800,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B130002',29,'피나 DSR132 (AERO DOWN SHOT) 피네스 스타일','언더훅','B130002.jpg',3500,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B130003',30,'캣츠크로우 히트 다운샷 레드 언더훅 루어바늘','언더훅','B130003.jpg',2200,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('B130004',31,'다미끼 바이퍼 와키 훅 (VIPER Wacky Hook)','언더훅 | 와키','B130004.jpg',3600,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C110001',32,'레이드재팬 글라디에이터 안티 베이트로드','배스로드','C110001.jpg',405000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C110002',33,'기간이즘 티탄하츠 UHC 에디션 / THH-B','배스로드','C110002.jpg',350000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C110003',34,'아부가르시아 타이탄2 쏘가리 배스 민물루어낚시대','배스로드 / 투피스 (2절로드)','C110003.jpg',44000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C110004',35,'JS 빅쏘드 N B3 2절 배스 민물 루어낚시대','배스로드','C110004.jpg',231000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C120001',36,'JS 어센스 T1 (ASENSE T1)','계류로드 / 투피스 (2절로드)','C120001.jpg',112000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C120002',37,'JS 쏘치 N M5 2절 쏘가리 계류로드','계류로드 / 투피스 (2절로드)','C120002.jpg',486000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C120003',38,'JS 쏘치 부스터 2017 계류로드','송어로드','C120003.jpg',65000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C130001',39,'NS 몬스틱-S (MONSTICK-S)','가물치로드 / 투피스 (2절로드)','C130001.jpg',306000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C130002',40,'NS 위드 프리에이커-Z (WEED FREAKER-Z)','가물치로드','C130002.jpg',198000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C130003',41,'아부가르시아 월드 몬스터 가물치 배스로드','가물치 / 배스로드','C130003.jpg',199200,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('C130004',42,'NS 몬스틱 (MONSTICK)','가물치 / 배스로드','C130004.jpg',427500,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('D110001',43,'(신형 22년도 입고제품) 다이와 20 레가리스 LT','스피닝릴','D110001.jpg',72000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('D110002',44,'다이와 19 레브로스 LT 스피닝릴','스피닝릴','D110002.jpg',52000,100,'1','0','0');
Insert into GOODS (GCODE,GNO,GNAME,GDETAIL,GIMAGE,GPRICE,GAMOUNT,GOPTION,GOPTION2,GSIZE) values ('D110003',45,'시마노 세도나 (SEDONA 17)','스피닝릴','D110003.jpg',54000,100,'1','0','0');
REM INSERTING into BASKET
SET DEFINE OFF;
Insert into BASKET (BNO,GCODE,BAMOUNT,USERID,BDATE) values (2,'A120002',7,'1234','22/06/07');
Insert into BASKET (BNO,GCODE,BAMOUNT,USERID,BDATE) values (3,'A110003',1,'1234','22/06/07');
Insert into BASKET (BNO,GCODE,BAMOUNT,USERID,BDATE) values (4,'A120003',1,'1234','22/06/07');
Insert into BASKET (BNO,GCODE,BAMOUNT,USERID,BDATE) values (5,'A120001',1,'1234','22/06/07');
Insert into BASKET (BNO,GCODE,BAMOUNT,USERID,BDATE) values (6,'A130002',1,'1234','22/06/07');
Insert into BASKET (BNO,GCODE,BAMOUNT,USERID,BDATE) values (7,'A130003',1,'1234','22/06/07');
Insert into BASKET (BNO,GCODE,BAMOUNT,USERID,BDATE) values (8,'D120001',1,'admin','22/06/09');
