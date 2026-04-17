/*
Maxine Mota 
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/ 

set pagesize 40
set linesize 120

spool 325result-contents.txt
prompt =========
prompt client table
prompt =========

select *
from client;

prompt =========
prompt client_allergies table 
prompt =========

select *
from client_allergies;

prompt =========
prompt orders
prompt =========

select *
from orders;

prompt =========
prompt package
prompt =========

select *
from package;

prompt =========
prompt meal_delivery
prompt =========

select *
from meal_delivery;

prompt =========
prompt order_items
prompt =========

select *
from order_items;

prompt =========
prompt event_staff
prompt =========

select *
from event_staff;

prompt =========
prompt other_staff
prompt =========

select *
from other_staff;

prompt =========
prompt chefs
prompt =========

select *
from chefs;

prompt =========
prompt cuisines
prompt =========

select *
from cuisines;

prompt =========
prompt chef_cuisines
prompt =========

select *
from chef_cuisines;

prompt =========
prompt certifications
prompt =========

select *
from certifications;

prompt =========
prompt employee_certifications
prompt =========

select *
from employee_certifications;

prompt =========
prompt work_assignment
prompt =========

select *
from work_assignment;

prompt =========
prompt menu_item
prompt =========

select *
from menu_item;

prompt =========
prompt menu_item_ingredient
prompt =========

select *
from menu_item_ingredient;

prompt =========
prompt menu_item_dietary_tags
prompt =========

select *
from menu_item_dietary_tags;

prompt =========
prompt menu_item_allergen_tags
prompt =========

select *
from menu_item_allergen_tags;

prompt =========
prompt main_course
prompt =========

select *
from main_course;

prompt =========
prompt dessert
prompt =========

select *
from dessert;

prompt =========
prompt beverage
prompt =========

select *
from beverage;

prompt =========
prompt item_cuisine
prompt =========

select * 
from item_cuisine;

prompt =========
prompt supply_order
prompt =========

select *
from supply_order;

prompt =========
prompt supply_order_item
prompt =========

select *
from supply_order_item;

prompt =========
prompt supplier
prompt =========

select *
from supplier;

prompt =========
prompt local_farmer
prompt =========

select *
from local_farmer;

prompt =========
prompt other_supplier
prompt =========

select *
from other_supplier;

prompt =========
prompt cars
prompt =========

select *
from cars;

prompt =========
prompt car_allowed_uses
prompt =========

select *
from car_allowed_uses;

prompt =========
prompt car_registration
prompt =========

select *
from car_registration;

prompt =========
prompt equipment
prompt =========

select *
from equipment;

prompt =========
prompt equipment_assignment
prompt =========

select *
from equipment_assignment;

prompt =========
prompt car_assignment
prompt =========

select *
from car_assignment;

spool off
