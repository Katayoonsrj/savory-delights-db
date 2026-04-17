/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

spool 325report5-results.txt
/* 
Report 5: Client quoted cost vs ordered items cost
Purpose: To show the difference between how much a client was quoted 
and how much the items they ordered actually cost.
*/

set pagesize 60
set linesize 130
set verify off
set feedback on
set trimspool on

ttitle "Savory Delights: Quote Accuracy Report" skip 1

column order_quote             heading "Quoted Amount"       format $999,999.99
column "order cost"            heading "Actual Order Cost"   format $999,999.99
column "difference from quote" heading "Difference"          format $999,999.99
column client_name             heading "Client"              format a30

compute sum of "order cost"            on report
compute sum of "difference from quote" on report

SELECT
    o.order_id, 
    c.cli_fname || ' ' || c.cli_lname as client_name,
    o.order_quote, 
    o.actual_cost            as "order cost", 
    o.order_quote - o.actual_cost  as "difference from quote"
FROM orders o
    JOIN client c       ON c.client_id = o.client_id
ORDER BY
    o.order_id;

spool off
