drop view F15C8_Exec_Director_view ;
drop view F15C8_Chairperson_view ;
drop view F15C8_Lab_Director_view ;
drop view F15C8_Requestor_view ;

create view F15C8_Exec_Director_view as
SELECT 
    emp_id,
    emp_status,
    emp_name,
    emp_email,
    emp_office,
    emp_phone,
    status_eff_date,
    System_Admin_Flag,
    Lab_Director_Flag,
    Exec_Director_Flag,
    Chairperson_Flag,
    f15c8_lab_lab_id,
    f15c8_rfe_rtcode_rfe_rtc_id,
    type
FROM F15C8_Emp where type = 'Exec_Director' ;

create or replace TRIGGER F15C8_Exec_Director_trigger
     INSTEAD OF insert ON F15C8_Exec_Director_view
     FOR EACH ROW
BEGIN
    insert into F15C8_Emp( 
        emp_id,
        emp_status,
        emp_name,
        emp_email,
        emp_office,
        emp_phone,
        status_eff_date,
        System_Admin_Flag,
        Lab_Director_Flag,
        Exec_Director_Flag,
        Chairperson_Flag,
        f15c8_lab_lab_id,
        f15c8_rfe_rtcode_rfe_rtc_id,
        type)
         VALUES ( 
        :NEW.emp_id,
        :NEW.emp_status,
        :NEW.emp_name,
        :NEW.emp_email,
        :NEW.emp_office,
        :NEW.emp_phone,
        :NEW.status_eff_date,
        0,
        0,
        1,
        0,
        :NEW.f15c8_lab_lab_id,
        :NEW.f15c8_rfe_rtcode_rfe_rtc_id,
        'Exec_Director') ;
END;
/

create view F15C8_Chairperson_view as
SELECT 
    emp_id,
    emp_status,
    emp_name,
    emp_email,
    emp_office,
    emp_phone,
    status_eff_date,
    System_Admin_Flag,
    Lab_Director_Flag,
    Exec_Director_Flag,
    Chairperson_Flag,
    f15c8_lab_lab_id,
    f15c8_rfe_rtcode_rfe_rtc_id,
    type
FROM F15C8_Emp where type = 'Chairperson' ;

create or replace TRIGGER F15C8_Chairperson_trigger
     INSTEAD OF insert ON F15C8_Chairperson_view
     FOR EACH ROW
BEGIN
    insert into F15C8_Emp( 
        emp_id,
        emp_status,
        emp_name,
        emp_email,
        emp_office,
        emp_phone,
        status_eff_date,
        System_Admin_Flag,
        Lab_Director_Flag,
        Exec_Director_Flag,
        Chairperson_Flag,
        f15c8_lab_lab_id,
        f15c8_rfe_rtcode_rfe_rtc_id,
        type)
         VALUES ( 
        :NEW.emp_id,
        :NEW.emp_status,
        :NEW.emp_name,
        :NEW.emp_email,
        :NEW.emp_office,
        :NEW.emp_phone,
        :NEW.status_eff_date,
        0,
        0,
        0,
        1,
        :NEW.f15c8_lab_lab_id,
        :NEW.f15c8_rfe_rtcode_rfe_rtc_id,
        'Chairperson') ;
END;
/

create view F15C8_Lab_Director_view as
SELECT 
    emp_id,
    emp_status,
    emp_name,
    emp_email,
    emp_office,
    emp_phone,
    status_eff_date,
    System_Admin_Flag,
    Lab_Director_Flag,
    Exec_Director_Flag,
    Chairperson_Flag,
    f15c8_lab_lab_id,
    f15c8_rfe_rtcode_rfe_rtc_id,
    type
FROM F15C8_Emp where type = 'Lab_Director' ;

create or replace TRIGGER F15C8_Lab_Director_trigger
     INSTEAD OF insert ON F15C8_Lab_Director_view
     FOR EACH ROW
BEGIN
    insert into F15C8_Emp( 
        emp_id,
        emp_status,
        emp_name,
        emp_email,
        emp_office,
        emp_phone,
        status_eff_date,
        System_Admin_Flag,
        Lab_Director_Flag,
        Exec_Director_Flag,
        Chairperson_Flag,
        f15c8_lab_lab_id,
        f15c8_rfe_rtcode_rfe_rtc_id,
        type)
         VALUES ( 
        :NEW.emp_id,
        :NEW.emp_status,
        :NEW.emp_name,
        :NEW.emp_email,
        :NEW.emp_office,
        :NEW.emp_phone,
        :NEW.status_eff_date,
        0,
        1,
        0,
        0,
        :NEW.f15c8_lab_lab_id,
        :NEW.f15c8_rfe_rtcode_rfe_rtc_id,
        'Lab_Director') ;
END;
/

create view F15C8_Requestor_view as
SELECT 
    emp_id,
    emp_status,
    emp_name,
    emp_email,
    emp_office,
    emp_phone,
    status_eff_date,
    System_Admin_Flag,
    Lab_Director_Flag,
    Exec_Director_Flag,
    Chairperson_Flag,
    f15c8_lab_lab_id,
    f15c8_rfe_rtcode_rfe_rtc_id,
    type
FROM F15C8_Emp where type = 'Requestor' ;

create or replace TRIGGER F15C8_Requestor_trigger
     INSTEAD OF insert ON F15C8_Requestor_view
     FOR EACH ROW
BEGIN
    insert into F15C8_Emp( 
        emp_id,
        emp_status,
        emp_name,
        emp_email,
        emp_office,
        emp_phone,
        status_eff_date,
        System_Admin_Flag,
        Lab_Director_Flag,
        Exec_Director_Flag,
        Chairperson_Flag,
        f15c8_lab_lab_id,
        f15c8_rfe_rtcode_rfe_rtc_id,
        type)
         VALUES ( 
        :NEW.emp_id,
        :NEW.emp_status,
        :NEW.emp_name,
        :NEW.emp_email,
        :NEW.emp_office,
        :NEW.emp_phone,
        :NEW.status_eff_date,
        0,
        0,
        0,
        0,
        :NEW.f15c8_lab_lab_id,
        :NEW.f15c8_rfe_rtcode_rfe_rtc_id,
        'Requestor') ;
END;
/

drop view F15C8_RFE_view;

create view F15C8_RFE_view as
SELECT *
FROM F15C8_RFE ;


create or replace TRIGGER F15C8_RFE_view_trigger
    INSTEAD OF INSERT ON F15C8_RFE_view
    FOR EACH ROW
    DECLARE
        rfe_id NUMBER;
        status_id NUMBER;
    BEGIN
        rfe_id := F15C8_RFE_seq.nextval;
        status_id := F15C8_Status_seq.nextval;
        
        insert into F15C8_RFE( 
            rfe_id,
            explanation,
            alt_protections,
            approval_review_date,
            f15c8_emp_emp_id)
            VALUES ( 
             rfe_id,
             :NEW.explanation,
             :NEW.alt_protections,
             :NEW.approval_review_date,
             v('P2_LAB_EMPLOYEE')) ;
        insert into F15C8_Status(
            status_id,
            status_eff_date,
            F15C8_RFE_SC_RFE_STATUS,
            F15C8_RFE_RFE_ID)
            VALUES (
             status_id,
             sysdate,
             'Entered',
             rfe_id);

        
END F15C8_RFE_view_trigger;
/