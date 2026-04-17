/* Maxine Mota 
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025 */

spool 325query-results.txt

prompt ====================
prompt 1. When were the clients last orders placed?
prompt ====================

select c.client_id, c.cli_fname, c.cli_lname, o.order_date "Last Order Date"
from client c
join orders o
  on o.client_id = c.client_id
where o.order_date = (
        select max(o2.order_date)
        from orders o2
        where o2.client_id = c.client_id
      )
order by c.client_id;

prompt ====================
prompt 2. Which menu items have never been ordered?
prompt ====================

select menu_id, dish_name
from menu_item
minus
select m.menu_id, m.dish_name
from menu_item m
join order_items oi
  on oi.menu_id = m.menu_id
order by dish_name;

prompt ====================
prompt 3. Show all the vegan dishes and their cost
prompt ====================

select mi.dish_name "Dish Name", mi.price "Dish Price"
from menu_item mi
where exists(
select 1
from menu_item_dietary_tags midt
where mi.menu_id = midt.menu_id
  and upper(midt.dietary_tag) = 'VEGAN');

prompt ====================
prompt 4. Show how much each client has spent ordered from most to least
prompt ====================

select c.client_id "Client ID", c.cli_fname || ' ' || c.cli_lname "Client Name", ct.total_spent "Total Spent"
from client c
join (
    select o.client_id, sum(oi.quantity * mi.price) total_spent
    from orders o
    join order_items oi on o.order_id = oi.order_id
    join menu_item mi on oi.menu_id = mi.menu_id
    group by o.client_id
    ) ct
  on c.client_id = ct.client_id
order by ct.total_spent desc;

prompt ====================
prompt 5. Show how many orders each chef has filled from most to least filled orders
prompt ====================

select ch.staff_id "Chef ID", es.staff_fname || ' ' || es.staff_lname "Chef Name", count(*) "Orders Filled"
from chefs ch
join event_staff es
  on ch.staff_id = es.staff_id
join work_assignment wa
  on ch.staff_id = wa.staff_id
group by ch.staff_id,
         es.staff_fname || ' ' || es.staff_lname
order by count(*) desc;

prompt ====================
prompt 6. Which employees have either their Food Delivery Safety Training or Driver Safety? 
prompt ====================

(select es.staff_id "Staff ID",
        es.staff_fname || ' ' || es.staff_lname "Employee Name",
        c.certification_name "Certification"
 from event_staff es
      join employee_certifications ec on es.staff_id = ec.staff_id
      join certifications c on c.cert_id = ec.cert_id
 where lower(c.certification_name) = 'food delivery safety training')
union
(select es.staff_id "Staff ID",
        es.staff_fname || ' ' || es.staff_lname "Employee Name",
        c.certification_name "Certification"
 from event_staff es
      join employee_certifications ec on es.staff_id = ec.staff_id
      join certifications c on c.cert_id = ec.cert_id
 where lower(c.certification_name) = 'driver safety');

prompt ====================
prompt 7. Show how many different dishes were ordered for each package order
prompt ====================

select p.order_id "Package Order ID",
       sum(oi.quantity) "Dishes Ordered"
from package p
join order_items oi
  on p.order_id = oi.order_id
group by p.order_id
order by p.order_id;

prompt ====================
prompt 8. How many times has each car been used?
prompt ====================

select car_id, count(*) "Times Used"
from car_assignment
group by car_id
order by car_id desc;

prompt ====================
prompt 9. How many supply orders has each supplier filled?
prompt ====================

select s.supplier_id "Supplier ID",
       s.supplier_name "Supplier Name",
       count(*) "Number of Supply Orders"
from supplier s
join supply_order so
  on s.supplier_id = so.supplier_id
group by s.supplier_id,
         s.supplier_name
order by count(*) desc;

prompt ====================
prompt 10. On which dates did the business have delivery orders in 2025?
prompt ====================

select d.delivery_date "Delivery Date",
       d.total_deliveries "Total Meal Deliveries"
from (
        select o.delivery_date,
               count(*) total_deliveries
        from orders o
        where o.order_type = 'Delivery'
          and o.delivery_date between date '2025-01-01' and date '2025-12-31'
        group by o.delivery_date
     ) d
where d.total_deliveries >= 1
order by d.delivery_date;


prompt ====================
prompt 11. Show the total number of orders for each package event type from most to least
prompt ====================

select p.event_type "Event Type", count(*) "Total # of Orders"
from package p
group by p.event_type
order by count(*) desc;

prompt ====================
prompt 12. Which cars can serve different types of events?
prompt ====================

select cau.car_id "Car ID",
       count(distinct cau.use_type) "Number of Use Types"
from car_allowed_uses cau
group by cau.car_id
having count(distinct cau.use_type) > 1;


prompt ====================
prompt 13. All orders where the assigned chefs food handlers certification will expire before the event date
prompt ====================

select o.order_id, 
o.delivery_date "Order Delivery Date", 
es.staff_fname ||' '|| es.staff_lname "Chef Name", 
ec.expiration_date "Food Handler Exp Date" 
from orders o
	join work_assignment wa on o.order_id = wa.order_id
	join event_staff es on wa.staff_id = es.staff_id
	join employee_certifications ec on es.staff_id = ec.staff_id
	join certifications c on c.cert_id = ec.cert_id
where lower(es.job_title)='chef'
and lower(c.certification_name)='food handler certification'
and ec.expiration_date < o.delivery_date; 

prompt ====================
prompt 14. Which menu items have gluten allergen tags?
prompt ====================

