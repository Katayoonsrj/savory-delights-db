/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

spool 325report3-results.txt
/*Report 3: Equipment Status and Availability
Purpose: Show each equipment item, its quantity, 
and whether it is currently available, checked out, 
or overdue based on open assignments.*/

set pagesize 60
set linesize 130
set verify off
set feedback on
set trimspool on

ttitle center 'Savory Delights: Equipment Status Report' skip 1

column equipment_type heading 'EQUIPMENT ITEM' format a28
column equip_id       heading 'ID'             format a4
column quantity       heading 'QTY'            format 9990
column status         heading 'STATUS'         format a14
break on equipment_type skip 1
compute count label 'Total Equipment Items:' of equip_id on report

with usage_info as (
    select
        ea.equipment_id,
        max(case when ea.date_returned is null then 1 else 0 end) as active_out,
        max(case when ea.date_returned is null then o.delivery_date end) as due_date
    from equipment_assignment ea
         join orders o on ea.order_id = o.order_id
    group by ea.equipment_id
)
select
    e.equipment_type,
    e.equipment_id as equip_id,
    e.quantity,
    case
        when u.active_out = 0 or u.active_out is null then 'AVAILABLE'
        when u.due_date < trunc(sysdate)              then 'OVERDUE'
        else                                               'CHECKED OUT'
    end as status
from equipment e
     left join usage_info u
       on e.equipment_id = u.equipment_id
order by
    e.equipment_id;
    

spool off

