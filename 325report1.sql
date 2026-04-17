/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

spool 325report1-results.txt

/*Report 1: Savory Delights Staff Roster & Roles
Purpose: List all staff, grouped by role, with work area and pay info for the owner to see who is on staff and what kind of work they do.*/

set pagesize 60
set linesize 130
set verify off
set feedback on
set trimspool on

ttitle 'Savory Delights: Staff Roster and Information' skip 1

column role           heading 'ROLE'           format a12
column employee_name  heading 'EMPLOYEE NAME'  format a26
column work_area      heading 'WORK AREA'      format a18
column pay_type       heading 'PAY TYPE'       format a8
column pay_amount     heading 'PAY AMOUNT'     format $999,990.00
column hire_date_fmt  heading 'HIRED ON'       format a11
column staff_id       heading 'STAFF ID'       format a8

break on role skip 1

select
    e.job_title                             as role,
    e.staff_lname || ', ' || e.staff_fname as employee_name,
    case e.job_title
        when 'Driver'     then 'Deliveries'
        when 'Bartender'  then 'Bar Service'
        when 'Server'     then 'Event Service'
        when 'KitchenMgr' then 'Kitchen / Events'
        when 'Owner'      then 'Management'
        when 'Chef'       then 'Kitchen / Events'
        else                   'General Staff'
    end                                     as work_area,
    case
        when c.staff_id is not null then 'Salary'
        when o.staff_id is not null then 'Hourly'
        else                             'Unknown'
    end                                     as pay_type,
    nvl(c.salary, o.hourly_rate)           as pay_amount,
    to_char(e.hire_date, 'YYYY-MM-DD')     as hire_date_fmt,
    e.staff_id
from event_staff e
     left join chefs       c on e.staff_id = c.staff_id
     left join other_staff o on e.staff_id = o.staff_id
order by
    role,
    e.staff_lname,
    e.staff_fname;

spool off