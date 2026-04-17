/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

spool 325report7-results.txt
/*
Report 7: Locally Supplied Ingredients by Regions
Purpose: Summarize which ingredients are supplied by each farm region
*/

set pagesize 60
set linesize 200
set verify off
set feedback on
set trimspool on

ttitle 'Savory Delights: Locally Supplied Ingredients by Regions' skip 1

column farm_region heading "Farm Region" format a28
column item_count heading "Ingredients Count" format 999
column supplied_ingredients heading "Ingredients Supplied" format a100 word_wrapped


select lf.farm_region farm_region, count(distinct soi.ingredient_name) item_count,
    listagg(distinct soi.ingredient_name,', ') 
        within group (order by soi.ingredient_name) as supplied_ingredients
from local_farmer lf
    join supply_order so on so.supplier_id = lf.supplier_id
    join supply_order_item soi on soi.supply_order_id = so.supply_order_id
group by lf.farm_region
order by lf.farm_region asc;

spool off