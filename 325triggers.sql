/*
Maxine Mota
Katayoon Seraji Nezhad
CS 325 Fall 2025
12-11-2025*/

-- Trigger 1 to make sure car 7 is only assigned to meal deliveries, enforces a business rule
CREATE OR REPLACE TRIGGER trg_car7_restriction
BEFORE INSERT OR UPDATE OF car_id, order_id ON car_assignment
FOR EACH ROW
DECLARE
    v_count INTEGER;
BEGIN
    if :new.car_id = 'CA07' 
    then
        select count(*)
        INTO v_count
        from meal_delivery
        where order_id = :new.order_id;
        
        if v_count = 0
        then raise_application_error (-20020, 'CA07 for meal delivery only');
        end if;
    end if;
END;
/

-- Trigger to update order_quote to match the items clients ordered & ensure 10 items max for order_items

create or replace trigger trg_order_actual_cost
after insert or update or delete on order_items
begin
   update orders o
   set o.actual_cost = 
        (select nvl(sum(oi.quantity * mi.price),0)
        from order_items oi
        join menu_item mi ON oi.menu_id = mi.menu_id
        where oi.order_id = o.order_id);     
end;
/
