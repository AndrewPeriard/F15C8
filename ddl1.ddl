-- Generated by Oracle SQL Developer Data Modeler 4.1.1.888
--   at:        2015-11-18 14:32:36 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE F15C8_Approver
  (
    approver_id      INTEGER NOT NULL ,
    F15C8_Emp_emp_id INTEGER NOT NULL ,
    F15C8_RFE_rfe_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Approver ADD CONSTRAINT F15C8_Approver_PK PRIMARY KEY ( approver_id ) ;


CREATE TABLE F15C8_Auth
  (
    auth_id          INTEGER NOT NULL ,
    RIGHT            VARCHAR2 (10) ,
    F15C8_Emp_emp_id INTEGER NOT NULL ,
    F15C8_RFE_rfe_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Auth ADD CONSTRAINT F15C8_Auth_PK PRIMARY KEY ( auth_id ) ;


CREATE TABLE F15C8_Comment
  (
    comment_id         INTEGER NOT NULL ,
    comment_entry_date DATE NOT NULL ,
    comments           VARCHAR2 (4000) NOT NULL ,
    F15C8_Emp_emp_id   INTEGER NOT NULL ,
    F15C8_RFE_rfe_id   INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Comment ADD CONSTRAINT F15C8_Comment_PK PRIMARY KEY ( comment_id ) ;


CREATE TABLE F15C8_Contact
  (
    contact_id       INTEGER NOT NULL ,
    effective_date   DATE NOT NULL ,
    comments         VARCHAR2 (4000) ,
    F15C8_Emp_emp_id INTEGER NOT NULL ,
    F15C8_RFE_rfe_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Contact ADD CONSTRAINT F15C8_Contact_PK PRIMARY KEY ( contact_id ) ;


CREATE TABLE F15C8_Document
  (
    document_id      INTEGER NOT NULL ,
    F15C8_RFE_rfe_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Document ADD CONSTRAINT F15C8_Document_PK PRIMARY KEY ( document_id ) ;


CREATE TABLE F15C8_Emp
  (
    emp_id                      INTEGER NOT NULL ,
    emp_status                  VARCHAR2 (1) NOT NULL ,
    emp_name                    VARCHAR2 (30) NOT NULL ,
    emp_email                   VARCHAR2 (100) NOT NULL ,
    emp_office                  VARCHAR2 (12) NOT NULL ,
    emp_phone                   VARCHAR2 (8) NOT NULL ,
    status_eff_date             DATE NOT NULL ,
    system_admin_flag           VARCHAR2 (1) NOT NULL ,
    lab_director_flag           VARCHAR2 (1) NOT NULL ,
    exec_director_flag          VARCHAR2 (1) NOT NULL ,
    chairperson_flag            VARCHAR2 (1) NOT NULL ,
    F15C8_Lab_lab_id            INTEGER NOT NULL ,
    F15C8_RFE_RTCode_rfe_rtc_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Emp ADD CONSTRAINT F15C8_Emp_PK PRIMARY KEY ( emp_id ) ;


CREATE TABLE F15C8_Lab
  ( lab_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Lab ADD CONSTRAINT F15C8_Lab_PK PRIMARY KEY ( lab_id ) ;


CREATE TABLE F15C8_RFE
  (
    rfe_id                 INTEGER NOT NULL ,
    explanation            VARCHAR2 (4000) NOT NULL ,
    alt_protections        VARCHAR2 (4000) NOT NULL ,
    approval_review_date   DATE ,
    F15C8_Status_status_id INTEGER NOT NULL ,
    F15C8_Emp_emp_id       INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_RFE ADD CONSTRAINT F15C8_RFE_PK PRIMARY KEY ( rfe_id ) ;


CREATE TABLE F15C8_RFE_RTCode
  (
    rfe_rtc_id  INTEGER NOT NULL ,
    role_type   VARCHAR2 (30) NOT NULL ,
    description VARCHAR2 (500) NOT NULL ,
    rtc_num     INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_RFE_RTCode ADD CONSTRAINT F15C8_RFE_RTCode_PK PRIMARY KEY ( rfe_rtc_id ) ;


CREATE TABLE F15C8_RFE_SC
  (
    rfe_sc_id              INTEGER NOT NULL ,
    rfe_status             VARCHAR2 (30) NOT NULL ,
    description            VARCHAR2 (500) NOT NULL ,
    stat_code_num          INTEGER NOT NULL ,
    F15C8_Status_status_id INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX F15C8_RFE_Stat_C__IDX ON F15C8_RFE_SC
  (
    F15C8_Status_status_id ASC
  )
  ;
ALTER TABLE F15C8_RFE_SC ADD CONSTRAINT F15C8_RFE_SC_PK PRIMARY KEY ( rfe_sc_id ) ;


CREATE TABLE F15C8_Reviewer
  (
    reviewer_id      INTEGER NOT NULL ,
    F15C8_Emp_emp_id INTEGER NOT NULL ,
    F15C8_RFE_rfe_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Reviewer ADD CONSTRAINT F15C8_Reviewer_PK PRIMARY KEY ( reviewer_id ) ;


CREATE TABLE F15C8_Status
  (
    status_id              INTEGER NOT NULL ,
    status_eff_date        DATE NOT NULL ,
    F15C8_RFE_SC_rfe_sc_id INTEGER NOT NULL ,
    F15C8_RFE_rfe_id       INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Status ADD CONSTRAINT F15C8_Status_PK PRIMARY KEY ( status_id ) ;


CREATE TABLE F15C8_Task
  (
    task_id           INTEGER NOT NULL ,
    effective_date    DATE ,
    task_abbreviation VARCHAR2 (15) NOT NULL ,
    task_description  VARCHAR2 (4000) NOT NULL ,
    F15C8_Emp_emp_id  INTEGER NOT NULL ,
    F15C8_RFE_rfe_id  INTEGER NOT NULL
  ) ;
ALTER TABLE F15C8_Task ADD CONSTRAINT F15C8_Task_PK PRIMARY KEY ( task_id ) ;


ALTER TABLE F15C8_Approver ADD CONSTRAINT F15C8_Approver_F15C8_Emp_FK FOREIGN KEY ( F15C8_Emp_emp_id ) REFERENCES F15C8_Emp ( emp_id ) ;

ALTER TABLE F15C8_Approver ADD CONSTRAINT F15C8_Approver_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;

ALTER TABLE F15C8_Auth ADD CONSTRAINT F15C8_Auth_F15C8_Emp_FK FOREIGN KEY ( F15C8_Emp_emp_id ) REFERENCES F15C8_Emp ( emp_id ) ;

ALTER TABLE F15C8_Auth ADD CONSTRAINT F15C8_Auth_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;

ALTER TABLE F15C8_Comment ADD CONSTRAINT F15C8_Comment_F15C8_Emp_FK FOREIGN KEY ( F15C8_Emp_emp_id ) REFERENCES F15C8_Emp ( emp_id ) ;

ALTER TABLE F15C8_Comment ADD CONSTRAINT F15C8_Comment_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;

ALTER TABLE F15C8_Contact ADD CONSTRAINT F15C8_Contact_F15C8_Emp_FK FOREIGN KEY ( F15C8_Emp_emp_id ) REFERENCES F15C8_Emp ( emp_id ) ;

ALTER TABLE F15C8_Contact ADD CONSTRAINT F15C8_Contact_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;

ALTER TABLE F15C8_Document ADD CONSTRAINT F15C8_Document_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;

ALTER TABLE F15C8_Emp ADD CONSTRAINT F15C8_Emp_F15C8_Lab_FK FOREIGN KEY ( F15C8_Lab_lab_id ) REFERENCES F15C8_Lab ( lab_id ) ;

ALTER TABLE F15C8_Emp ADD CONSTRAINT F15C8_Emp_F15C8_RFE_RTCode_FK FOREIGN KEY ( F15C8_RFE_RTCode_rfe_rtc_id ) REFERENCES F15C8_RFE_RTCode ( rfe_rtc_id ) ;

ALTER TABLE F15C8_RFE ADD CONSTRAINT F15C8_RFE_F15C8_Emp_FK FOREIGN KEY ( F15C8_Emp_emp_id ) REFERENCES F15C8_Emp ( emp_id ) ;

ALTER TABLE F15C8_RFE ADD CONSTRAINT F15C8_RFE_F15C8_Status_FK FOREIGN KEY ( F15C8_Status_status_id ) REFERENCES F15C8_Status ( status_id ) ;

ALTER TABLE F15C8_RFE_SC ADD CONSTRAINT F15C8_RFE_SC_F15C8_Status_FK FOREIGN KEY ( F15C8_Status_status_id ) REFERENCES F15C8_Status ( status_id ) ;

ALTER TABLE F15C8_Reviewer ADD CONSTRAINT F15C8_Reviewer_F15C8_Emp_FK FOREIGN KEY ( F15C8_Emp_emp_id ) REFERENCES F15C8_Emp ( emp_id ) ;

ALTER TABLE F15C8_Reviewer ADD CONSTRAINT F15C8_Reviewer_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;

ALTER TABLE F15C8_Status ADD CONSTRAINT F15C8_Status_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;

ALTER TABLE F15C8_Status ADD CONSTRAINT F15C8_Status_F15C8_RFE_SC_FK FOREIGN KEY ( F15C8_RFE_SC_rfe_sc_id ) REFERENCES F15C8_RFE_SC ( rfe_sc_id ) ;

ALTER TABLE F15C8_Task ADD CONSTRAINT F15C8_Task_F15C8_Emp_FK FOREIGN KEY ( F15C8_Emp_emp_id ) REFERENCES F15C8_Emp ( emp_id ) ;

ALTER TABLE F15C8_Task ADD CONSTRAINT F15C8_Task_F15C8_RFE_FK FOREIGN KEY ( F15C8_RFE_rfe_id ) REFERENCES F15C8_RFE ( rfe_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             1
-- ALTER TABLE                             33
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
