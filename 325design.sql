/*
Maxine Mota 
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

set feedback off
set echo off

-- client is a person who places an order with the company
drop table client cascade constraints;
create table client(
    CLIENT_ID          char(4), 
    cli_fname          varchar(20) , 
    cli_lname          varchar(30), 
    cli_phone		char(10),
    cli_address        varchar(100),
    payment_method     varchar(15), 
    diet_restrictions  varchar(30),
    primary key (CLIENT_ID)
);

-- client_allergies is all client allergies  for a client to note and compare with ingredient lists
drop table client_allergies cascade constraints;
create table client_allergies(
    CLIENT_ID char(4), 
    ALLERGEN_TAG varchar(30),
    primary key (CLIENT_ID, ALLERGEN_TAG),
    foreign key (CLIENT_ID) references client
);

--orders placed by clients
drop table orders cascade constraints;
create table orders(
    ORDER_ID        char(4),
    CLIENT_ID       char(4),
    delivery_date   date,
    order_address   varchar(100),
    order_type      varchar(10),
    order_date      date,
    order_quote     number(8,2),
    actual_cost     number(8,2), 
    payment_status  varchar(12), 
    order_size      number,
    primary key (ORDER_ID),
    foreign key (CLIENT_ID) references client
);

--package is order subtype for an event package booked by a client*
drop table package cascade constraints;
create table package(
    ORDER_ID        char(4),
    event_venue     varchar(30), 
    event_type      varchar(20), 
    guest_count     integer, 
    staff_count     integer, 
    bar_service     char(1) check (bar_service in ('Y','N')), 
    full_service    char(1) check (full_service in ('Y','N')),
    primary key (ORDER_ID),
    foreign key (ORDER_ID) references orders
);

--meal_delivery is an order subtype for meal deliveries
drop table meal_delivery cascade constraints;
create table meal_delivery(
    ORDER_ID char(4),
    delivery_time date, 
    delivery_fee  number(8,2), 
    primary key (ORDER_ID),
    foreign key (ORDER_ID) references orders
);

-- event_staff table show basic employee information 
drop table event_staff cascade constraints;
create table event_staff(
    STAFF_ID            char(4),
    job_title           varchar(20),
    staff_fname         varchar(20),
    staff_lname         varchar(30),
    hire_date           date,
    primary key (STAFF_ID)
);

-- other_staff table shows staff salary 
drop table other_staff cascade constraints;
create table other_staff(
    STAFF_ID             char(4),
    hourly_rate          number(8,2),
    primary key (STAFF_ID),
    foreign key (STAFF_ID) references event_staff(STAFF_ID)
);
    
-- chefs table shows chef's salary and average client raiting out of 5 stars
drop table chefs cascade constraints;
create table chefs(
    STAFF_ID             char(4),
    salary              integer,
    client_rating       integer,
    primary key (STAFF_ID),
    foreign key (STAFF_ID) references event_staff(STAFF_ID)
);
    
--cuisines table is all the cuisine categories and their assinged CUISINE_ID
drop table cuisines cascade constraints;
create table cuisines(
    CUISINE_ID          char(4) , 
    cuisine_type        varchar(16) unique,
    primary key (CUISINE_ID)
);

--chef_cuisines related each chef to all cuisines they are qualified to prepare.
drop table chef_cuisines cascade constraints;
create table chef_cuisines(
    STAFF_ID             char(4),
    CUISINE_ID          char(4),
    primary key (STAFF_ID, CUISINE_ID),
    foreign key (STAFF_ID) references chefs,
    foreign key (CUISINE_ID) references cuisines
);

--certifications is all certifications that staff, chefs, or the business has
drop table certifications cascade constraints;
create table certifications (
    CERT_ID             char(4),
    certification_name varchar(50), 
    primary key (CERT_ID)
);

--employee_certifications certifications held by specific staff, with validity dates.
drop table employee_certifications cascade constraints;
create table employee_certifications(
    CERT_ID           char(4), 
    STAFF_ID            char(4),
    issue_date          date,
    expiration_date     date, 
    primary key (CERT_ID,STAFF_ID),
    foreign key (CERT_ID) references certifications,
    foreign key (STAFF_ID) references event_staff
);

-- work assignment relates event staff to orders they work on.
drop table work_assignment cascade constraints;
create table work_assignment (
    ORDER_ID char(4), 
    STAFF_ID char(4),
    primary key (ORDER_ID, STAFF_ID),
    foreign key (ORDER_ID) references orders,
    foreign key (STAFF_ID) references event_staff
);


-- menu_item: dishes that can be ordered.
drop table menu_item cascade constraints;
create table menu_item (
    MENU_ID        char(4),
dish_name varchar(100),
    price          decimal(8,2),
    description    varchar(500),
    primary key (MENU_ID)
);

-- menu_item_ingredient: ingredients for each menu item.
drop table menu_item_ingredient cascade constraints;
create table menu_item_ingredient (
    MENU_ID      char(4),
    INGREDIENT   varchar(30),
    primary key (MENU_ID, INGREDIENT),
    foreign key (MENU_ID) references menu_item(MENU_ID)
);

-- menu_item_dietary_tags: dietary tags (e.g., 'vegan', 'gluten-free').
drop table menu_item_dietary_tags cascade constraints;
create table menu_item_dietary_tags (
    MENU_ID       char(4),
    DIETARY_TAG   varchar(30),
    primary key (MENU_ID, DIETARY_TAG),
    foreign key (MENU_ID) references menu_item(MENU_ID)
);

-- menu_item_allergen_tags: allergen tags (e.g., 'nuts', 'shellfish').
drop table menu_item_allergen_tags cascade constraints;
create table menu_item_allergen_tags (
    MENU_ID       char(4),
    ALLERGEN_TAG  varchar(30),
    primary key (MENU_ID, ALLERGEN_TAG),
    foreign key (MENU_ID) references menu_item(MENU_ID)
);

-- main_course: specialization of Menu_Item for entrees.
-- spice_level can use a small scale such as 'mild', 'medium', 'hot'.
drop table main_course cascade constraints;
create table main_course (
    MENU_ID            char(4),
    preparation_time   INTEGER,
    spice_level        varchar(6),
    primary key (MENU_ID),
    foreign key (MENU_ID) references menu_item(MENU_ID)
);

-- dessert: specialization of Menu_Item.
-- contains_dairy is true if dairy is present.
drop table dessert cascade constraints;
create table dessert (
    MENU_ID          char(4),
    sweetness_level  INTEGER,
    contains_dairy   char(1),
    primary key (MENU_ID),
    foreign key (MENU_ID) references menu_item(MENU_ID)
);

-- beverage: specialization of Menu_Item.
drop table beverage cascade constraints;
create table beverage (
    MENU_ID          char(4),
    temperature      varchar(5),
    alcohol_content  decimal(4,2),
    primary key (MENU_ID),
    foreign key (MENU_ID) references menu_item(MENU_ID)
);

-- item_cuisine relates  a menu item to one or more cuisines.
drop table item_cuisine cascade constraints;
create table item_cuisine(
    CUISINE_ID char(4), 
    MENU_ID char(4),
    primary key (CUISINE_ID, MENU_ID),
	foreign key (CUISINE_ID) references cuisines,
	foreign key (MENU_ID) references menu_item
);

--order_items is each item included in a clients order and related orders to menu items
drop table order_items cascade constraints;
create table order_items(
    ORDER_ID char(4), 
    MENU_ID char(4), 
    quantity integer,
    primary key (ORDER_ID, MENU_ID),
    foreign key (ORDER_ID) references orders,
    foreign key (MENU_ID) references menu_item
);

-- Supplier: sources that fill supply orders. Supplier_type attribute describes the supplier as either a local farmer or other supplier
drop table supplier cascade constraints;
create table supplier (
    SUPPLIER_ID       char(4),
    supplier_name     varchar(50),
    supplier_phone    char(10),
    supplier_email    varchar(40),
    supplier_address  varchar(100),
    supplier_type     varchar(15),
    primary key (SUPPLIER_ID)
);

-- Local_Farmer: specialization of Supplier for local farms. Farm region is 
drop table local_farmer cascade constraints;
create table local_farmer (
    SUPPLIER_ID    char(4),
    farm_items      varchar(50),
    farm_region  varchar(50),
    primary key (SUPPLIER_ID),
    foreign key (SUPPLIER_ID) references Supplier(SUPPLIER_ID)
);

-- other_supplier: specialization of Supplier for all other suppliers.
-- supply_items describes what they typically supply (e.g., 'Dry Goods').
drop table other_supplier cascade constraints;
create table other_supplier (
    SUPPLIER_ID   char(4),
    supply_items  varchar(50),
    supplier_city   varchar(50),
    primary key (SUPPLIER_ID),
    foreign key (SUPPLIER_ID) references Supplier(SUPPLIER_ID)
);

-- supply_order: orders for ingredients/equipment from suppliers.
drop table supply_order cascade constraints;
create table supply_order (
    SUPPLY_ORDER_ID   char(4),
SUPPLIER_ID		char(4),	
    order_date        date,
    delivery_date     date,
    payment_status    varchar(30),
    staff_id          char(4),
    primary key (SUPPLY_ORDER_ID),
    foreign key (STAFF_ID) references event_staff,
    foreign key (SUPPLIER_ID) references supplier	
);

-- supply_order_item lists each ingredient or material included in a supply order.
drop table supply_order_item cascade constraints;
create table supply_order_item (
    SUPPLY_ORDER_ID   char(4),
    INGREDIENT_NAME        varchar(30),
    primary key (SUPPLY_ORDER_ID, INGREDIENT_NAME),
    foreign key (SUPPLY_ORDER_ID) references supply_order
);


-- cars is a table for company vehicles
drop table cars cascade constraints;
create table cars(
    CAR_ID	            char(4),
    license_plate_num   char(7),
    car_type            char(10), 
    primary key(CAR_ID)
);

-- car_allowed_uses defines which types of tasks each vehicle is approved for.
drop table car_allowed_uses cascade constraints;
create table car_allowed_uses(
    CAR_ID              char(4),
    use_type            char(10),
    primary key (CAR_ID, USE_TYPE),
    foreign key (CAR_ID) references cars);

--registration information for each car.
drop table car_registration cascade constraints;
create table car_registration(
    CAR_ID              char(4), 
    expiration_date     date,
    primary key (CAR_ID),
    foreign key (CAR_ID) references cars
);

-- equipment is all the equipment needed for an order such as chairs or tables
drop table equipment cascade constraints;
create table equipment(
    EQUIPMENT_ID    char(4), 
    equipment_type  varchar(25), 
    quantity integer, 
    purchase_date date,
    primary key (EQUIPMENT_ID)
);

-- equipment_assignment records which equipment is used for which order.
drop table equipment_assignment cascade constraints;
create table equipment_assignment(
    EQUIPMENT_ID char(4), 
    ORDER_ID char(4),
    date_used date,
    date_returned date,
    primary key (EQUIPMENT_ID, ORDER_ID),
    foreign key (EQUIPMENT_ID) references equipment,
    foreign key (ORDER_ID) references orders
);

-- car_assignment is used to track when a car is used for an order and when its returned 
drop table car_assignment cascade constraints;
create table car_assignment(
    CAR_ID char(4), 
    ORDER_ID char(4),
    date_used date,
    date_returned date,
    primary key (CAR_ID, ORDER_ID),
    foreign key (CAR_ID) references cars,
    foreign key (ORDER_ID) references orders
);