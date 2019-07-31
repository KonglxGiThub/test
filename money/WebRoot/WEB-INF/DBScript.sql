CREATE SEQUENCE S_AB01;
CREATE SEQUENCE S_AB02;
CREATE SEQUENCE S_AB03;
CREATE SEQUENCE S_AB04;

/*==============================================================*/
/* Table: AB01                                                  */
/*==============================================================*/
create table AB01  (
   AAB001               NUMBER                          not null,
   AAB002               VARCHAR2(100 CHAR)              not null,
   AAB003               NUMBER(10,2)                    not null,
   AAB004               VARCHAR2(2 CHAR)                not null,
   AAB005               DATE                            not null,
   AAB006               DATE                            not null,
   AAB007               VARCHAR2(500 CHAR),
   constraint PK_AB01 primary key (AAB001)
);

/*==============================================================*/
/* Table: AB02                                                  */
/*==============================================================*/
create table AB02  (
   AAB201               NUMBER                          not null,
   AAB001               NUMBER                          not null,
   AAB202               NUMBER(10,2)                    not null,
   constraint PK_AB02 primary key (AAB201)
);

/*==============================================================*/
/* Table: AB03                                                  */
/*==============================================================*/
create table AB03  (
   AAB301               NUMBER                          not null,
   AAB001               NUMBER,
   AAB302               NUMBER(10,2)                    not null,
   constraint PK_AB03 primary key (AAB301)
);

/*==============================================================*/
/* Table: AB04                                                  */
/*==============================================================*/
create table AB04  (
   AAB401               NUMBER                          not null,
   AAB001               NUMBER,
   AAB402               NUMBER(10,2)                    not null,
   constraint PK_AB04 primary key (AAB401)
);

alter table AB02
   add constraint FK_AB02_REFERENCE_AB01 foreign key (AAB001)
      references AB01 (AAB001);

alter table AB03
   add constraint FK_AB03_REFERENCE_AB01 foreign key (AAB001)
      references AB01 (AAB001);

alter table AB04
   add constraint FK_AB04_REFERENCE_AB01 foreign key (AAB001)
      references AB01 (AAB001);
      
      
      
INSERT INTO SYSCODE(FID,FNAME,FCODE,FVALUE,PFCODE)
VALUES(S_SYS.NEXTVAL,'AAB004','1','工资','0');
INSERT INTO SYSCODE(FID,FNAME,FCODE,FVALUE,PFCODE)
VALUES(S_SYS.NEXTVAL,'AAB004','2','奖金','0');
INSERT INTO SYSCODE(FID,FNAME,FCODE,FVALUE,PFCODE)
VALUES(S_SYS.NEXTVAL,'AAB004','3','其他收入','0');
COMMIT;
SELECT * FROM SYSCODE;


SELECT E.AAB001,E.AAB002,E.AAB003,TO_CHAR(E.AAB005,'YYYY-MM-DD') AAB005,
       A.FVALUE CNAAB004, B.AAB202,C.AAB302,D.AAB402   
  FROM SYSCODE A,AB02 B,AB03 C,AB04 D,AB01 E
 WHERE E.AAB004=A.FCODE AND A.FNAME='AAB004' 
   AND B.AAB001=E.AAB001
   AND C.AAB001=E.AAB001
   AND D.AAB001=E.AAB001
  ORDER BY E.AAB001 DESC       