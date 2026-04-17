/*
Maxine Mota 
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

set define off 
-- used to prevent ampersand substitution
set feedback off
set echo off

prompt ================
prompt delete statements
prompt ================

delete from car_assignment;
delete from equipment_assignment;
delete from work_assignment;

delete from order_items;
delete from package;
delete from meal_delivery;
delete from supply_order_item;

delete from main_course;
delete from dessert;
delete from beverage;
delete from menu_item_ingredient;
delete from menu_item_dietary_tags;
delete from menu_item_allergen_tags;
delete from item_cuisine;

delete from chef_cuisines;
delete from employee_certifications;
delete from other_staff;
delete from chefs;

delete from supply_order;

delete from local_farmer;
delete from other_supplier;

delete from car_registration;
delete from car_allowed_uses;

delete from client_allergies;

delete from orders;

delete from menu_item;
delete from certifications;
delete from cuisines;
delete from event_staff;
delete from supplier;
delete from equipment;
delete from cars;
delete from client;



prompt ================
prompt client table inserts
prompt ================

insert into client
values ('C001', 'Emily', 'Johnson', '7072048245', '221 Pine St, Arcata, CA', 'Credit Card', 'Vegetarian');

insert into client
values ('C002', 'James', 'Miller', '7076395628', '14 Redwood Ave, Eureka, CA', 'Debit Card', 'Gluten-Free');

insert into client
values ('C003', 'Olivia', 'Brown', '7075274659', '309 Bayside Rd, Bayside, CA', 'Cash', 'Vegan');

insert into client
values ('C004', 'Ethan', 'Davis', '7074552847', '88 Campus Ln, Arcata, CA', 'Mobile Pay', 'None');

insert into client
values ('C005', 'Chloe', 'Wilson', '7077557231', '502 Sunset Dr, Trinidad, CA', 'Credit Card', 'Halal');

insert into client
values ('C006', 'Alice', 'Lopez', '7074882641', '123 Maple St, Fortuna, CA', 'Card', 'Vegan');

insert into client
values ('C007', 'Brian', 'Chen', '7073865623', '45 Dogwood Ave, Mckinleyville, CA', 'Cash', 'None');

insert into client
values ('C008', 'Dana', 'Patel', '7076488274', '789 Pine Rd, King Salmon, CA', 'Card', 'Gluten-Free');

insert into client
values ('C009', 'Evan', 'Torres', '7078246274', '12 Cedar Ln, Weott, CA', 'Card', 'Nut-Free');

insert into client
values ('C010', 'Alana', 'Burghes', '7076284623', '301 Lupin Ave, Arcata, CA', 'Mobile Pay', 'None');

insert into client
values ('C011', 'Miah', 'Foster', '7077255482', '370 Alder St, Eureka, CA', 'Credit Card', 'Gluten-Free');

insert into client
values ('C012', 'Jane', 'Flores', '7078436274', '248 Lily Ln, Bayside, CA', 'Cash', 'Gluten-Free');

insert into client
values ('C013', 'Dawud', 'Sharif', '7070237589', '70 Prairie Ln, Kneeland, CA', 'Debit Card', 'Halal');

insert into client
values ('C014', 'Chester', 'MacGuff', '7072305728', '608 Stone Ln, Trinidad, CA', 'Credit Card', 'Vegetarian');

insert into client
values ('C015', 'Konrad', 'Hastilow', '7075338658', '7 Sunset Ct, Orick, CA', 'Cash', 'Nut-Free');


prompt ================
prompt client_allergies table inserts
prompt ================

insert into client_allergies
values ('C002', 'Dairy');

insert into client_allergies
values ('C002', 'Gluten');

insert into client_allergies
values ('C012', 'Gluten');

insert into client_allergies
values ('C005', 'Nuts');

insert into client_allergies
values ('C005', 'Shrimp');

insert into client_allergies
values ('C006','Shrimp');

insert into client_allergies 
values ('C006','Shellfish');

insert into client_allergies 
values ('C006','Eggs');

insert into client_allergies  
values ('C008','Gluten');

insert into client_allergies 
values ('C009','Almonds');

insert into client_allergies
values ('C011', 'Gluten');

insert into client_allergies
values ('C011', 'Eggs');

insert into client_allergies
values ('C013', 'Garlic');

insert into client_allergies
values ('C013', 'Onions');

insert into client_allergies
values ('C015', 'Peanuts'); 


prompt ================
prompt event_staff table inserts
prompt ================

insert into event_staff
values ('S001','Server','Emily','Carter', date '2021-03-14');

insert into event_staff
values ('S002','Driver','Jacob','Wright', date '2019-07-22');

insert into event_staff
values ('S003','Chef','Ava','Thompson', date '2020-11-30');

insert into event_staff
values ('S004','Driver','Mason','Harris', date '2022-08-05');

insert into event_staff
values ('S005','Bartender','Grace','Mitchell', date '2023-02-17');

insert into event_staff 
values ('S006','Chef','Lena','Nguyen', date '2020-01-10');

insert into event_staff
values ('S007','Owner','Jamal','Hernandez', date '2019-12-01');

insert into event_staff 
values ('S008','Driver','Priya','Singh', date '2021-06-01');

insert into event_staff 
values ('S009','KitchenMgr','Owen','Garcia', date '2020-09-20');

insert into event_staff
values ('S010','Bartender','Jane','Diaz', date '2022-11-05');

insert into event_staff
values ('S011','Server','Margaret','Anderson', date '2024-03-25');

insert into event_staff
values ('S012','Chef','Jessie','Merricks', date '2022-10-17');

insert into event_staff
values ('S013','Driver','Farhad','Rahmani', date '2023-04-05');

insert into event_staff
values ('S014','Bartender','Jordan','Oyanagi', date '2019-12-04');

insert into event_staff
values ('S015','Driver','August','Bautista', date '2022-06-30');

insert into event_staff
values ('S016','Chef','Jonathan','Arbuckle', date '2021-02-18');

insert into event_staff
values ('S017','Chef','Jeremy','Bearimy', date '2020-10-09');

insert into event_staff
values ('S018','Chef','Charles','Worthe', date '2022-08-13');

insert into event_staff
values ('S019','Chef','Morgan','Underhill', date '2023-05-16');

insert into event_staff
values ('S020','Chef','Liam','Nelson', date '2023-01-01');

insert into event_staff 
values ('S021','Chef','Will','Shatner', date '2022-04-21');

insert into event_staff
values ('S022','Chef','Pearce','Coleman', date '2022-02-28');

insert into event_staff
values ('S023','Chef','Grace','Coleman', date '2022-06-01');

insert into event_staff
values ('S024','Server','Chris','Smithson', date '2022-11-12');

insert into event_staff
values ('S025','Chef','Derrell','Doberville', date '2024-09-03');

insert into event_staff
values ('S026','Chef','Mark','Nelson', date '2023-10-14');

insert into event_staff
values ('S027','Chef','Tomomi','Harrell', date '2023-03-28');

insert into event_staff
values ('S028','Chef','Louise','Smith', date '2023-06-17');

insert into event_staff
values ('S029','Driver','Aria','Song', date '2022-09-26');

insert into event_staff
values ('S030','Server','Frank','Butterworth', date '2025-05-23');

insert into event_staff 
values ('S031','Driver','Nino','Perez', date '2020-01-01');

prompt ================
prompt cuisines table inserts
prompt ================

insert into cuisines
values ('CU01','Mexican');

insert into cuisines
values ('CU02','Italian');

insert into cuisines
values ('CU03','Persian');

insert into cuisines
values ('CU04','Greek');

insert into cuisines
values ('CU05','Caribbean');

insert into cuisines 
values ('CU06','Ethiopian');

insert into cuisines 
values ('CU07','Cambodian');

insert into cuisines 
values ('CU08','Thai');

insert into cuisines 
values ('CU09','Vietnamese');

insert into cuisines 
values ('CU10','Southern US');

insert into cuisines
values ('CU11','North Indian');

insert into cuisines
values ('CU12','South Indian');

insert into cuisines
values ('CU13','French');

insert into cuisines
values ('CU14','North African');

insert into cuisines
values ('CU15','Central European');

insert into cuisines 
values ('CU20','Korean');


prompt ================
prompt certifications table inserts
prompt ================

insert into certifications
values ('CE01','Food Handler Certification');

insert into certifications
values ('CE02','Certified Caterer License');

insert into certifications
values ('CE03','Food Allergy & Safety Training');

insert into certifications
values ('CE04','Event Coordinator Certificate');

insert into certifications
values ('CE05','Food Delivery Safety Training');

insert into certifications
values ('CE06','City Business License');

insert into certifications
values ('CE07','Restaurant Safety Certification');

insert into certifications
values ('CE08','Alcohol Server Certification');

insert into certifications
values ('CE09','Kitchen Manager Certification');

insert into certifications
values ('CE10','Driver Safety');

insert into certifications
values ('CE11', 'Forklift Certification');

insert into certifications
values ('CE12', 'Alcohol Beverage Certification');

insert into certifications
values ('CE13', 'CPR Certification');

insert into certifications
values ('CE14', 'First Aid Certification');

insert into certifications
values ('CE15', 'Class B Drivers License');






prompt ================
prompt menu_item table inserts
prompt ================

insert into menu_item 
values ('M001', 'Beef Lasagna', 13.50, 'Layered pasta with seasoned beef, ricotta, and marinara sauce');

insert into menu_item
values ('M002', 'Grilled Salmon', 17.25, 'Fresh salmon fillet grilled and served with lemon butter sauce');

insert into menu_item
values ('M003', 'Vegetable Stir Fry', 10.75, 'Mixed seasonal vegetables sauteed in a savory soy glaze');

insert into menu_item
values ('M004', 'Lamb Stew', 14.00, 'Slow-cooked lamb with potatoes, carrots, and herbs');

insert into menu_item
values ('M005', 'Chicken Alfredo', 12.50, 'Creamy Alfredo pasta topped with grilled chicken');

insert into menu_item
values ('M006','Doro Wat', 18.50,'Spiced Ethiopian chicken stew served with injera');

insert into menu_item
values ('M007','Fish Amok', 12.00,'Steamed white fish curry in banana leaves');

insert into menu_item
values ('M008','Pumpkin Curry',14.00,'Aromatic pumpkin curry served with jasmine rice');

insert into menu_item
values ('M009','Pho',  9.50,'Vietnamese beef noodle soup with herbs');

insert into menu_item
values ('M010','Kentucky Pork Ribs', 11.25,'Slow-smoked pork ribs with a seasoned rub');

insert into menu_item
values ('M011','Korean Beef Bulgogi', 15.25,'Sweet and savory marinated beef grilled and served with rice');

insert into menu_item
values ('M012', 'Chicken Biryani', 13.75, 'Fragrant basmati rice with spiced chicken and herbs');

insert into menu_item
values ('M013', 'Beef Biryani', 14.50, 'Traditional spiced rice dish cooked with marinated beef');

insert into menu_item
values ('M014', 'Beef Pilaf', 12.25, 'Rice pilaf with tender beef, onions, and mild spices');

insert into menu_item
values ('M015', 'Chicken Tikka', 11.00, 'Char-grilled marinated chicken with aromatic spices');

insert into menu_item
values ('M016','Halewa', 7.50,'Dense sesame candy made with tahini and sugar');

insert into menu_item
values ('M017','Num Ansom', 9.00,'Cambodian sticky rice cake wrapped in banana leaves');

insert into menu_item
values ('M018','Mango Sticky Rice', 8.25,'Sweet coconut sticky rice served with ripe mango');

insert into menu_item
values ('M019','Che Ba Mau', 6.75,'Vietnamese three-color dessert with beans and jelly');

insert into menu_item
values ('M020','Peach Cobbler', 5.50,'Warm peach filling baked with a buttery crust');

insert into menu_item
values ('M021','Bungeo-ppang', 4.25,'Korean fish-shaped pastry filled with sweet red bean');

insert into menu_item
values ('M022','Coconut Pudding', 5.75,'Smooth coconut custard served chilled');

insert into menu_item
values ('M023','Chocolate Mousse', 6.25,'Light and airy chocolate dessert topped with whipped cream');

insert into menu_item
values ('M024','Baklava', 7.00,'Flaky dessert layered with nuts and honey syrup');

insert into menu_item
values ('M025', 'Black Sesame Ice Cream', 5.75, 'Creamy ice cream made with roasted black sesame for a rich, nutty flavor');

insert into menu_item
values ('M026','Ethiopian Honey Wine', 9.50,'Traditional honey-fermented wine');

insert into menu_item
values ('M027','Tlong', 3.75,'Cambodian iced drink with basil seeds and syrup');

insert into menu_item
values ('M028','Thai Tea', 4.25,'Sweet black tea with spices and condensed milk');

insert into menu_item
values ('M029','Vietnamese Iced Coffee', 4.75,'Strong coffee brewed with sweetened condensed milk');

insert into menu_item
values ('M030','Southern Sweet Tea', 2.50,'Classic chilled black tea sweetened generously');

insert into menu_item
values ('M031','Makgeolli', 6.00,'Korean rice wine with a lightly sparkling finish');

insert into menu_item
values ('M032','Lemon Mint Cooler', 3.50,'Refreshing lemonade blended with mint leaves');

insert into menu_item
values ('M033','Ginger Iced Tea', 3.75,'Chilled black tea infused with fresh ginger');

insert into menu_item
values ('M034','Tamarind Juice', 3.50,'Sweet and tangy tamarind beverage');

insert into menu_item
values ('M035','Hibiscus Tea', 3.25,'Bright red herbal tea with floral notes');

insert into menu_item
values ('M036','Cucumber Lime Refresher', 3.50,'Cool drink made with cucumber, lime, and a touch of sugar');

insert into menu_item
values ('M037','Passion Fruit Soda', 4.00,'Sparkling beverage with passion fruit flavor');

insert into menu_item
values ('M038','Vietnamese Coconut Water', 3.50,'Fresh coconut water served chilled');

insert into menu_item
values ('M039','Korean Corn Tea', 2.75,'Light roasted corn-infused tea served cold');

insert into menu_item
values ('M040','Spiced Chai Latte', 4.50,'Creamy tea made with aromatic chai spices');

insert into menu_item
values ('M041', 'Coconut Rice Pudding', 6.00, 'Slow-cooked creamy rice pudding with coconut milk and vanilla');

insert into menu_item
values ('M042', 'Gulab Jamun', 4.50, 'Soft fried milk dough balls soaked in warm cardamom syrup');

insert into menu_item
values ('M043', 'Chocolate Lava Cake', 6.75, 'Warm chocolate cake with a molten center served with vanilla drizzle');

insert into menu_item
values ('M044', 'Matcha Cheesecake', 7.25, 'Rich cheesecake infused with Japanese matcha and a graham crust');

insert into menu_item
values ('M045', 'Banana Fritters', 5.00, 'Crispy fried banana slices drizzled with honey and sesame seeds');





prompt ================
prompt orders table inserts
prompt ================

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O001', 'C001', date '2025-01-03', '444 Green St, Redcrest, CA', 'Package', date '2025-01-03', 1220.00, 'Paid', 55);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O002', 'C002', date '2025-01-04', '1233 Red St, Fortuna, CA', 'Package', date '2025-01-04', 1231.00, 'Paid', 56);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O003', 'C003', date '2025-01-06', '123 Blue St, Fortuna, CA', 'Package', date '2025-01-06', 1235.00, 'Paid', 57);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O004', 'C004', date '2025-01-09', '443 Orange St, Fortuna, CA', 'Package', date '2025-01-12', 1246.00, 'Paid', 33);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O005', 'C005', date '2025-01-13', '3123 Yellow St, Fortuna, CA', 'Package', date '2025-01-13', 1242.00, 'Paid', 32);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O006','C006', date '2025-01-15','1243 Purple St, Fortuna, CA','Package', date '2025-01-01',1200.00,'Paid', 50);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O007','C007', date '2025-03-05','2344 First St, Manila, CA','Package', date '2025-02-20', 900.00,'Pending',40);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O008','C008', date '2025-04-03','3451 Redwood Lane, Blue Lake, CA','Package', date '2025-03-15',1500.00,'Deposit',75);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O009','C009', date '2023-10-01','4752 Cedar Way, Orick, CA','Package', date '2023-09-15',1500.00,'Deposit',75);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O010','C010', date '2022-11-01','494 Bluebird Ave, Fortuna, CA','Package', date '2022-10-01',1500.00,'Deposit',75);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O011', 'C011', date '2025-05-03', '1243 Purple St, Fortuna, CA', 'Package', date '2025-05-03', 32.11, 'Pending', 44);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O012', 'C012', date '2025-05-05', '1243 Purple St, Fortuna, CA', 'Package', date '2025-05-03', 321.11, 'Pending', 45);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O013', 'C013', date '2025-05-08', '1243 Purple St, Fortuna, CA', 'Package', date '2025-05-08', 412.11, 'Pending', 20);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O014', 'C014', date '2025-05-12', '1243 Purple St, Fortuna, CA', 'Package', date '2025-05-13', 232.11, 'Pending', 21);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O015', 'C015', date '2025-05-16', '1243 Purple St, Eureka, CA', 'Package', date '2025-05-16',32.11, 'Pending', 22);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O016', 'C012', date '2025-04-15', '248 Lily Ln, Bayside, CA', 'Delivery', date '2025-04-15', 532.11, 'Pending', 9);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O017', 'C013', date '2025-06-12', '70 Prairie Ln, Kneeland, CA', 'Delivery', date '2025-05-20', 632.11, 'Pending', 8);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O018', 'C014', date '2025-01-07', '608 Stone Ln, Trinidad, CA', 'Delivery', date '2025-01-07', 732.11, 'Pending', 7);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O019', 'C011', date '2025-08-21', '370 Alder St, Eureka, CA', 'Delivery', date '2025-08-21', 932.11, 'Pending', 6);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O020','C006', date '2025-03-05','123 Maple St, Fortuna, CA','Delivery', date '2025-03-01', 120.00,'Paid', 6);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O021','C007', date '2025-05-10','45 Oak Ave Apt 2, Ferndale, CA','Delivery', date '2025-04-25', 60.00,'Paid', 3);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O022','C008', date '2025-09-10','City Hall, 2nd Floor, Eureka, CA','Delivery', date '2025-09-01', 80.00,'Paid', 4);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O023','C009', date '2025-02-13','12 Cedar Ln, Fortuna, CA','Delivery', date '2025-02-01', 100.00,'Paid', 5);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O024','C010', date '2025-07-18','Redwood Park Pavilion, Arcata, CA','Delivery', date '2025-07-01', 200.00,'Paid', 10);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O025', 'C001', date '2025-07-14', '221 Pine St, Arcata, CA', 'Delivery', date '2025-07-14', 112.11, 'Pending', 4);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O026', 'C002', date '2025-02-26', '14 Redwood Ave, Eureka, CA', 'Delivery', date '2025-02-26', 122.11, 'Paid',2);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O027', 'C003', date '2025-11-09', '309 Bayside Rd, Bayside, CA', 'Delivery', date '2025-11-09', 182.11, 'Paid', 4);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O028', 'C004', date '2025-05-12', '88 Campus Ln, Arcata, CA', 'Delivery', date '2025-05-12',172.11, 'Paid', 5);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O029', 'C005', date '2025-03-08', '502 Sunset Dr, Trinidad, CA', 'Delivery', date '2025-03-08', 162.11, 'Paid', 6);

insert into orders (order_id,client_id,delivery_date,order_address,order_type,order_date,order_quote,payment_status,order_size)
values
('O030', 'C006', date '2025-07-28', '123 Maple St, Fortuna, CA', 'Delivery', date '2025-07-28', 122.11, 'Paid', 7);



prompt ================
prompt package table inserts
prompt ================

insert into package 
values ('O001', 'Redwood Park', 'Wedding', 80, 5,'Y','Y');

insert into package 
values ('O002', 'Richardson Park', 'Corporate Lunch', 12, 2,'Y','Y');

insert into package 
values ('O003', 'Community Center', 'Athletics Banquet', 32, 2,'Y','Y');

insert into package 
values ('O004', 'Redwood Park', 'Birthday', 13, 2,'Y','Y');

insert into package 
values ('O005', 'Westwood Park', 'Baby Shower', 14, 3,'Y','Y');

insert into package 
values ('O006','Lopez Backyard','Wedding',50, 6,'Y','Y');

insert into package 
values ('O007','City Hall','Corporate Lunch',40, 5,'N','Y');

insert into package 
values ('O008','Riverside Park','Birthday',75, 8,'Y','Y');

insert into package 
values ('O009','Community Center','Fundraiser',30, 4,'N','Y');

insert into package 
values ('O010','Company HQ','Retreat',25, 3,'N','N');

insert into package 
values ('O011', 'Grizzly Park', 'Wedding', 100, 4,'Y','Y');

insert into package 
values ('O012', 'Yellow Sun Church', 'Wedding', 85, 4,'Y','Y');

insert into package 
values ('O013', 'Blue Park', 'Baby Shower', 25, 4,'Y','Y');

insert into package 
values ('O014', 'Redwood Acres', 'Elderly Dinner', 12, 2,'Y','Y');

insert into package 
values ('O015', 'Samoa Cookhouse', 'Wedding', 23,5,'Y','Y');


prompt ================
prompt meal_delivery table inserts
prompt ================

insert into meal_delivery
values ('O016', to_date('2025-04-15 19:30','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O017', to_date('2025-06-12 16:00','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O018', to_date('2025-01-07 11:45','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O019', to_date('2025-08-21 12:00','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O020', to_date('2025-03-05 09:30','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O021', to_date('2025-05-10 10:30','YYYY-MM-DD HH24:MI'), 10.00);

insert into meal_delivery
values ('O022', to_date('2025-09-10 12:30','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O023', to_date('2025-02-13 14:00','YYYY-MM-DD HH24:MI'), 20.00);

insert into meal_delivery
values ('O024', to_date('2025-07-18 16:30','YYYY-MM-DD HH24:MI'), 50.00);

insert into meal_delivery
values ('O025', to_date('2025-07-14 18:15','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O026', to_date('2025-02-26 17:30','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O027', to_date('2025-11-09 13:00','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O028', to_date('2025-05-12 17:00','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O029', to_date('2025-03-08 14:30','YYYY-MM-DD HH24:MI'), 5.00);

insert into meal_delivery
values ('O030', to_date('2025-07-28 18:30','YYYY-MM-DD HH24:MI'), 5.00);



prompt ================
prompt order_items table inserts
prompt ================

insert into order_items values ('O001','M001',10);
insert into order_items values ('O002','M002',10);
insert into order_items values ('O003','M003',10);
insert into order_items values ('O004','M004',10);
insert into order_items values ('O005','M005',10);


insert into order_items values ('O006','M006',20);
insert into order_items values ('O006','M008',15);
insert into order_items values ('O006','M022',50);

insert into order_items values ('O007','M007',20);
insert into order_items values ('O007','M009',20);
insert into order_items values ('O007','M024',40);

insert into order_items values ('O008','M006',30);
insert into order_items values ('O008','M011',25);
insert into order_items values ('O008','M023',75);

insert into order_items values ('O009','M010',25);
insert into order_items values ('O009','M020',30);
insert into order_items values ('O009','M025',30);

insert into order_items values ('O010','M011',20);
insert into order_items values ('O010','M024',25);

insert into order_items values ('O011','M017',10);
insert into order_items values ('O012','M018',15);
insert into order_items values ('O013','M019',16);
insert into order_items values ('O014','M021',17);
insert into order_items values ('O015','M026',18);


insert into order_items values ('O016','M027',8);
insert into order_items values ('O017','M030',9);
insert into order_items values ('O018','M031',3);
insert into order_items values ('O019','M032',4);



insert into order_items values ('O020','M009',6);
insert into order_items values ('O021','M028',3);
insert into order_items values ('O022','M029',4);
insert into order_items values ('O023','M010',5);
insert into order_items values ('O024','M006',10);

insert into order_items values ('O025','M038',10);
insert into order_items values ('O026','M039',8);
insert into order_items values ('O027','M040',9);
insert into order_items values ('O028','M041',8);
insert into order_items values ('O029','M042',2);
insert into order_items values ('O030','M043',3);



prompt ================
prompt other_staff table inserts
prompt ================

insert into other_staff values ('S001',15.00);
insert into other_staff values ('S002',20.00);
insert into other_staff values ('S004',17.00);
insert into other_staff values ('S005',17.00);
insert into other_staff values ('S007',50.00);
insert into other_staff values ('S008',17.00);
insert into other_staff values ('S009',30.00);
insert into other_staff values ('S010',25.00);
insert into other_staff values ('S011',30.00);
insert into other_staff values ('S013',32.00);
insert into other_staff values ('S014',18.00);
insert into other_staff values ('S015',21.00);
insert into other_staff values ('S024',20.00);
insert into other_staff values ('S029',26.00);
insert into other_staff values ('S030',18.00);


prompt ================
prompt chefs table inserts  
prompt ================

insert into chefs values ('S003',55000,5);
insert into chefs values ('S006',65000,4);
insert into chefs values ('S012',55000,5);
insert into chefs values ('S016',55000,3);
insert into chefs values ('S017',55000,5);
insert into chefs values ('S018',55000,5);
insert into chefs values ('S019',55000,5);
insert into chefs values ('S020',60000,3);
insert into chefs values ('S021',50000,4);
insert into chefs values ('S022',55000,5);
insert into chefs values ('S023',55000,5);
insert into chefs values ('S025',55000,3);
insert into chefs values ('S026',55000,5);
insert into chefs values ('S027',55000,4);
insert into chefs values ('S028',55000,5);


prompt ================
prompt chef_cuisines table inserts 
prompt ================

insert into chef_cuisines values ('S003','CU02');
insert into chef_cuisines values ('S003','CU09');

insert into chef_cuisines values ('S006','CU01');

insert into chef_cuisines values ('S012','CU11');
insert into chef_cuisines values ('S012','CU12');
insert into chef_cuisines values ('S012','CU10');

insert into chef_cuisines values ('S016','CU07');

insert into chef_cuisines values ('S017','CU13');
insert into chef_cuisines values ('S017','CU02');

insert into chef_cuisines values ('S018','CU20');

insert into chef_cuisines values ('S019','CU06');
insert into chef_cuisines values ('S019','CU08');

insert into chef_cuisines values ('S020','CU09');
insert into chef_cuisines values ('S020','CU07');

insert into chef_cuisines values ('S021','CU01');
insert into chef_cuisines values ('S021','CU15');

insert into chef_cuisines values ('S022','CU04');

insert into chef_cuisines values ('S023','CU11');
insert into chef_cuisines values ('S023','CU12');

insert into chef_cuisines values ('S025','CU15');
insert into chef_cuisines values ('S025','CU05');

insert into chef_cuisines values ('S026','CU08');

insert into chef_cuisines values ('S027','CU20');
insert into chef_cuisines values ('S027','CU06');

insert into chef_cuisines values ('S028','CU02');
insert into chef_cuisines values ('S028','CU13');
insert into chef_cuisines values ('S028','CU03');


prompt ================
prompt employee_certifications table inserts
prompt ================

insert into employee_certifications values ('CE01','S001', date '2021-03-14', date '2024-03-14');
insert into employee_certifications values ('CE03','S001', date '2022-05-01', date '2025-05-01');

insert into employee_certifications values ('CE10','S002', date '2019-07-22', date '2024-07-22');
insert into employee_certifications values ('CE05','S002', date '2020-01-01', date '2025-01-01');

insert into employee_certifications values ('CE01','S003', date '2020-11-30', date '2023-11-30');
insert into employee_certifications values ('CE07','S003', date '2021-02-01', date '2024-02-01');
insert into employee_certifications values ('CE03','S003', date '2022-02-01', date '2025-02-01');

insert into employee_certifications values ('CE10','S004', date '2022-08-05', date '2025-08-05');

insert into employee_certifications values ('CE08','S005', date '2023-02-17', date '2026-02-17');
insert into employee_certifications values ('CE12','S005', date '2023-03-01', date '2026-03-01');

insert into employee_certifications values ('CE01','S006', date '2020-01-10', date '2023-01-10');
insert into employee_certifications values ('CE07','S006', date '2020-06-01', date '2025-06-01');

insert into employee_certifications values ('CE06','S007', date '2019-12-01', date '2024-12-01');
insert into employee_certifications values ('CE04','S007', date '2020-01-01', date '2025-01-01');

insert into employee_certifications values ('CE10','S008', date '2021-06-01', date '2026-06-01');

insert into employee_certifications values ('CE09','S009', date '2020-09-20', date '2025-09-20');
insert into employee_certifications values ('CE01','S009', date '2021-03-01', date '2024-03-01');

insert into employee_certifications values ('CE08','S010', date '2022-11-05', date '2025-11-05');
insert into employee_certifications values ('CE12','S010', date '2023-01-01', date '2026-01-01');

insert into employee_certifications values ('CE01','S011', date '2024-03-25', date '2027-03-25');

insert into employee_certifications values ('CE01','S012', date '2022-10-17', date '2025-10-17');
insert into employee_certifications values ('CE07','S012', date '2023-01-01', date '2026-01-01');

insert into employee_certifications values ('CE10','S013', date '2023-04-05', date '2026-04-05');
insert into employee_certifications values ('CE05','S013', date '2023-04-15', date '2026-04-15');

insert into employee_certifications values ('CE08','S014', date '2019-12-04', date '2024-12-04');

insert into employee_certifications values ('CE10','S015', date '2022-06-30', date '2027-06-30');
insert into employee_certifications values ('CE15','S015', date '2023-01-01', date '2028-01-01');

insert into employee_certifications values ('CE01','S016', date '2021-02-18', date '2024-02-18');

insert into employee_certifications values ('CE01','S017', date '2020-10-09', date '2023-10-09');
insert into employee_certifications values ('CE07','S017', date '2021-01-01', date '2026-01-01');

insert into employee_certifications values ('CE01','S018', date '2022-08-13', date '2025-08-13');

insert into employee_certifications values ('CE01','S019', date '2023-05-16', date '2027-05-16');

insert into employee_certifications values ('CE01','S020', date '2023-01-01', date '2026-01-01');

insert into employee_certifications values ('CE01','S021', date '2022-04-21', date '2025-04-21');
insert into employee_certifications values ('CE07','S021', date '2022-06-01', date '2027-06-01');

insert into employee_certifications values ('CE01','S022', date '2022-02-28', date '2025-02-28');

insert into employee_certifications values ('CE01','S023', date '2022-06-01', date '2025-06-01');

insert into employee_certifications values ('CE01','S024', date '2022-11-12', date '2025-11-12');
insert into employee_certifications values ('CE03','S024', date '2023-02-01', date '2026-02-01');

insert into employee_certifications values ('CE01','S025', date '2024-09-03', date '2027-09-03');

insert into employee_certifications values ('CE01','S026', date '2023-10-14', date '2026-10-14');
insert into employee_certifications values ('CE07','S026', date '2024-01-01', date '2027-01-01');

insert into employee_certifications values ('CE01','S027', date '2023-03-28', date '2028-03-28');

insert into employee_certifications values ('CE01','S028', date '2023-06-17', date '2027-06-17');

insert into employee_certifications values ('CE10','S029', date '2022-09-26', date '2025-09-26');

insert into employee_certifications values ('CE01','S030', date '2025-05-23', date '2028-05-23');

insert into employee_certifications values ('CE10','S031', date '2020-01-01', date '2025-01-01');
insert into employee_certifications values ('CE15','S031', date '2021-01-01', date '2026-01-01');


prompt ================
prompt work_assignment table inserts 
prompt ================

insert into work_assignment values ('O006','S019');
insert into work_assignment values ('O006','S010');
insert into work_assignment values ('O006','S029');

insert into work_assignment values ('O007','S020');
insert into work_assignment values ('O007','S031');

insert into work_assignment values ('O008','S027');
insert into work_assignment values ('O008','S010');
insert into work_assignment values ('O008','S002');

insert into work_assignment values ('O009','S012');
insert into work_assignment values ('O009','S004');

insert into work_assignment values ('O010','S018');
insert into work_assignment values ('O010','S008');


insert into work_assignment values ('O020','S003');
insert into work_assignment values ('O020','S029');

insert into work_assignment values ('O021','S019');
insert into work_assignment values ('O021','S031');

insert into work_assignment values ('O022','S003');
insert into work_assignment values ('O022','S002');

insert into work_assignment values ('O023','S012');
insert into work_assignment values ('O023','S004');

insert into work_assignment values ('O024','S019');
insert into work_assignment values ('O024','S008');


prompt ================
prompt menu_item_ingredient table inserts
prompt ================

insert into menu_item_ingredient values ('M001','beef');
insert into menu_item_ingredient values ('M001','pasta sheets');
insert into menu_item_ingredient values ('M001','ricotta');
insert into menu_item_ingredient values ('M001','mozzarella');
insert into menu_item_ingredient values ('M001','marinara sauce');

insert into menu_item_ingredient values ('M002','salmon');
insert into menu_item_ingredient values ('M002','lemon');
insert into menu_item_ingredient values ('M002','butter');
insert into menu_item_ingredient values ('M002','garlic');
insert into menu_item_ingredient values ('M002','black pepper');

insert into menu_item_ingredient values ('M003','broccoli');
insert into menu_item_ingredient values ('M003','carrots');
insert into menu_item_ingredient values ('M003','bell peppers');
insert into menu_item_ingredient values ('M003','soy sauce');
insert into menu_item_ingredient values ('M003','sesame oil');

insert into menu_item_ingredient values ('M004','lamb');
insert into menu_item_ingredient values ('M004','potatoes');
insert into menu_item_ingredient values ('M004','carrots');
insert into menu_item_ingredient values ('M004','onions');
insert into menu_item_ingredient values ('M004','herbs');

insert into menu_item_ingredient values ('M005','chicken');
insert into menu_item_ingredient values ('M005','fettuccine');
insert into menu_item_ingredient values ('M005','cream');
insert into menu_item_ingredient values ('M005','parmesan');
insert into menu_item_ingredient values ('M005','garlic');

insert into menu_item_ingredient values ('M006','chicken');
insert into menu_item_ingredient values ('M006','berbere spice');
insert into menu_item_ingredient values ('M006','onions');
insert into menu_item_ingredient values ('M006','ginger');
insert into menu_item_ingredient values ('M006','injera');

insert into menu_item_ingredient values ('M007','white fish');
insert into menu_item_ingredient values ('M007','coconut milk');
insert into menu_item_ingredient values ('M007','lemongrass');
insert into menu_item_ingredient values ('M007','turmeric');
insert into menu_item_ingredient values ('M007','banana leaves');

insert into menu_item_ingredient values ('M008','pumpkin');
insert into menu_item_ingredient values ('M008','coconut milk');
insert into menu_item_ingredient values ('M008','curry paste');
insert into menu_item_ingredient values ('M008','garlic');
insert into menu_item_ingredient values ('M008','jasmine rice');

insert into menu_item_ingredient values ('M009','beef broth');
insert into menu_item_ingredient values ('M009','rice noodles');
insert into menu_item_ingredient values ('M009','beef slices');
insert into menu_item_ingredient values ('M009','basil');
insert into menu_item_ingredient values ('M009','bean sprouts');

insert into menu_item_ingredient values ('M010','pork ribs');
insert into menu_item_ingredient values ('M010','dry rub');
insert into menu_item_ingredient values ('M010','garlic powder');
insert into menu_item_ingredient values ('M010','brown sugar');
insert into menu_item_ingredient values ('M010','smoke seasoning');

insert into menu_item_ingredient values ('M011','beef');
insert into menu_item_ingredient values ('M011','soy sauce');
insert into menu_item_ingredient values ('M011','garlic');
insert into menu_item_ingredient values ('M011','ginger');
insert into menu_item_ingredient values ('M011','sesame oil');

insert into menu_item_ingredient values ('M012','basmati rice');
insert into menu_item_ingredient values ('M012','chicken');
insert into menu_item_ingredient values ('M012','biryani spices');
insert into menu_item_ingredient values ('M012','onions');
insert into menu_item_ingredient values ('M012','yogurt');

insert into menu_item_ingredient values ('M013','basmati rice');
insert into menu_item_ingredient values ('M013','beef');
insert into menu_item_ingredient values ('M013','biryani spices');
insert into menu_item_ingredient values ('M013','onions');
insert into menu_item_ingredient values ('M013','cilantro');

insert into menu_item_ingredient values ('M014','rice');
insert into menu_item_ingredient values ('M014','beef');
insert into menu_item_ingredient values ('M014','onions');
insert into menu_item_ingredient values ('M014','mild spices');
insert into menu_item_ingredient values ('M014','butter');

insert into menu_item_ingredient values ('M015','chicken');
insert into menu_item_ingredient values ('M015','tikka spices');
insert into menu_item_ingredient values ('M015','yogurt');
insert into menu_item_ingredient values ('M015','garlic');
insert into menu_item_ingredient values ('M015','ginger');

insert into menu_item_ingredient values ('M016','tahini');
insert into menu_item_ingredient values ('M016','sesame');
insert into menu_item_ingredient values ('M016','sugar');
insert into menu_item_ingredient values ('M016','cardamom');

insert into menu_item_ingredient values ('M017','sticky rice');
insert into menu_item_ingredient values ('M017','mung beans');
insert into menu_item_ingredient values ('M017','pork');
insert into menu_item_ingredient values ('M017','banana leaves');

insert into menu_item_ingredient values ('M018','sticky rice');
insert into menu_item_ingredient values ('M018','coconut milk');
insert into menu_item_ingredient values ('M018','sugar');
insert into menu_item_ingredient values ('M018','mango');

insert into menu_item_ingredient values ('M019','red beans');
insert into menu_item_ingredient values ('M019','mung beans');
insert into menu_item_ingredient values ('M019','jelly');
insert into menu_item_ingredient values ('M019','coconut milk');

insert into menu_item_ingredient values ('M020','peaches');
insert into menu_item_ingredient values ('M020','butter');
insert into menu_item_ingredient values ('M020','sugar');
insert into menu_item_ingredient values ('M020','flour');

insert into menu_item_ingredient values ('M021','wheat flour');
insert into menu_item_ingredient values ('M021','red bean paste');
insert into menu_item_ingredient values ('M021','sugar');

insert into menu_item_ingredient values ('M022','coconut milk');
insert into menu_item_ingredient values ('M022','sugar');
insert into menu_item_ingredient values ('M022','gelatin');

insert into menu_item_ingredient values ('M023','chocolate');
insert into menu_item_ingredient values ('M023','cream');
insert into menu_item_ingredient values ('M023','sugar');
insert into menu_item_ingredient values ('M023','egg whites');

insert into menu_item_ingredient values ('M024','phyllo dough');
insert into menu_item_ingredient values ('M024','walnuts');
insert into menu_item_ingredient values ('M024','honey');
insert into menu_item_ingredient values ('M024','butter');

insert into menu_item_ingredient values ('M025','black sesame');
insert into menu_item_ingredient values ('M025','cream');
insert into menu_item_ingredient values ('M025','sugar');
insert into menu_item_ingredient values ('M025','milk');

insert into menu_item_ingredient values ('M026','honey');
insert into menu_item_ingredient values ('M026','water');
insert into menu_item_ingredient values ('M026','yeast');

insert into menu_item_ingredient values ('M027','basil seeds');
insert into menu_item_ingredient values ('M027','syrup');
insert into menu_item_ingredient values ('M027','ice');
insert into menu_item_ingredient values ('M027','water');

insert into menu_item_ingredient values ('M028','black tea');
insert into menu_item_ingredient values ('M028','spices');
insert into menu_item_ingredient values ('M028','condensed milk');
insert into menu_item_ingredient values ('M028','sugar');

insert into menu_item_ingredient values ('M029','coffee');
insert into menu_item_ingredient values ('M029','condensed milk');
insert into menu_item_ingredient values ('M029','ice');

insert into menu_item_ingredient values ('M030','black tea');
insert into menu_item_ingredient values ('M030','sugar');
insert into menu_item_ingredient values ('M030','water');

insert into menu_item_ingredient values ('M031','rice');
insert into menu_item_ingredient values ('M031','water');
insert into menu_item_ingredient values ('M031','yeast');

insert into menu_item_ingredient values ('M032','lemon');
insert into menu_item_ingredient values ('M032','mint');
insert into menu_item_ingredient values ('M032','sugar');
insert into menu_item_ingredient values ('M032','water');

insert into menu_item_ingredient values ('M033','black tea');
insert into menu_item_ingredient values ('M033','ginger');
insert into menu_item_ingredient values ('M033','sugar');

insert into menu_item_ingredient values ('M034','tamarind');
insert into menu_item_ingredient values ('M034','sugar');
insert into menu_item_ingredient values ('M034','water');

insert into menu_item_ingredient values ('M035','hibiscus');
insert into menu_item_ingredient values ('M035','sugar');
insert into menu_item_ingredient values ('M035','water');

insert into menu_item_ingredient values ('M036','cucumber');
insert into menu_item_ingredient values ('M036','lime');
insert into menu_item_ingredient values ('M036','sugar');
insert into menu_item_ingredient values ('M036','water');

insert into menu_item_ingredient values ('M037','passion fruit');
insert into menu_item_ingredient values ('M037','soda water');
insert into menu_item_ingredient values ('M037','sugar');

insert into menu_item_ingredient values ('M038','coconut water');

insert into menu_item_ingredient values ('M039','roasted corn');
insert into menu_item_ingredient values ('M039','water');

insert into menu_item_ingredient values ('M040','black tea');
insert into menu_item_ingredient values ('M040','milk');
insert into menu_item_ingredient values ('M040','chai spices');
insert into menu_item_ingredient values ('M040','sugar');

insert into menu_item_ingredient values ('M041','rice');
insert into menu_item_ingredient values ('M041','coconut milk');
insert into menu_item_ingredient values ('M041','sugar');
insert into menu_item_ingredient values ('M041','vanilla');

insert into menu_item_ingredient values ('M042','milk powder');
insert into menu_item_ingredient values ('M042','flour');
insert into menu_item_ingredient values ('M042','sugar');
insert into menu_item_ingredient values ('M042','cardamom');

insert into menu_item_ingredient values ('M043','chocolate');
insert into menu_item_ingredient values ('M043','flour');
insert into menu_item_ingredient values ('M043','butter');
insert into menu_item_ingredient values ('M043','sugar');

insert into menu_item_ingredient values ('M044','cream cheese');
insert into menu_item_ingredient values ('M044','matcha');
insert into menu_item_ingredient values ('M044','sugar');
insert into menu_item_ingredient values ('M044','graham crust');

insert into menu_item_ingredient values ('M045','banana');
insert into menu_item_ingredient values ('M045','flour');
insert into menu_item_ingredient values ('M045','honey');
insert into menu_item_ingredient values ('M045','sesame seeds');


prompt ================
prompt menu_item_dietary_tags table inserts 
prompt ================

insert into menu_item_dietary_tags values ('M001','gluten');
insert into menu_item_dietary_tags values ('M001','contains-dairy');

insert into menu_item_dietary_tags values ('M002','pescatarian');
insert into menu_item_dietary_tags values ('M002','gluten-free');

insert into menu_item_dietary_tags values ('M003','vegan');
insert into menu_item_dietary_tags values ('M003','gluten-free');

insert into menu_item_dietary_tags values ('M004','gluten-free');

insert into menu_item_dietary_tags values ('M005','contains-dairy');
insert into menu_item_dietary_tags values ('M005','Gluten');

insert into menu_item_dietary_tags values ('M006','gluten');
insert into menu_item_dietary_tags values ('M006','contains-dairy');

insert into menu_item_dietary_tags values ('M007','gluten-free');
insert into menu_item_dietary_tags values ('M007','pescatarian');

insert into menu_item_dietary_tags values ('M008','vegan');
insert into menu_item_dietary_tags values ('M008','gluten-free');

insert into menu_item_dietary_tags values ('M009','gluten-free');

insert into menu_item_dietary_tags values ('M010','gluten-free');

insert into menu_item_dietary_tags values ('M011','gluten-free');

insert into menu_item_dietary_tags values ('M012','gluten');
insert into menu_item_dietary_tags values ('M012','contains-dairy');

insert into menu_item_dietary_tags values ('M013','gluten');

insert into menu_item_dietary_tags values ('M014','gluten');

insert into menu_item_dietary_tags values ('M015','gluten');

insert into menu_item_dietary_tags values ('M016','vegan');
insert into menu_item_dietary_tags values ('M016','gluten-free');

insert into menu_item_dietary_tags values ('M017','gluten-free');
insert into menu_item_dietary_tags values ('M017','contains-meat');

insert into menu_item_dietary_tags values ('M018','vegan');
insert into menu_item_dietary_tags values ('M018','gluten-free');

insert into menu_item_dietary_tags values ('M019','vegan');
insert into menu_item_dietary_tags values ('M019','gluten-free');

insert into menu_item_dietary_tags values ('M020','contains-dairy');
insert into menu_item_dietary_tags values ('M020','gluten');

insert into menu_item_dietary_tags values ('M021','gluten');
insert into menu_item_dietary_tags values ('M021','vegan');

insert into menu_item_dietary_tags values ('M022','vegan');
insert into menu_item_dietary_tags values ('M022','gluten-free');

insert into menu_item_dietary_tags values ('M023','contains-dairy');
insert into menu_item_dietary_tags values ('M023','gluten');

insert into menu_item_dietary_tags values ('M024','contains-dairy');
insert into menu_item_dietary_tags values ('M024','gluten');

insert into menu_item_dietary_tags values ('M025','contains-dairy');
insert into menu_item_dietary_tags values ('M025','gluten');

insert into menu_item_dietary_tags values ('M026','vegan');
insert into menu_item_dietary_tags values ('M026','gluten-free');
insert into menu_item_dietary_tags values ('M026','contains-alcohol');

insert into menu_item_dietary_tags values ('M027','vegan');
insert into menu_item_dietary_tags values ('M027','gluten-free');

insert into menu_item_dietary_tags values ('M028','contains-dairy');
insert into menu_item_dietary_tags values ('M028','gluten-free');

insert into menu_item_dietary_tags values ('M029','contains-dairy');
insert into menu_item_dietary_tags values ('M029','gluten-free');

insert into menu_item_dietary_tags values ('M030','vegan');
insert into menu_item_dietary_tags values ('M030','gluten-free');

insert into menu_item_dietary_tags values ('M031','vegan');
insert into menu_item_dietary_tags values ('M031','contains-alcohol');

insert into menu_item_dietary_tags values ('M032','vegan');
insert into menu_item_dietary_tags values ('M032','gluten-free');

insert into menu_item_dietary_tags values ('M033','vegan');
insert into menu_item_dietary_tags values ('M033','gluten-free');

insert into menu_item_dietary_tags values ('M034','vegan');
insert into menu_item_dietary_tags values ('M034','gluten-free');

insert into menu_item_dietary_tags values ('M035','vegan');
insert into menu_item_dietary_tags values ('M035','gluten-free');

insert into menu_item_dietary_tags values ('M036','vegan');
insert into menu_item_dietary_tags values ('M036','gluten-free');

insert into menu_item_dietary_tags values ('M037','vegan');
insert into menu_item_dietary_tags values ('M037','gluten-free');

insert into menu_item_dietary_tags values ('M038','vegan');
insert into menu_item_dietary_tags values ('M038','gluten-free');

insert into menu_item_dietary_tags values ('M039','vegan');
insert into menu_item_dietary_tags values ('M039','gluten-free');

insert into menu_item_dietary_tags values ('M040','contains-dairy');
insert into menu_item_dietary_tags values ('M040','gluten-free');

insert into menu_item_dietary_tags values ('M041','contains-dairy');
insert into menu_item_dietary_tags values ('M041','gluten-free');

insert into menu_item_dietary_tags values ('M042','contains-dairy');
insert into menu_item_dietary_tags values ('M042','gluten');

insert into menu_item_dietary_tags values ('M043','contains-dairy');
insert into menu_item_dietary_tags values ('M043','gluten');

insert into menu_item_dietary_tags values ('M044','contains-dairy');
insert into menu_item_dietary_tags values ('M044','gluten');

insert into menu_item_dietary_tags values ('M045','vegan');
insert into menu_item_dietary_tags values ('M045','gluten');


prompt ================
prompt menu_item_allergen_tags table inserts 
prompt ================

delete from menu_item_allergen_tags;

insert into menu_item_allergen_tags values ('M001','dairy');
insert into menu_item_allergen_tags values ('M001','gluten');

insert into menu_item_allergen_tags values ('M002','fish');
insert into menu_item_allergen_tags values ('M002','dairy');

insert into menu_item_allergen_tags values ('M003','soy');
insert into menu_item_allergen_tags values ('M003','sesame');

insert into menu_item_allergen_tags values ('M005','dairy');
insert into menu_item_allergen_tags values ('M005','gluten');

insert into menu_item_allergen_tags values ('M006','gluten');

insert into menu_item_allergen_tags values ('M007','fish');
insert into menu_item_allergen_tags values ('M007','coconut');

insert into menu_item_allergen_tags values ('M008','coconut');

insert into menu_item_allergen_tags values ('M011','soy');
insert into menu_item_allergen_tags values ('M011','sesame');

insert into menu_item_allergen_tags values ('M012','dairy');

insert into menu_item_allergen_tags values ('M014','dairy');

insert into menu_item_allergen_tags values ('M015','dairy');

insert into menu_item_allergen_tags values ('M016','sesame');

insert into menu_item_allergen_tags values ('M018','coconut');

insert into menu_item_allergen_tags values ('M019','coconut');

insert into menu_item_allergen_tags values ('M020','dairy');
insert into menu_item_allergen_tags values ('M020','gluten');

insert into menu_item_allergen_tags values ('M021','gluten');

insert into menu_item_allergen_tags values ('M022','coconut');

insert into menu_item_allergen_tags values ('M023','dairy');
insert into menu_item_allergen_tags values ('M023','eggs');
insert into menu_item_allergen_tags values ('M023','chocolate');

insert into menu_item_allergen_tags values ('M024','nuts');
insert into menu_item_allergen_tags values ('M024','dairy');
insert into menu_item_allergen_tags values ('M024','gluten');

insert into menu_item_allergen_tags values ('M025','dairy');
insert into menu_item_allergen_tags values ('M025','sesame');

insert into menu_item_allergen_tags values ('M028','dairy');

insert into menu_item_allergen_tags values ('M029','dairy');

insert into menu_item_allergen_tags values ('M038','coconut');

insert into menu_item_allergen_tags values ('M040','dairy');

insert into menu_item_allergen_tags values ('M041','dairy');
insert into menu_item_allergen_tags values ('M041','coconut');

insert into menu_item_allergen_tags values ('M042','dairy');
insert into menu_item_allergen_tags values ('M042','gluten');

insert into menu_item_allergen_tags values ('M043','dairy');
insert into menu_item_allergen_tags values ('M043','gluten');
insert into menu_item_allergen_tags values ('M043','chocolate');

insert into menu_item_allergen_tags values ('M044','dairy');
insert into menu_item_allergen_tags values ('M044','gluten');

insert into menu_item_allergen_tags values ('M045','sesame');
insert into menu_item_allergen_tags values ('M045','gluten');


prompt ================
prompt main_course table inserts 
prompt ================

insert into main_course values ('M001', 18, 'Mild');
insert into main_course values ('M002', 20, 'Mild');
insert into main_course values ('M003', 25, 'Medium');
insert into main_course values ('M004', 22, 'Mild');
insert into main_course values ('M005', 17, 'Mild');
insert into main_course values ('M006', 45, 'Hot');
insert into main_course values ('M007', 28, 'Medium');
insert into main_course values ('M008', 30, 'Medium');
insert into main_course values ('M009', 15, 'Mild');
insert into main_course values ('M010', 40, 'Medium');
insert into main_course values ('M011', 26, 'Mild');
insert into main_course values ('M012', 35, 'Medium');
insert into main_course values ('M013', 38, 'Medium');
insert into main_course values ('M014', 32, 'Mild');
insert into main_course values ('M015', 24, 'Medium');


prompt ================
prompt dessert table inserts
prompt ================

insert into dessert values ('M016', 8, 'N');
insert into dessert values ('M017', 5, 'N');
insert into dessert values ('M018', 8, 'Y');
insert into dessert values ('M019', 6, 'N');
insert into dessert values ('M020', 8, 'Y');
insert into dessert values ('M021', 6, 'Y');
insert into dessert values ('M022', 7, 'Y');
insert into dessert values ('M023', 7, 'Y');
insert into dessert values ('M024', 8, 'Y');
insert into dessert values ('M025', 6, 'Y');
insert into dessert values ('M041', 7, 'Y');
insert into dessert values ('M042', 9, 'Y');
insert into dessert values ('M043', 8, 'Y');
insert into dessert values ('M044', 7, 'Y');
insert into dessert values ('M045', 6, 'N');


prompt ================
prompt beverage table inserts
prompt ================
insert into beverage values ('M026','cold',12.00);
insert into beverage values ('M027','cold',0.00);
insert into beverage values ('M028','cold',0.00);
insert into beverage values ('M029','cold',0.00);
insert into beverage values ('M030','cold',0.00);
insert into beverage values ('M031','cold',6.00);
insert into beverage values ('M032','cold',0.00);
insert into beverage values ('M033','cold',0.00);
insert into beverage values ('M034','cold',0.00);
insert into beverage values ('M035','cold',0.00);
insert into beverage values ('M036','cold',0.00);
insert into beverage values ('M037','cold',0.00);
insert into beverage values ('M038','cold',0.00);
insert into beverage values ('M039','cold',0.00);
insert into beverage values ('M040','hot',0.00);


prompt ================
prompt item_cuisine table inserts 
prompt ================

insert into item_cuisine values ('CU02','M001');
insert into item_cuisine values ('CU13','M002');
insert into item_cuisine values ('CU08','M003');
insert into item_cuisine values ('CU15','M004');
insert into item_cuisine values ('CU02','M005');
insert into item_cuisine values ('CU06','M006');
insert into item_cuisine values ('CU07','M007');
insert into item_cuisine values ('CU08','M008');
insert into item_cuisine values ('CU09','M009');
insert into item_cuisine values ('CU10','M010');
insert into item_cuisine values ('CU20','M011');
insert into item_cuisine values ('CU11','M012');
insert into item_cuisine values ('CU11','M013');
insert into item_cuisine values ('CU11','M014');
insert into item_cuisine values ('CU11','M015');
insert into item_cuisine values ('CU06','M016');
insert into item_cuisine values ('CU07','M017');
insert into item_cuisine values ('CU08','M018');
insert into item_cuisine values ('CU09','M019');
insert into item_cuisine values ('CU10','M020');
insert into item_cuisine values ('CU20','M021');
insert into item_cuisine values ('CU08','M022');
insert into item_cuisine values ('CU13','M023');
insert into item_cuisine values ('CU04','M024');
insert into item_cuisine values ('CU20','M025');
insert into item_cuisine values ('CU06','M026');
insert into item_cuisine values ('CU07','M027');
insert into item_cuisine values ('CU08','M028');
insert into item_cuisine values ('CU09','M029');
insert into item_cuisine values ('CU10','M030');
insert into item_cuisine values ('CU20','M031');
insert into item_cuisine values ('CU08','M032');
insert into item_cuisine values ('CU08','M033');
insert into item_cuisine values ('CU08','M034');
insert into item_cuisine values ('CU08','M035');
insert into item_cuisine values ('CU08','M036');
insert into item_cuisine values ('CU08','M037');
insert into item_cuisine values ('CU09','M038');
insert into item_cuisine values ('CU20','M039');
insert into item_cuisine values ('CU13','M040');
insert into item_cuisine values ('CU08','M041');
insert into item_cuisine values ('CU11','M042');
insert into item_cuisine values ('CU13','M043');
insert into item_cuisine values ('CU20','M044');
insert into item_cuisine values ('CU08','M045');



prompt ================
prompt supplier table inserts
prompt ================

insert into supplier
values ('SP01', 'Sunrise Farm', '5035555001','orders@sunriseproduce.com',
        '45 Orchard Rd, Willowcreek, CA', 'Local Farmer');

insert into supplier
values ('SP02', 'Golden Grains Co.', '5035555002','contact@goldengrains.com',
        '120 Wheat Blvd, Ferndale, CA', 'Other Supplier');

insert into supplier
values ('SP03', 'PureSpring Beverages', '5035555003','sales@purespringbev.com',
        '18 Riverbank Dr, Arcata, CA', 'Other Supplier');

insert into supplier
values ('SP04', 'Premium Party Supplies', '5035555004','info@premiumparty.com',
        '210 Festive Ln, Eureka, CA', 'Other Supplier');

insert into supplier
values ('SP05', 'Heritage Meats','5035555005', 'support@heritagemeats.com',
        '72 Butcher Ave, Arcata, CA', 'Local Farmer');

insert into supplier
values ('SP06', 'Green Valley Farms','5035551001', 'contact@greenvalley.com',
        '101 Farm Rd, Willowcreek, CA', 'Local Farmer');

insert into supplier
values ('SP07', 'Metro Produce Co','5035551002', 'sales@metroproduce.com',
        '22 Market St, Stockton, CA', 'Other Supplier');

insert into supplier 
values ('SP08', 'Jersey Farm Ltd','5035551003', 'info@freshdairy.com',
        '88 Milk Ln, Ferndale, CA', 'Local Farmer');

insert into supplier
values ('SP09', 'Artisan Breads','5035551004', 'orders@artisanbread.com',
        '7 Bakery Way, Arcata, CA', 'Other Supplier');

insert into supplier 
values ('SP10', 'Pacific Coast Seafood','5035551005', 'hello@coastalseafood.com',
        '500 Harbor Dr, Eureka, CA', 'Other Supplier');

insert into supplier
values ('SP11', 'Harrell Farms', '5035552001', 'orders@harell.com',
        '1200 Market St, Denver, CO', 'Other Supplier');

insert into supplier
values ('SP12', 'Hundred Acre Orchard', '5035552002',
        'info@hundredacreorchard.com',
        '42 Industrial Ave, Dallas, TX', 'Other Supplier');

insert into supplier
values ('SP13', 'Forkfield Farms', '5035552003', 'info@forkfield.com',
        '88 Harbor Rd, Seattle, WA', 'Local Farmer');

insert into supplier
values ('SP14', 'Bees Knees Apiary', '5035552004', 'service@bka.com',
        '15 Tool Park, Weott, CA', 'Local Farmer');

insert into supplier
values ('SP15', 'Apollo Ranchers', '5035552005', 'info@apolloranchers.com',
        '501 Tech Blvd, San Jose, CA', 'Local Farmer');

insert into supplier
values ('SP16', 'Delphi Strawberry Fields Co.', '5035552006',
        'contact@delphifields.com',
        '302 Berry Patch Rd, Fresno, CA', 'Local Farmer');

insert into supplier
values ('SP17', 'Cornucopia Corn Farm', '5035552007',
        'orders@cornucopiacorn.com',
        '17 Maize Loop, Kneeland, CA', 'Local Farmer');

insert into supplier
values ('SP18', 'Mertz Family Oysters', '5035552008', 'sales@mertzoysters.com',
        '900 Bay Shore Rd, Coos Bay, OR', 'Local Farmer');

insert into supplier
values ('SP19', 'Redwood Herbal Co.', '5035552009', 'info@redwoodherbal.com',
        '302 Forest Glen Rd, Willowcreek, CA', 'Local Farmer');

insert into supplier
values ('SP20','Nathan Fillan','5035552020','natfillan@humboldtproducts.com',
        '120 Willow Creek Rd, Willowcreek, CA','Other Supplier');

insert into supplier
values ('SP21','Coastal Beverage Wholesale','5035552021',
        'sales@coastalbev.com',
        '88 Ocean View Dr, Loleta, CA','Other Supplier');

insert into supplier
values ('SP22','Northern Party Rentals','5035552022','info@northernevents.com',
        '45 Festival Blvd, San Jose, CA','Other Supplier');

insert into supplier
values ('SP23','Sierra Baking Collective','5035552023',
        'orders@sierrabaking.com',
        '19 Hearthstone Ave, Redding, CA','Other Supplier');

insert into supplier
values ('SP24','Cascade Specialty Meats','5035552024',
        'contact@cascademeats.com',
        '501 Butcher Row, San Diego, CA','Other Supplier');

insert into supplier
values ('SP25', 'Commons Traditional Fisheries', '5035552055',
        'info@commonsfisheries.com',
        '77 Wharfside Ln, Newport, OR', 'Local Farmer');

insert into supplier
values ('SP26', 'Horizon Spice Traders', '5035552065',
        'contact@horizonspice.com',
        '55 Caravan Way, Sacramento, CA', 'Other Supplier');

insert into supplier
values ('SP27', 'Everfresh Greens', '5035552075',
        'info@everfreshgreens.com',
        '202 Valley Crest Rd, Chico, CA', 'Local Farmer');

insert into supplier
values ('SP28', 'Harvest Home Bakery', '5035552085',
        'orders@harvesthomebakery.com',
        '18 Hearthside Dr, Medford, OR', 'Other Supplier');

insert into supplier
values ('SP29', 'Blue Mountain Dairy', '5035552095',
        'service@bluemountaindairy.com',
        '600 Meadow Creek Rd, Tillamook, OR', 'Local Farmer');

insert into supplier
values ('SP30', 'Pacific Event Decor', '5035552017',
        'info@pacificeventdecor.com',
        '240 Celebration Ave, San Diego, CA', 'Other Supplier');

insert into supplier
values ('SP31','Bayside Microgreens','7075559832',
    'orders@baysidemicrogreens.com','Bayside, CA','Local Farmer');

insert into supplier
values ('SP32','Redwood Ridge Poultry','7075554920',
        'contact@redwoodridgepoultry.com', 'Blue Lake, CA', 'Local Farmer');

prompt ================
prompt local_farmer table inserts 
prompt ================

insert into local_farmer
values('SP01','Mixed Produce','Northern California');

insert into local_farmer
values('SP05','Beef and Pork','Northern California');

insert into local_farmer
values('SP06','Vegetables','Northern California');

insert into local_farmer
values('SP08','Dairy','Northern California');

insert into local_farmer
values('SP13','Organic Vegetables','Pacific Northwest');

insert into local_farmer
values('SP14','Honey and Beeswax','Northern California');

insert into local_farmer
values('SP15','Grass-fed Beef','Bay Area California');

insert into local_farmer
values('SP16','Strawberries','Central California');

insert into local_farmer
values('SP17','Sweet Corn','Northern California');

insert into local_farmer
values('SP18','Oysters','Pacific Northwest');

insert into local_farmer
values('SP19','Culinary and Medicinal Herbs','Northern California');

insert into local_farmer
values('SP25','Wild-caught Fish','Pacific Northwest');

insert into local_farmer
values('SP27','Leafy Greens','Northern California');

insert into local_farmer
values ('SP29', 'Dairy Products', 'Pacific Northwest');

prompt ================
prompt other_supplier table inserts 
prompt ================

insert into other_supplier
values ('SP02', 'Dry Goods', 'Ferndale');
 
insert into other_supplier
values ('SP03', 'Packaged Beverages', 'Arcata');
 
insert into other_supplier
values ('SP04', 'Party Supplies', 'Eureka');
 
insert into other_supplier
values ('SP07', 'Produce Distribution', 'Stockton');
 
insert into other_supplier
values ('SP09', 'Baked Goods', 'Arcata');
 
insert into other_supplier
values ('SP10', 'Seafood Distribution', 'Eureka');

insert into other_supplier
values('SP11','Grains and Produce','Denver');

insert into other_supplier
values('SP12','Apples and Stone Fruit','Dallas');

insert into other_supplier
values ('SP20', 'Foraged Goods', 'Willowcreek');
 
insert into other_supplier
values ('SP21', 'Beverage Wholesale', 'Loleta');
 
insert into other_supplier
values ('SP22', 'Party Rentals and Supplies', 'San Jose');
 
insert into other_supplier
values ('SP23', 'Bakery Products', 'Redding');
 
insert into other_supplier
values ('SP24', 'Processed Meats', 'San Diego');
 
insert into other_supplier
values ('SP26', 'Spices and Seasonings', 'Sacramento');
 
insert into other_supplier
values ('SP28', 'Bakery Products', 'Medford');
 
 
insert into other_supplier
values ('SP30', 'Event Decor and Supplies', 'San Diego');


prompt ================
prompt supply_order table inserts 
prompt ================

insert into supply_order
values ('SO01','SP05', date '2023-05-02', date '2023-05-06', 'Paid', 'S007');

insert into supply_order
values ('SO02', 'SP02',date '2023-07-15', date '2023-07-20', 'Paid', 'S009');

insert into supply_order
values ('SO03','SP07', date '2023-08-10', date '2023-08-12', 'Pending', 'S003');

insert into supply_order
values ('SO04','SP10', date '2024-01-05', date '2024-01-10', 'Paid', 'S006');

insert into supply_order
values ('SO05', 'SP04',date '2024-03-22', date '2024-03-25', 'On Hold', 'S012');

insert into supply_order
values ('SO06','SP23', date '2024-04-12', date '2024-04-17', 'Paid', 'S016');

insert into supply_order
values ('SO07','SP15', date '2024-05-01', date '2024-05-04', 'Pending', 'S018');

insert into supply_order
values ('SO08','SP26', date '2024-06-18', date '2024-06-20', 'Paid', 'S021');

insert into supply_order
values ('SO09','SP19', date '2024-07-28', date '2024-07-30', 'Paid', 'S009');

insert into supply_order
values ('SO10', 'SP21',date '2024-09-14', date '2024-09-18', 'Pending', 'S028');

insert into supply_order
values ('SO11', 'SP24',date '2024-10-02', date '2024-10-06', 'Paid', 'S020');

insert into supply_order
values ('SO12','SP26', date '2024-12-15', date '2024-12-18', 'Pending', 'S017');

insert into supply_order
values ('SO13', 'SP14',date '2025-01-20', date '2025-01-23', 'Paid', 'S025');

insert into supply_order
values ('SO14', 'SP28',date '2025-02-08', date '2025-02-11', 'On Hold', 'S026');

insert into supply_order
values ('SO15','SP07', date '2025-03-30', date '2025-04-04', 'Pending', 'S030');

insert into supply_order 
values ('SO16', 'SP01', date '2025-04-10', date '2025-04-13', 'Paid', 'S005');

insert into supply_order 
values ('SO17', 'SP03', date '2025-04-12', date '2025-04-15', 'Paid', 'S008');

insert into supply_order 
values ('SO18', 'SP06', date '2025-04-14', date '2025-04-18', 'Pending', 'S010');

insert into supply_order 
values ('SO19', 'SP08', date '2025-04-20', date '2025-04-22', 'Paid', 'S011');

insert into supply_order 
values ('SO20', 'SP09', date '2025-04-22', date '2025-04-27', 'Paid', 'S013');

insert into supply_order 
values ('SO21', 'SP11', date '2025-04-24', date '2025-04-28', 'Paid', 'S014');

insert into supply_order 
values ('SO22', 'SP12', date '2025-04-26', date '2025-04-30', 'Pending', 'S015');

insert into supply_order 
values ('SO23', 'SP13', date '2025-05-01', date '2025-05-04', 'Paid', 'S016');

insert into supply_order 
values ('SO24', 'SP16', date '2025-05-03', date '2025-05-06', 'Paid', 'S017');

insert into supply_order 
values ('SO25', 'SP17', date '2025-05-04', date '2025-05-07', 'Pending', 'S018');

insert into supply_order 
values ('SO26', 'SP18', date '2025-05-06', date '2025-05-09', 'Paid', 'S019');

insert into supply_order 
values ('SO27', 'SP20', date '2025-05-08', date '2025-05-10', 'Pending', 'S020');

insert into supply_order 
values ('SO28', 'SP22', date '2025-05-10', date '2025-05-13', 'Paid', 'S021');

insert into supply_order 
values ('SO29', 'SP25', date '2025-05-12', date '2025-05-15', 'Paid', 'S022');

insert into supply_order 
values ('SO30', 'SP27', date '2025-05-14', date '2025-05-17', 'Pending', 'S023');

insert into supply_order 
values ('SO31', 'SP29', date '2025-05-16', date '2025-05-19', 'Paid', 'S024');

insert into supply_order 
values ('SO32', 'SP30', date '2025-05-18', date '2025-05-21', 'Paid', 'S025');

insert into supply_order
values ('SO33', 'SP31', date '2025-05-22', date '2025-05-25', 'Paid', 'S005');

insert into supply_order
values ('SO34', 'SP32', date '2025-05-24', date '2025-05-28', 'Pending', 'S006');



prompt ================
prompt supply_order_item table inserts 
prompt ================

insert into supply_order_item values ('SO01', 'Beef');
insert into supply_order_item values ('SO01', 'Onions');
insert into supply_order_item values ('SO01', 'Tomatoes');
insert into supply_order_item values ('SO01', 'Ricotta');
insert into supply_order_item values ('SO01', 'Pasta Sheets');

insert into supply_order_item values ('SO02', 'Rice');
insert into supply_order_item values ('SO02', 'Chicken');
insert into supply_order_item values ('SO02', 'Spices');
insert into supply_order_item values ('SO02', 'Herbs');

insert into supply_order_item values ('SO03', 'Fresh Vegetables');
insert into supply_order_item values ('SO03', 'Soy Sauce');
insert into supply_order_item values ('SO03', 'Sesame Oil');

insert into supply_order_item values ('SO04', 'Salmon Fillets');
insert into supply_order_item values ('SO04', 'Lemon');
insert into supply_order_item values ('SO04', 'Butter');

insert into supply_order_item values ('SO05', 'Cookware');
insert into supply_order_item values ('SO05', 'Serving Trays');
insert into supply_order_item values ('SO05', 'Cutlery');
insert into supply_order_item values ('SO05', 'Paper Goods');

insert into supply_order_item values ('SO06', 'Wheat Flour');
insert into supply_order_item values ('SO06', 'Baking Supplies');
insert into supply_order_item values ('SO06', 'Milk Products');
insert into supply_order_item values ('SO06', 'Eggs');

insert into supply_order_item values ('SO07', 'Lamb');
insert into supply_order_item values ('SO07', 'Potatoes');
insert into supply_order_item values ('SO07', 'Carrots');

insert into supply_order_item values ('SO08', 'Coconut Milk');
insert into supply_order_item values ('SO08', 'Sticky Rice');
insert into supply_order_item values ('SO08', 'Mango');

insert into supply_order_item values ('SO09', 'Fresh Herbs');
insert into supply_order_item values ('SO09', 'Beef Bones');
insert into supply_order_item values ('SO09', 'Rice Noodles');

insert into supply_order_item values ('SO10', 'Condensed Milk');
insert into supply_order_item values ('SO10', 'Tea Leaves');
insert into supply_order_item values ('SO10', 'Coffee Beans');

insert into supply_order_item values ('SO11', 'Pork Ribs');
insert into supply_order_item values ('SO11', 'BBQ Rub');
insert into supply_order_item values ('SO11', 'Cooking Utensils');

insert into supply_order_item values ('SO12', 'Chai Spices');
insert into supply_order_item values ('SO12', 'Cream');
insert into supply_order_item values ('SO12', 'Tea Bags');

insert into supply_order_item values ('SO13', 'Honey');
insert into supply_order_item values ('SO13', 'Wine Yeast');
insert into supply_order_item values ('SO13', 'Syrups');

insert into supply_order_item values ('SO14', 'Matcha Powder');
insert into supply_order_item values ('SO14', 'Cream Cheese');
insert into supply_order_item values ('SO14', 'Graham Crumbs');

insert into supply_order_item values ('SO15', 'Bananas');
insert into supply_order_item values ('SO15', 'Sesame Seeds');
insert into supply_order_item values ('SO15', 'Oil for Frying');

insert into supply_order_item values ('SO16', 'Lettuce');
insert into supply_order_item values ('SO16', 'Tomatoes');

insert into supply_order_item values ('SO17', 'Sparkling Water');
insert into supply_order_item values ('SO17', 'Juice Concentrate');

insert into supply_order_item values ('SO18', 'Broccoli');
insert into supply_order_item values ('SO18', 'Spinach');

insert into supply_order_item values ('SO19', 'Milk');
insert into supply_order_item values ('SO19', 'Cheese');

insert into supply_order_item values ('SO20', 'Bread Loaves');
insert into supply_order_item values ('SO20', 'Pastry Dough');

insert into supply_order_item values ('SO21', 'Wheat Berries');
insert into supply_order_item values ('SO21', 'Fresh Corn');

insert into supply_order_item values ('SO22', 'Apples');
insert into supply_order_item values ('SO22', 'Pears');

insert into supply_order_item values ('SO23', 'Carrots');
insert into supply_order_item values ('SO23', 'Beets');

insert into supply_order_item values ('SO24', 'Strawberries');
insert into supply_order_item values ('SO24', 'Berry Puree');

insert into supply_order_item values ('SO25', 'Cornmeal');
insert into supply_order_item values ('SO25', 'Sweet Corn');

insert into supply_order_item values ('SO26', 'Oysters');
insert into supply_order_item values ('SO26', 'Shellfish');

insert into supply_order_item values ('SO27', 'Wild Mushrooms');
insert into supply_order_item values ('SO27', 'Pine Nuts');

insert into supply_order_item values ('SO28', 'Folding Chairs');
insert into supply_order_item values ('SO28', 'Serving Trays');

insert into supply_order_item values ('SO29', 'Salmon');
insert into supply_order_item values ('SO29', 'Rockfish');

insert into supply_order_item values ('SO30', 'Kale');
insert into supply_order_item values ('SO30', 'Baby Spinach');

insert into supply_order_item values ('SO31', 'Milk');
insert into supply_order_item values ('SO31', 'Yogurt');

insert into supply_order_item values ('SO32', 'Table Linens');
insert into supply_order_item values ('SO32', 'Decor Items');

insert into supply_order_item values ('SO33', 'Microgreens');
insert into supply_order_item values ('SO33', 'Baby Lettuce');

insert into supply_order_item values ('SO34', 'Whole Chickens');
insert into supply_order_item values ('SO34', 'Eggs');


prompt ================
prompt cars table inserts
prompt ================

insert into cars
values ('CA01','DEL1234','Van');

insert into cars
values ('CA02','CATE567','Truck');

insert into cars
values ('CA03','FOOD912','Van');

insert into cars
values ('CA04','SERV445','SUV');

insert into cars
values ('CA05','EVT7788','Van');

insert into cars
values ('CA06','ABC1234','Van');

insert into cars
values ('CA07','XYZ5678','Van');

insert into cars
values ('CA08','CAT7890','Truck');

insert into cars 
values ('CA09','FOO1111','Van');

insert into cars
values ('CA10','BAR2222','SUV');

insert into cars
values ('CA11','8GUS164','SUV');

insert into cars
values ('CA12','5GHS742','SUV');

insert into cars
values ('CA13','6ISH835','Van');

insert into cars
values ('CA14','9GJE465','Van');

insert into cars
values ('CA15','8TUJ573','Truck');


prompt ================
prompt equipment table inserts
prompt ================

insert into equipment
values ('EQ01', 'Serving Trays', 50, date '2021-02-10');

insert into equipment
values ('EQ02', 'Coolers', 15, date '2022-06-20');

insert into equipment
values ('EQ03', 'Portable Stoves', 8, date '2023-01-05');

insert into equipment
values ('EQ04', 'Lighting Equipment', 12, date '2021-11-15');

insert into equipment
values ('EQ05', 'Plates', 400, date '2022-04-30');

insert into equipment 
values ('EQ06', 'Chairs', 100, date '2021-03-01');

insert into equipment 
values ('EQ07', 'Tables', 20, date '2021-03-01');

insert into equipment 
values ('EQ08', 'Tents', 5, date '2022-05-10');

insert into equipment 
values ('EQ09', 'Warmers', 10, date '2023-01-15');

insert into equipment
values ('EQ10', 'Glassware', 200, date '2022-09-01');

insert into equipment
values ('EQ11', 'Silverware Sets', 400, date '2023-07-14');

insert into equipment
values ('EQ12', 'Cooking Utensils', 40, date '2024-11-05');

insert into equipment
values ('EQ13', 'Tinfoil', 500, date '2025-10-29');

insert into equipment
values ('EQ14', 'Grill', 6, date '2022-08-13');

insert into equipment
values ('EQ15', 'Flat-Top Grill', 3, date '2022-05-30');


prompt ================
prompt car_allowed_uses table inserts 
prompt ================

insert into car_allowed_uses (CAR_ID, use_type) values ('CA01','Delivery');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA02','Supply');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA03','Delivery');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA04','Event');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA05','Event');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA06','Delivery');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA06','Supply');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA07','Delivery');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA08','Supply');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA09','Delivery');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA10','Event');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA11','Event');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA12','Event');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA13','Delivery');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA14','Supply');
insert into car_allowed_uses (CAR_ID, use_type) values ('CA15','Supply');

prompt ================
prompt car_registration table inserts 
prompt ================

insert into car_registration values ('CA01', DATE '2026-01-31');
insert into car_registration values ('CA02', DATE '2026-02-28');
insert into car_registration values ('CA03', DATE '2026-03-31');
insert into car_registration values ('CA04', DATE '2026-04-30');
insert into car_registration values ('CA05', DATE '2026-05-31');
insert into car_registration values ('CA06', date '2026-06-30');
insert into car_registration values ('CA07', date '2025-12-31');
insert into car_registration values ('CA08', date '2026-03-15');
insert into car_registration values ('CA09', date '2026-01-01');
insert into car_registration values ('CA10', date '2026-09-01');
insert into car_registration values ('CA11', DATE '2026-11-30');
insert into car_registration values ('CA12', DATE '2026-12-31');
insert into car_registration values ('CA13', DATE '2026-01-15');
insert into car_registration values ('CA14', DATE '2026-02-15');
insert into car_registration values ('CA15', DATE '2026-03-15');


prompt ================
prompt equipment_assignment table inserts 
prompt ================

insert into equipment_assignment
values ('EQ13','O001', date '2025-01-03', date '2025-01-03');

insert into equipment_assignment
values ('EQ13','O002', date '2025-01-04', date '2025-01-04');

insert into equipment_assignment
values ('EQ13','O003', date '2025-01-06', date '2025-01-06');

insert into equipment_assignment
values ('EQ13','O004', date '2025-01-09', date '2025-01-12');

insert into equipment_assignment
values ('EQ13','O005', date '2025-01-13', date '2025-01-13');

insert into equipment_assignment
values ('EQ06','O006', date '2025-01-15', date '2025-01-16');

insert into equipment_assignment
values ('EQ07','O006', date '2025-01-15', date '2025-01-16');

insert into equipment_assignment
values ('EQ06','O007', date '2025-03-05', date '2025-03-06');

insert into equipment_assignment
values ('EQ08','O008', date '2025-04-03', date '2025-04-04');

insert into equipment_assignment
values ('EQ09','O009', date '2023-10-01', date '2023-10-02');

insert into equipment_assignment
values ('EQ10','O010', date '2022-11-01', date '2022-11-02');

insert into equipment_assignment
values ('EQ13','O011', date '2025-05-03', date '2025-05-03');

insert into equipment_assignment
values ('EQ13','O012', date '2025-05-05', date '2025-05-03');

insert into equipment_assignment
values ('EQ13','O013', date '2025-05-08', date '2025-05-08');

insert into equipment_assignment
values ('EQ13','O014', date '2025-05-12', date '2025-05-13');

insert into equipment_assignment
values ('EQ13','O015', date '2025-05-16', date '2025-05-16');

insert into equipment_assignment
values ('EQ13','O016', date '2025-04-15', date '2025-04-15');

insert into equipment_assignment
values ('EQ13','O017', date '2025-06-12', date '2025-06-12');

insert into equipment_assignment
values ('EQ13','O018', date '2025-01-07', date '2025-01-07');

insert into equipment_assignment
values ('EQ13','O019', date '2025-08-21', date '2025-08-21');

insert into equipment_assignment
values ('EQ13','O020', date '2025-03-05', date '2025-03-05');

insert into equipment_assignment
values ('EQ13','O021', date '2025-05-10', date '2025-05-10');

insert into equipment_assignment
values ('EQ13','O022', date '2025-09-10', date '2025-09-10');

insert into equipment_assignment
values ('EQ13','O023', date '2025-02-13', date '2025-02-14');

insert into equipment_assignment
values ('EQ13','O024', date '2025-07-18', date '2025-07-18');

insert into equipment_assignment
values ('EQ13','O025', date '2025-07-14', date '2025-07-14');

insert into equipment_assignment
values ('EQ13','O026', date '2025-02-26', date '2025-02-26');

insert into equipment_assignment
values ('EQ13','O027', date '2025-11-09', date '2025-11-09');

insert into equipment_assignment
values ('EQ13','O028', date '2025-05-12', date '2025-05-12');

insert into equipment_assignment
values ('EQ13','O029', date '2025-03-08', date '2025-03-08');

insert into equipment_assignment
values ('EQ13','O030', date '2025-07-28', date '2025-07-28');

insert into equipment_assignment (equipment_id, order_id, date_used, date_returned)
values ('EQ03', 'O014', date '2025-12-01', null);

insert into equipment_assignment (equipment_id, order_id, date_used, date_returned)
values ('EQ05', 'O022', date '2025-12-05', null);

insert into equipment_assignment (equipment_id, order_id, date_used, date_returned)
values ('EQ07', 'O018', date '2025-12-03', null);

insert into equipment_assignment (equipment_id, order_id, date_used, date_returned)
values ('EQ02', 'O009', date '2025-11-20', null);

insert into equipment_assignment (equipment_id, order_id, date_used, date_returned)
values ('EQ06', 'O011', date '2025-11-18', null);

prompt ================
prompt car_assignment table inserts 
prompt ================

insert into car_assignment values ('CA04','O001', date '2025-01-03', date '2025-01-03');
insert into car_assignment values ('CA05','O002', date '2025-01-04', date '2025-01-04');
insert into car_assignment values ('CA10','O003', date '2025-01-06', date '2025-01-06');
insert into car_assignment values ('CA11','O004', date '2025-01-09', date '2025-01-12');
insert into car_assignment values ('CA12','O005', date '2025-01-13', date '2025-01-13');
insert into car_assignment values ('CA04','O006', date '2025-01-15', date '2025-01-15');
insert into car_assignment values ('CA05','O007', date '2025-03-05', date '2025-03-05');
insert into car_assignment values ('CA10','O008', date '2025-04-03', date '2025-04-03');
insert into car_assignment values ('CA11','O009', date '2023-10-01', date '2023-10-01');
insert into car_assignment values ('CA12','O010', date '2022-11-01', date '2022-11-01');
insert into car_assignment values ('CA04','O011', date '2025-05-03', date '2025-05-03');
insert into car_assignment values ('CA05','O012', date '2025-05-05', date '2025-05-03');
insert into car_assignment values ('CA10','O013', date '2025-05-08', date '2025-05-08');
insert into car_assignment values ('CA11','O014', date '2025-05-12', date '2025-05-13');
insert into car_assignment values ('CA12','O015', date '2025-05-16', date '2025-05-16');
insert into car_assignment values ('CA01','O016', date '2025-04-15', date '2025-04-15');
insert into car_assignment values ('CA03','O017', date '2025-06-12', date '2025-06-12');
insert into car_assignment values ('CA06','O018', date '2025-01-07', date '2025-01-07');
insert into car_assignment values ('CA07','O019', date '2025-08-21', date '2025-08-21');
insert into car_assignment values ('CA09','O020', date '2025-03-05', date '2025-03-05');
insert into car_assignment values ('CA07','O021', date '2025-05-10', date '2025-05-10');
insert into car_assignment values ('CA13','O022', date '2025-09-10', date '2025-09-10');
insert into car_assignment values ('CA09','O023', date '2025-02-13', date '2025-02-14');
insert into car_assignment values ('CA13','O024', date '2025-07-18', date '2025-07-18');
insert into car_assignment values ('CA01','O025', date '2025-07-14', date '2025-07-14');
insert into car_assignment values ('CA03','O026', date '2025-02-26', date '2025-02-26');
insert into car_assignment values ('CA06','O027', date '2025-11-09', date '2025-11-09');
insert into car_assignment values ('CA07','O028', date '2025-05-12', date '2025-05-12');
insert into car_assignment values ('CA09','O029', date '2025-03-08', date '2025-03-08');
insert into car_assignment values ('CA13','O030', date '2025-07-28', date '2025-07-28');
