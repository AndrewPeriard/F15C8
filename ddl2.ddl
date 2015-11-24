DROP SEQUENCE F15C8_Approver_seq ; 
create sequence F15C8_Approver_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Approver_PK_trig 
; 

create or replace trigger F15C8_Approver_PK_trig 
before insert on F15C8_Approver
for each row 
begin 
select F15C8_Approver_seq.nextval into :new.approver_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Auth_seq ; 
create sequence F15C8_Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Auth_PK_trig 
; 

create or replace trigger F15C8_Auth_PK_trig 
before insert on F15C8_Auth
for each row 
begin 
select F15C8_Auth_seq.nextval into :new.auth_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Comment_seq ; 
create sequence F15C8_Comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Comment_PK_trig 
; 

create or replace trigger F15C8_Comment_PK_trig 
before insert on F15C8_Comment
for each row 
begin 
select F15C8_Comment_seq.nextval into :new.comment_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Contact_seq ; 
create sequence F15C8_Contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Contact_PK_trig 
; 

create or replace trigger F15C8_Contact_PK_trig 
before insert on F15C8_Contact
for each row 
begin 
select F15C8_Contact_seq.nextval into :new.contact_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Document_seq ; 
create sequence F15C8_Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Document_PK_trig 
; 

create or replace trigger F15C8_Document_PK_trig 
before insert on F15C8_Document
for each row 
begin 
select F15C8_Document_seq.nextval into :new.document_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Emp_seq ; 
create sequence F15C8_Emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Emp_PK_trig 
; 

create or replace trigger F15C8_Emp_PK_trig 
before insert on F15C8_Emp
for each row 
begin 
select F15C8_Emp_seq.nextval into :new.emp_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Lab_seq ; 
create sequence F15C8_Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Lab_PK_trig 
; 

create or replace trigger F15C8_Lab_PK_trig 
before insert on F15C8_Lab
for each row 
begin 
select F15C8_Lab_seq.nextval into :new.lab_id from dual; 
end; 
/

DROP SEQUENCE F15C8_RFE_seq ; 
create sequence F15C8_RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;


DROP SEQUENCE F15C8_RFE_RTCode_seq ; 
create sequence F15C8_RFE_RTCode_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_RFE_RTCode_PK_trig 
; 

create or replace trigger F15C8_RFE_RTCode_PK_trig 
before insert on F15C8_RFE_RTCode
for each row 
begin 
select F15C8_RFE_RTCode_seq.nextval into :new.rfe_rtc_id from dual; 
end; 
/

DROP SEQUENCE F15C8_RFE_SC_seq ; 
create sequence F15C8_RFE_SC_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_RFE_SC_PK_trig 
; 

create or replace trigger F15C8_RFE_SC_PK_trig 
before insert on F15C8_RFE_SC
for each row 
begin 
select F15C8_RFE_SC_seq.nextval into :new.rfe_sc_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Reviewer_seq ; 
create sequence F15C8_Reviewer_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Reviewer_PK_trig 
; 

create or replace trigger F15C8_Reviewer_PK_trig 
before insert on F15C8_Reviewer
for each row 
begin 
select F15C8_Reviewer_seq.nextval into :new.reviewer_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Status_seq ; 
create sequence F15C8_Status_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Status_PK_trig 
; 

create or replace trigger F15C8_Status_PK_trig 
before insert on F15C8_Status
for each row 
begin 
select F15C8_Status_seq.nextval into :new.status_id from dual; 
end; 
/

DROP SEQUENCE F15C8_Task_seq ; 
create sequence F15C8_Task_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15C8_Task_PK_trig 
; 

create or replace trigger F15C8_Task_PK_trig 
before insert on F15C8_Task
for each row 
begin 
select F15C8_Task_seq.nextval into :new.task_id from dual; 
end; 
/

DROP INDEX F15C8_Emp_emp_id_FK_0 ;
CREATE INDEX F15C8_Emp_emp_id_FK_0 ON F15C8_Approver(F15C8_Emp_emp_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_1 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_1 ON F15C8_Approver(F15C8_RFE_rfe_id) ;
DROP INDEX F15C8_Emp_emp_id_FK_2 ;
CREATE INDEX F15C8_Emp_emp_id_FK_2 ON F15C8_Auth(F15C8_Emp_emp_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_3 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_3 ON F15C8_Auth(F15C8_RFE_rfe_id) ;
DROP INDEX F15C8_Emp_emp_id_FK_4 ;
CREATE INDEX F15C8_Emp_emp_id_FK_4 ON F15C8_Comment(F15C8_Emp_emp_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_5 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_5 ON F15C8_Comment(F15C8_RFE_rfe_id) ;
DROP INDEX F15C8_Emp_emp_id_FK_6 ;
CREATE INDEX F15C8_Emp_emp_id_FK_6 ON F15C8_Contact(F15C8_Emp_emp_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_7 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_7 ON F15C8_Contact(F15C8_RFE_rfe_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_8 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_8 ON F15C8_Document(F15C8_RFE_rfe_id) ;
DROP INDEX F15C8_Lab_lab_id_FK_9 ;
CREATE INDEX F15C8_Lab_lab_id_FK_9 ON F15C8_Emp(F15C8_Lab_lab_id) ;
DROP INDEX F15C8_RFE_RTCode_rfe_r_FK_10 ;
CREATE INDEX F15C8_RFE_RTCode_rfe_r_FK_10 ON F15C8_Emp(F15C8_RFE_RTCode_rfe_rtc_id) ;
DROP INDEX F15C8_Emp_emp_id_FK_11 ;
CREATE INDEX F15C8_Emp_emp_id_FK_11 ON F15C8_RFE(F15C8_Emp_emp_id) ;
DROP INDEX F15C8_Status_status_id_FK_12 ;
CREATE INDEX F15C8_Status_status_id_FK_12 ON F15C8_RFE(F15C8_Status_status_id) ;
DROP INDEX F15C8_Status_status_id_FK_13 ;
CREATE INDEX F15C8_Status_status_id_FK_13 ON F15C8_RFE_SC(F15C8_Status_status_id) ;
DROP INDEX F15C8_Emp_emp_id_FK_14 ;
CREATE INDEX F15C8_Emp_emp_id_FK_14 ON F15C8_Reviewer(F15C8_Emp_emp_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_15 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_15 ON F15C8_Reviewer(F15C8_RFE_rfe_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_16 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_16 ON F15C8_Status(F15C8_RFE_rfe_id) ;
DROP INDEX F15C8_RFE_SC_rfe_sc_id_FK_17 ;
CREATE INDEX F15C8_RFE_SC_rfe_sc_id_FK_17 ON F15C8_Status(F15C8_RFE_SC_rfe_sc_id) ;
DROP INDEX F15C8_Emp_emp_id_FK_18 ;
CREATE INDEX F15C8_Emp_emp_id_FK_18 ON F15C8_Task(F15C8_Emp_emp_id) ;
DROP INDEX F15C8_RFE_rfe_id_FK_19 ;
CREATE INDEX F15C8_RFE_rfe_id_FK_19 ON F15C8_Task(F15C8_RFE_rfe_id) ;
