DROP SEQUENCE F15C8_Approver_seq ; 
create sequence F15C8_Approver_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Approver_PK_trig 
before insert on F15C8_Approver
for each row 
begin 
select F15C8_Approver_seq.nextval into :new.approver_id from dual; 
end; 
/
alter table F15C8_Approver add created date ; 
alter table F15C8_Approver add created_by VARCHAR2 (255) ; 
alter table F15C8_Approver add row_version_number integer ; 
alter table F15C8_Approver add updated date ; 
alter table F15C8_Approver add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Approver_AUD_trig 
before insert or update on F15C8_Approver 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Auth_seq ; 
create sequence F15C8_Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Auth_PK_trig 
before insert on F15C8_Auth
for each row 
begin 
select F15C8_Auth_seq.nextval into :new.auth_id from dual; 
end; 
/
alter table F15C8_Auth add created date ; 
alter table F15C8_Auth add created_by VARCHAR2 (255) ; 
alter table F15C8_Auth add row_version_number integer ; 
alter table F15C8_Auth add updated date ; 
alter table F15C8_Auth add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Auth_AUD_trig 
before insert or update on F15C8_Auth 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Comment_seq ; 
create sequence F15C8_Comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Comment_PK_trig 
before insert on F15C8_Comment
for each row 
begin 
select F15C8_Comment_seq.nextval into :new.comment_id from dual; 
end; 
/
alter table F15C8_Comment add created date ; 
alter table F15C8_Comment add created_by VARCHAR2 (255) ; 
alter table F15C8_Comment add row_version_number integer ; 
alter table F15C8_Comment add updated date ; 
alter table F15C8_Comment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Comment_AUD_trig 
before insert or update on F15C8_Comment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Contact_seq ; 
create sequence F15C8_Contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Contact_PK_trig 
before insert on F15C8_Contact
for each row 
begin 
select F15C8_Contact_seq.nextval into :new.contact_id from dual; 
end; 
/
alter table F15C8_Contact add created date ; 
alter table F15C8_Contact add created_by VARCHAR2 (255) ; 
alter table F15C8_Contact add row_version_number integer ; 
alter table F15C8_Contact add updated date ; 
alter table F15C8_Contact add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Contact_AUD_trig 
before insert or update on F15C8_Contact 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Document_seq ; 
create sequence F15C8_Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Document_PK_trig 
before insert on F15C8_Document
for each row 
begin 
select F15C8_Document_seq.nextval into :new.document_id from dual; 
end; 
/
alter table F15C8_Document add created date ; 
alter table F15C8_Document add created_by VARCHAR2 (255) ; 
alter table F15C8_Document add row_version_number integer ; 
alter table F15C8_Document add updated date ; 
alter table F15C8_Document add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Document_AUD_trig 
before insert or update on F15C8_Document 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Emp_seq ; 
create sequence F15C8_Emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Emp_PK_trig 
before insert on F15C8_Emp
for each row 
begin 
select F15C8_Emp_seq.nextval into :new.emp_id from dual; 
end; 
/
alter table F15C8_Emp add created date ; 
alter table F15C8_Emp add created_by VARCHAR2 (255) ; 
alter table F15C8_Emp add row_version_number integer ; 
alter table F15C8_Emp add updated date ; 
alter table F15C8_Emp add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Emp_AUD_trig 
before insert or update on F15C8_Emp 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Lab_seq ; 
create sequence F15C8_Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Lab_PK_trig 
before insert on F15C8_Lab
for each row 
begin 
select F15C8_Lab_seq.nextval into :new.lab_id from dual; 
end; 
/
alter table F15C8_Lab add created date ; 
alter table F15C8_Lab add created_by VARCHAR2 (255) ; 
alter table F15C8_Lab add row_version_number integer ; 
alter table F15C8_Lab add updated date ; 
alter table F15C8_Lab add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Lab_AUD_trig 
before insert or update on F15C8_Lab 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_RFE_seq ; 
create sequence F15C8_RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_RFE_PK_trig 
before insert on F15C8_RFE
for each row 
begin 
select F15C8_RFE_seq.nextval into :new.rfe_id from dual; 
end; 
/
alter table F15C8_RFE add created date ; 
alter table F15C8_RFE add created_by VARCHAR2 (255) ; 
alter table F15C8_RFE add row_version_number integer ; 
alter table F15C8_RFE add updated date ; 
alter table F15C8_RFE add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_RFE_AUD_trig 
before insert or update on F15C8_RFE 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_RFE_RTCode_seq ; 
create sequence F15C8_RFE_RTCode_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_RFE_RTCode_PK_trig 
before insert on F15C8_RFE_RTCode
for each row 
begin 
select F15C8_RFE_RTCode_seq.nextval into :new.rfe_rtc_id from dual; 
end; 
/
alter table F15C8_RFE_RTCode add created date ; 
alter table F15C8_RFE_RTCode add created_by VARCHAR2 (255) ; 
alter table F15C8_RFE_RTCode add row_version_number integer ; 
alter table F15C8_RFE_RTCode add updated date ; 
alter table F15C8_RFE_RTCode add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_RFE_RTCode_AUD_trig 
before insert or update on F15C8_RFE_RTCode 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_RFE_SC_seq ; 
create sequence F15C8_RFE_SC_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_RFE_SC_PK_trig 
before insert on F15C8_RFE_SC
for each row 
begin 
select F15C8_RFE_SC_seq.nextval into :new.rfe_sc_id from dual; 
end; 
/
alter table F15C8_RFE_SC add created date ; 
alter table F15C8_RFE_SC add created_by VARCHAR2 (255) ; 
alter table F15C8_RFE_SC add row_version_number integer ; 
alter table F15C8_RFE_SC add updated date ; 
alter table F15C8_RFE_SC add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_RFE_SC_AUD_trig 
before insert or update on F15C8_RFE_SC 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Reviewer_seq ; 
create sequence F15C8_Reviewer_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Reviewer_PK_trig 
before insert on F15C8_Reviewer
for each row 
begin 
select F15C8_Reviewer_seq.nextval into :new.reviewer_id from dual; 
end; 
/
alter table F15C8_Reviewer add created date ; 
alter table F15C8_Reviewer add created_by VARCHAR2 (255) ; 
alter table F15C8_Reviewer add row_version_number integer ; 
alter table F15C8_Reviewer add updated date ; 
alter table F15C8_Reviewer add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Reviewer_AUD_trig 
before insert or update on F15C8_Reviewer 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Status_seq ; 
create sequence F15C8_Status_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Status_PK_trig 
before insert on F15C8_Status
for each row 
begin 
select F15C8_Status_seq.nextval into :new.status_id from dual; 
end; 
/
alter table F15C8_Status add created date ; 
alter table F15C8_Status add created_by VARCHAR2 (255) ; 
alter table F15C8_Status add row_version_number integer ; 
alter table F15C8_Status add updated date ; 
alter table F15C8_Status add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Status_AUD_trig 
before insert or update on F15C8_Status 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15C8_Task_seq ; 
create sequence F15C8_Task_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15C8_Task_PK_trig 
before insert on F15C8_Task
for each row 
begin 
select F15C8_Task_seq.nextval into :new.task_id from dual; 
end; 
/
alter table F15C8_Task add created date ; 
alter table F15C8_Task add created_by VARCHAR2 (255) ; 
alter table F15C8_Task add row_version_number integer ; 
alter table F15C8_Task add updated date ; 
alter table F15C8_Task add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15C8_Task_AUD_trig 
before insert or update on F15C8_Task 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
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
