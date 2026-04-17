/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

spool 325report2-results.txt

/*Report 2: Staff Certification Status Report                                                                                        Purpose: Show each staff member's certifications, with issue/expiration dates and a status (Expired / Expires soon / OK), grouped by staff member.*/

set pagesize 60
set linesize 130
set verify off
set feedback on
set trimspool on

ttitle 'Savory Delights: Staff Certification Status Report' skip 1

column employee_name   heading 'EMPLOYEE NAME'   format a30
column cert_type       heading 'CERTIFICATION'   format a38
column issue_date_fmt  heading 'ISSUE DATE'      format a11
column exp_date_fmt    heading 'EXPIRY DATE'     format a11
column status          heading 'STATUS'          format a24

break on employee_name skip 1

select
    e.staff_lname || ', ' || e.staff_fname          as employee_name,
    c.certification_name                            as cert_type,
    to_char(ec.issue_date,      'YYYY-MM-DD')       as issue_date_fmt,
    to_char(ec.expiration_date, 'YYYY-MM-DD')       as exp_date_fmt,
    case
        when ec.expiration_date < sysdate then
             'EXPIRED'
        when ec.expiration_date between sysdate and (sysdate + 30) then
             'EXPIRES WITHIN 30 DAYS'
        else
             'ACTIVE'
    end                                             as status
from employee_certifications ec
     join certifications c
       on ec.cert_id = c.cert_id
     join event_staff e
       on ec.staff_id = e.staff_id
order by
    employee_name,
    ec.expiration_date;

spool off