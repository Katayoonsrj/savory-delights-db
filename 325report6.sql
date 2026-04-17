/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

spool 325report6-results.txt
/*
Report 6: Number of different staff assignments per package event
Purpose: For each package event, show how many staff are assigned per staff job title. 
This allows the business to assess if enough staff were assigned to an event given its size.
*/

set pagesize 60
set linesize 130
set verify off
set feedback on
set trimspool on

ttitle "Savory Delights: Staff Assignments for Package Events" skip 1

column order_id    heading "Order ID"    format a6
column event_type  heading "Event Type"  format a18
column order_type  heading "Order Type"  format a10
column guest_count heading "Guests"      format 9999
column job_title   heading "Staff Role"  format a12
column staff_count heading "Staff Count" format 9999

break on order_id skip 1 on event_type on order_type on guest_count
compute sum label "Total Staff for Event:" of staff_count on order_id

select
    o.order_id,
    p.event_type,
    o.order_type,
    p.guest_count,
    es.job_title,
    count(*) as staff_count
from orders o
    join package       p  on p.order_id  = o.order_id
    join work_assignment wa on wa.order_id = o.order_id
    join event_staff   es on es.staff_id = wa.staff_id
group by
    o.order_id,
    p.event_type,
    o.order_type,
    p.guest_count,
    es.job_title
order by
    o.order_id,
    es.job_title;

spool off
