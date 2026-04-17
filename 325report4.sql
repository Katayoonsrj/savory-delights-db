/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

spool 325report4-results.txt
/*
Report 4: Menu by Cuisine
Purpose: Show all the menu items and basic details grouped by cuisine to make it easier
for clients to choose order items from the same cuisine.
*/

set pagesize 60
set linesize 200
set verify off
set feedback on
set trimspool on

ttitle "Savory Delights: Menu by Cuisine" skip 1

break on cuisine_type skip 1

column c.cuisine_type       heading "Cuisine"                format a16
column dish_name            heading "Dish Name"              format a25
column description          heading "Description"            format a35 word_wrapped
column allergens            heading "Allergens"              format a30
column dietary_restrictions heading "Dietary Restrictions"   format a30
column price                heading "Price"                  format $9999.99

select
    c.cuisine_type, 
    mi.dish_name,  
    mi.description, 
    listagg(distinct miat.allergen_tag, ', ') within group (order by miat.allergen_tag) as allergens,
    listagg(distinct midt.dietary_tag, ', ') within group (order by midt.dietary_tag)   as dietary_restrictions,
    mi.price as price
from menu_item mi
    join item_cuisine ic on mi.menu_id = ic.menu_id
    join cuisines c on c.cuisine_id = ic.cuisine_id
    left join menu_item_dietary_tags  midt on mi.menu_id = midt.menu_id
    left join menu_item_allergen_tags miat on mi.menu_id = miat.menu_id
group by
    c.cuisine_type,
    mi.dish_name,
    mi.description,
    mi.price
order by
    c.cuisine_type,
    mi.price desc,
    mi.dish_name;

spool off
