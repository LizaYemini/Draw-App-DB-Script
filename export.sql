--------------------------------------------------------
--  File created - Thursday-October-01-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DOCUMENTMARKERS
--------------------------------------------------------

  CREATE TABLE "CTL"."DOCUMENTMARKERS" 
   (	"DOCID" VARCHAR2(255 BYTE), 
	"MARKERID" VARCHAR2(255 BYTE), 
	"MARKERTYPE" VARCHAR2(255 BYTE), 
	"FORCOLOR" VARCHAR2(255 BYTE), 
	"BACKCOLOR" VARCHAR2(255 BYTE), 
	"USERID" VARCHAR2(255 BYTE), 
	"LOCATIONX" FLOAT(126), 
	"LOCATIONY" FLOAT(126), 
	"WIDTH" FLOAT(126), 
	"HEIGHT" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DOCUMENTS
--------------------------------------------------------

  CREATE TABLE "CTL"."DOCUMENTS" 
   (	"OWNER" VARCHAR2(255 BYTE), 
	"IMAGEURL" VARCHAR2(255 BYTE), 
	"DOCUMENTNAME" VARCHAR2(255 BYTE), 
	"DOCID" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHAREDDOCUMENTS
--------------------------------------------------------

  CREATE TABLE "CTL"."SHAREDDOCUMENTS" 
   (	"DOCID" VARCHAR2(255 BYTE), 
	"USERID" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "CTL"."USERS" 
   (	"USERID" VARCHAR2(255 BYTE), 
	"USERNAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into CTL.DOCUMENTMARKERS
SET DEFINE OFF;
Insert into CTL.DOCUMENTMARKERS (DOCID,MARKERID,MARKERTYPE,FORCOLOR,BACKCOLOR,USERID,LOCATIONX,LOCATIONY,WIDTH,HEIGHT) values ('421751D7DFDD159217F2AEA55C91672A','27C7A193B80A1E1499BDA0146281898E','Ellipse','white','black','Liza091995@hotmail.com',153.93351800554,98.2681382620434,30.8698060941828,28.3689744267768);
Insert into CTL.DOCUMENTMARKERS (DOCID,MARKERID,MARKERTYPE,FORCOLOR,BACKCOLOR,USERID,LOCATIONX,LOCATIONY,WIDTH,HEIGHT) values ('E244E2E2C9B00810D0838A3C59E3D21C','31DBE8A9FCB16A6FA29D0B31FF88C256','Ellipse','white','black','Aharon@gmail.com',256.173913043478,204.03477677055,75.8260869565217,61.4260864257813);
REM INSERTING into CTL.DOCUMENTS
SET DEFINE OFF;
Insert into CTL.DOCUMENTS (OWNER,IMAGEURL,DOCUMENTNAME,DOCID) values ('Aharon@gmail.com','assets/3.jpg','AharonDoc','E244E2E2C9B00810D0838A3C59E3D21C');
Insert into CTL.DOCUMENTS (OWNER,IMAGEURL,DOCUMENTNAME,DOCID) values ('Try@hotmail.com','assets/3.jpg','TryDoc','21F4E5BE29BCD900B53C4B1A0170852A');
Insert into CTL.DOCUMENTS (OWNER,IMAGEURL,DOCUMENTNAME,DOCID) values ('Liza091995@hotmail.com','assets/3.jpg','Liza 13:30','421751D7DFDD159217F2AEA55C91672A');
Insert into CTL.DOCUMENTS (OWNER,IMAGEURL,DOCUMENTNAME,DOCID) values ('Liza091995@hotmail.com','assets/4.jpg','AA','3F558898BEDE55D2F6F2C454AA6D2774');
Insert into CTL.DOCUMENTS (OWNER,IMAGEURL,DOCUMENTNAME,DOCID) values ('Liza091995@hotmail.com','assets/3.jpg','new doc','404DDAF0F28596DF40BFFB05A240EDEF');
REM INSERTING into CTL.SHAREDDOCUMENTS
SET DEFINE OFF;
Insert into CTL.SHAREDDOCUMENTS (DOCID,USERID) values ('E244E2E2C9B00810D0838A3C59E3D21C','Try@hotmail.com');
Insert into CTL.SHAREDDOCUMENTS (DOCID,USERID) values ('E244E2E2C9B00810D0838A3C59E3D21C','Liza091995@hotmail.com');
Insert into CTL.SHAREDDOCUMENTS (DOCID,USERID) values ('421751D7DFDD159217F2AEA55C91672A','Aharon@gmail.com');
Insert into CTL.SHAREDDOCUMENTS (DOCID,USERID) values ('421751D7DFDD159217F2AEA55C91672A','Try@hotmail.com');
REM INSERTING into CTL.USERS
SET DEFINE OFF;
Insert into CTL.USERS (USERID,USERNAME) values ('Liza091995@hotmail.com','Liza');
Insert into CTL.USERS (USERID,USERNAME) values ('Try@hotmail.com','Try');
Insert into CTL.USERS (USERID,USERNAME) values ('Aharon@gmail.com','Aharon');
--------------------------------------------------------
--  DDL for Procedure ADDDOCUMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."ADDDOCUMENT" 
    (
        OWNERID IN VARCHAR2,
        IMAGEURL IN VARCHAR2, 
        DOCUMENTNAME IN VARCHAR2,
        ID IN VARCHAR2,
        retval OUT SYS_REFCURSOR 
    ) AS
        BEGIN
            INSERT INTO DOCUMENTS
            VALUES (OWNERID, IMAGEURL, DOCUMENTNAME, ID);
            OPEN retval FOR
            SELECT * FROM DOCUMENTS WHERE DOCID like ID;
END ADDDOCUMENT;

/
--------------------------------------------------------
--  DDL for Procedure CREATEMARKER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."CREATEMARKER" 
    (
        DOCID IN VARCHAR2,
        OUTMARKERID IN VARCHAR2,
        MARKERTYPE IN VARCHAR2,
        FORCOLOR IN VARCHAR2,
        BACKCOLOR IN VARCHAR2,
        USERID IN VARCHAR2,
        LOCATIONX IN INTEGER,
        LOCATIONY IN INTEGER,
        WIDTH IN INTEGER,
        HEIGHT IN INTEGER,
        retval OUT SYS_REFCURSOR 
    ) AS
        BEGIN
            INSERT INTO DOCUMENTMARKERS
            VALUES (DOCID, OUTMARKERID, MARKERTYPE,  FORCOLOR, BACKCOLOR, USERID,LOCATIONX, LOCATIONY, WIDTH, HEIGHT);
            OPEN retval FOR
            SELECT * FROM DOCUMENTMARKERS WHERE MARKERID like OUTMARKERID;
END CREATEMARKER;

/
--------------------------------------------------------
--  DDL for Procedure CREATESHARE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."CREATESHARE" 
    (
        DOC IN VARCHAR2,
        USER IN VARCHAR2,
        retval OUT SYS_REFCURSOR 
    ) AS
        BEGIN
            INSERT INTO SHAREDDOCUMENTS
            VALUES (DOC, USER);
            OPEN retval FOR
            SELECT * FROM SHAREDDOCUMENTS WHERE DOCID like DOC;
END CREATESHARE;

/
--------------------------------------------------------
--  DDL for Procedure CREATEUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."CREATEUSER" 
    (
       ID IN VARCHAR2 
      , NAME IN VARCHAR2,
      retval OUT SYS_REFCURSOR 
    ) AS
        BEGIN
           
            INSERT INTO users
            VALUES      ( ID,
                          NAME);
             OPEN retval FOR 
            SELECT * FROM USERS WHERE UserID like ID;       
END CREATEUSER;

/
--------------------------------------------------------
--  DDL for Procedure GETALLUSERS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."GETALLUSERS" 
(
  retval OUT SYS_REFCURSOR 
  
) AS 
BEGIN
    OPEN retval FOR 
    SELECT * FROM USERS;
END GetAllUsers;

/
--------------------------------------------------------
--  DDL for Procedure GETDOCBYDOCID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."GETDOCBYDOCID" 
(
  ID IN VARCHAR2 ,
  retval OUT SYS_REFCURSOR 
  
) AS 
BEGIN
    OPEN retval FOR 
    SELECT * FROM DOCUMENTS WHERE DOCID like ID;
END GETDOCBYDOCID;

/
--------------------------------------------------------
--  DDL for Procedure GETDOCSBYOWNERID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."GETDOCSBYOWNERID" 
(
  ID IN VARCHAR2 ,
  retval OUT SYS_REFCURSOR 
  
) AS 
BEGIN
    OPEN retval FOR 
    SELECT * FROM DOCUMENTS WHERE OWNER like ID;
END GETDOCSBYOWNERID;

/
--------------------------------------------------------
--  DDL for Procedure GETMARKERS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."GETMARKERS" 
(
  ID IN VARCHAR2 ,
  retval OUT SYS_REFCURSOR 
  
) AS 
BEGIN
    OPEN retval FOR 
    SELECT * FROM DOCUMENTMARKERS WHERE DOCID like ID;
END GETMARKERS;

/
--------------------------------------------------------
--  DDL for Procedure GETSHAREBYDOCID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."GETSHAREBYDOCID" 
(
  ID IN VARCHAR2 ,
  retval OUT SYS_REFCURSOR 
  
) AS 
BEGIN
    OPEN retval FOR 
    SELECT * FROM SHAREDDOCUMENTS WHERE DOCID like ID;
END GETSHAREBYDOCID;

/
--------------------------------------------------------
--  DDL for Procedure GETSHAREBYUSERID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."GETSHAREBYUSERID" 
(
  ID IN VARCHAR2 ,
  retval OUT SYS_REFCURSOR 
  
) AS 
BEGIN
    OPEN retval FOR 
    SELECT * FROM SHAREDDOCUMENTS WHERE USERID like ID;
END GETSHAREBYUSERID;

/
--------------------------------------------------------
--  DDL for Procedure GETUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."GETUSER" 
(
  ID IN VARCHAR2 ,
  retval OUT SYS_REFCURSOR 
  
) AS 
BEGIN
    OPEN retval FOR 
    SELECT * FROM USERS WHERE UserID like ID;
END GetUser;

/
--------------------------------------------------------
--  DDL for Procedure REMOVEDOCUMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."REMOVEDOCUMENT" 
    (
        ID IN VARCHAR2,
        retval OUT SYS_REFCURSOR 
    ) AS 
        BEGIN
            DELETE FROM DOCUMENTS
            WHERE docid = ID;
            OPEN retval FOR
            SELECT * FROM DOCUMENTS WHERE DOCID like ID;
END REMOVEDOCUMENT;

/
--------------------------------------------------------
--  DDL for Procedure REMOVEMARKER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."REMOVEMARKER" 
    (
        ID IN VARCHAR2,
        retval OUT SYS_REFCURSOR 
    ) AS 
        BEGIN
            DELETE FROM DOCUMENTMARKERS
            WHERE MARKERID = ID;
            OPEN retval FOR
            SELECT * FROM DOCUMENTMARKERS WHERE MARKERID like ID;
END REMOVEMARKER;

/
--------------------------------------------------------
--  DDL for Procedure REMOVESHARE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."REMOVESHARE" 
    (
        DOC IN VARCHAR2,
        USER IN VARCHAR2,
        retval OUT SYS_REFCURSOR 
    ) AS 
        BEGIN
            DELETE FROM SHAREDDOCUMENTS
            WHERE docid = DOC and userid = USER;
            OPEN retval FOR
            SELECT * FROM SHAREDDOCUMENTS WHERE DOCID like DOC;
END REMOVESHARE;

/
--------------------------------------------------------
--  DDL for Procedure REMOVEUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."REMOVEUSER" 
(
  ID IN VARCHAR2
) AS 
BEGIN
    DELETE FROM Users WHERE UserID like ID;
END REMOVEUSER;

/
--------------------------------------------------------
--  DDL for Procedure UPDATEDOCUMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."UPDATEDOCUMENT" 
    (
        OWNERn IN VARCHAR2,
        IMAGEURLn IN VARCHAR2, 
        DOCUMENTNAMEn IN VARCHAR2,
        IDn IN VARCHAR2,
        retval OUT SYS_REFCURSOR 
    ) AS
        BEGIN
            UPDATE DOCUMENTS
            SET DocumentName = DOCUMENTNAMEn, ImageUrl = IMAGEURLn, Owner = Ownern
            WHERE DocID = IDn;
            OPEN retval FOR
            SELECT * FROM DOCUMENTS WHERE DOCID like IDn;
END UPDATEDOCUMENT;

/
--------------------------------------------------------
--  DDL for Procedure UPDATEMARKER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "CTL"."UPDATEMARKER" 
    (
        DOCIDn IN VARCHAR2,
        MARKERIDn IN VARCHAR2,
        MARKERTYPEn IN VARCHAR2,
        FORCOLORn IN VARCHAR2,
        BACKCOLORn IN VARCHAR2,
        USERIDn IN VARCHAR2,
        LOCATIONXn IN INTEGER,
        LOCATIONYn IN INTEGER,
        WIDTHn IN INTEGER,
        HEIGHTn IN INTEGER,
        retval OUT SYS_REFCURSOR 
    ) AS
        BEGIN
            UPDATE DOCUMENTMARKERS
            SET DocId = DOCIDn, MarkerType = MARKERTYPEn, ForColor = FORCOLORn, BackColor = BACKCOLORn, 
                UserId = UserIdn, LocationX = LocationXn, LocationY = LocationYn, Width = WIDTHn, Height = HEIGHTn
            WHERE MarkerId = MARKERIDn;
            OPEN retval FOR
            SELECT * FROM DOCUMENTMARKERS WHERE MARKERID like MARKERIDn;
END UPDATEMARKER;

/
--------------------------------------------------------
--  Constraints for Table DOCUMENTMARKERS
--------------------------------------------------------

  ALTER TABLE "CTL"."DOCUMENTMARKERS" MODIFY ("MARKERTYPE" NOT NULL ENABLE);
  ALTER TABLE "CTL"."DOCUMENTMARKERS" ADD PRIMARY KEY ("MARKERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "CTL"."DOCUMENTS" MODIFY ("OWNER" NOT NULL ENABLE);
  ALTER TABLE "CTL"."DOCUMENTS" ADD CONSTRAINT "PK_DOCUMENTS" PRIMARY KEY ("DOCID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "CTL"."USERS" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "CTL"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "CTL"."USERS" ADD CHECK (UserID like '%_@__%.__%') ENABLE;
  ALTER TABLE "CTL"."USERS" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCUMENTMARKERS
--------------------------------------------------------

  ALTER TABLE "CTL"."DOCUMENTMARKERS" ADD FOREIGN KEY ("DOCID")
	  REFERENCES "CTL"."DOCUMENTS" ("DOCID") ENABLE;
  ALTER TABLE "CTL"."DOCUMENTMARKERS" ADD FOREIGN KEY ("USERID")
	  REFERENCES "CTL"."USERS" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "CTL"."DOCUMENTS" ADD FOREIGN KEY ("OWNER")
	  REFERENCES "CTL"."USERS" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SHAREDDOCUMENTS
--------------------------------------------------------

  ALTER TABLE "CTL"."SHAREDDOCUMENTS" ADD FOREIGN KEY ("DOCID")
	  REFERENCES "CTL"."DOCUMENTS" ("DOCID") ENABLE;
  ALTER TABLE "CTL"."SHAREDDOCUMENTS" ADD FOREIGN KEY ("USERID")
	  REFERENCES "CTL"."USERS" ("USERID") ENABLE;