select mi.dish_name
from menu_item mi
	join menu_item_allergen_tags miat 
on mi.menu_id = miat.menu_id
where lower(miat.allergen_tag) = 'gluten';

prompt ====================
prompt 15. How many cuisines can each chef cook?
prompt ====================

select es.staff_fname||' '||es.staff_lname "Chef Name" , count(*) "Number of Cuisine Specialties"
from event_staff es
	join chef_cuisines cc on es.staff_id = cc.staff_id
where lower(es.job_title) = 'chef'
group by es.staff_fname||' '||es.staff_lname;


prompt ====================
prompt 16. What is the average guest count across the different types of package events?
prompt ====================

select event_type "Event Type", avg(guest_count)
from package
group by event_type
order by avg(guest_count);

prompt ====================
prompt 17. Which clients have ordered both meal delivery and event catering?
prompt ====================

(select c.client_id, c.cli_fname, c.cli_lname 
from orders o
	join client c on o.client_id = c.client_id
	join package p on o.order_id = p.order_id)
INTERSECT
(select c.client_id, c.cli_fname, c.cli_lname 
from orders o
	join client c on o.client_id = c.client_id
	join meal_delivery md on o.order_id = md.order_id); 


prompt ====================
prompt 18. Find orders where a clients allergy conflicts with at least one ordered menu item.
prompt ====================

SELECT o.order_id, 
    c.cli_fname ||' '|| c.cli_lname as client_name, 
    ca.allergen_tag as "Client Allergy", 
    mi.dish_name "Dish Name", 
    miat.allergen_tag "Dish Allergy"
FROM orders o
	JOIN client c ON o.client_id = c.client_id
	JOIN client_allergies ca ON ca.client_id = c.client_id
	JOIN order_items oi ON o.order_id = oi.order_id
	JOIN menu_item mi ON oi.menu_id = mi.menu_id
	JOIN menu_item_allergen_tags miat ON miat.menu_id = mi.menu_id
WHERE upper(ca.allergen_tag) = upper(miat.allergen_tag);

prompt ====================
prompt 19.  How many different products have been supplied by local farmers?
prompt ====================

select count( distinct soi.ingredient_name)
from supply_order_item soi
	join supply_order so on so.supply_order_id = soi.supply_order_id
where exists 
(select 1
from supplier s
where s.supplier_id = so.supplier_id
	and lower(supplier_type) = 'local farmer');

prompt ====================
prompt 20. Show how often each equipment has been used
prompt ====================

select e.equipment_id, e.equipment_type, count(*) "Number of uses"
from equipment e
	join equipment_assignment ea on e.equipment_id = ea.equipment_id
group by e.equipment_id,e.equipment_type;

prompt ====================
prompt 21. What is the difference between the clients order quote and the actual cost of the items they ordered?
prompt ====================

SELECT o.order_id, o.order_quote, o.actual_cost "order cost", o.order_quote-o.actual_cost "difference from quote"
FROM orders o
ORDER BY o.order_id;

prompt ====================
prompt 22. Show how many meal delivery orders occurred in each month per year, ordered from busiest to least busy
prompt ====================

SELECT to_char(o.delivery_date, 'Month') "Month", to_char(o.delivery_date,'YYYY') "Year", count(*) "Total Deliveries"
FROM orders o
WHERE order_type = 'Delivery'
GROUP BY to_char(o.delivery_date, 'Month'), to_char(o.delivery_date,'YYYY')
ORDER BY to_char(o.delivery_date,'YYYY'), count(*) desc;

prompt ====================
prompt 23. Which menu items are ordered for events with bar service, sorted from least to most?
prompt ====================

select mi.dish_name, count(*) "Number of Times Ordered"
from menu_item mi
join order_items oi on oi.menu_id = mi.menu_id
	join orders o on o.order_id = oi.order_id
where exists(
select 1
from package p
where o.order_id = p.order_id
and p.bar_service = 'Y')
group by mi.dish_name
order by count(*) asc;

prompt ====================
prompt 24. How many ingredients does each menu item have?
prompt ====================

select mi.dish_name, count(*) "Number of ingredients"
from menu_item mi
	join menu_item_ingredient mii on mi.menu_id = mii.menu_id
group by mi.dish_name
order by mi.dish_name;


prompt ====================
prompt 25. Which 2025 events with bar service have at least 50 guests?
prompt ====================
 
select o.order_id "Order ID",
       p.event_type "Event Type",
       p.event_venue "Venue",
       p.guest_count "Guest Count",
       o.order_date "Order Date"
from orders o
join package p
  on o.order_id = p.order_id
where p.bar_service = 'Y'
  and p.guest_count >= 50
  and o.order_date between date '2025-01-01' and date '2025-12-31'
order by o.order_date;

prompt ====================
prompt 26. Which menu items are more expensive than the average menu item price?
prompt ====================

select menu_id,
       dish_name,
       price
from menu_item
where price >
      (select avg(price)
       from menu_item)
order by price desc;

prompt ====================
prompt 27. How many deliveries are scheduled per day?
prompt ====================

select delivery_date "Delivery Date", count(*) "# of Orders"
from orders
where lower(order_type) = 'delivery'
group by delivery_date
order by count(distinct order_id) desc;

prompt ====================
prompt 28. How many items does each meal delivery have?
prompt ====================

select md.order_id, count(*) item_count
from meal_delivery md
  join order_items oi on md.order_id = oi.order_id
group by md.order_id
order by count(*);

spool off
