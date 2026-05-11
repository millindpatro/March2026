-- =========================================
-- RETAIL BILLING SYSTEM EXCEPTION HANDLING
-- Student Task:
-- Fill all missing code sections
-- =========================================

DECLARE

    -- Product details
    product_id        NUMBER := 101;
    product_name      VARCHAR2(20);

    -- Inventory details
    available_stock   NUMBER := 5;
    requested_qty     NUMBER := 2;

    -- Billing details
    product_price     NUMBER := 2500;
    total_amount      NUMBER;

    -- Customer details
    customer_name     VARCHAR2(5);

    -- Discount
    discount_percent  NUMBER := 12;
    final_amount      NUMBER;

    out_of_stock EXCEPTION;

BEGIN

    -- =========================================
    -- TASK 1:
    -- Write formula to calculate total amount
    -- Hint:
    -- total_amount = quantity * price
    -- =========================================

    total_amount:=requested_qty*product_price;


    -- =========================================
    -- TASK 2:
    -- Check stock availability
    -- Hint:
    -- If requested quantity is greater than stock
    -- raise custom exception
    -- =========================================

    If requested_qty>available_stock then
        raise out_of_stock;
    end if;


    -- =========================================
    -- TASK 3:
    -- Assign long customer name
    -- Hint:
    -- This should generate VALUE_ERROR
    -- =========================================

    customer_name:='smokesomedrinksomepopne';


    -- =========================================
    -- TASK 4:
    -- Calculate discount percentage
    -- Hint:
    -- Divide total amount by discount_percent
    -- =========================================

    discount_percent:=total_amount/discount_percent;
    final_amount:=total_amount-(discount_percent*100);


    -- =========================================
    -- TASK 5:
    -- Print final bill amount
    -- =========================================

    dbms_output.put_line('Final bill:' || final_amount);


EXCEPTION

    -- =========================================
    -- TASK 6:
    -- Handle divide by zero error
    -- Hint:
    -- Use predefined exception
    -- =========================================

    WHEN zero_divide THEN
        DBMS_OUTPUT.PUT_LINE('Cannot divide by zero');


    -- =========================================
    -- TASK 7:
    -- Handle value size exceeded error
    -- Hint:
    -- Happens because customer_name size is small
    -- =========================================

    WHEN value_error THEN
        DBMS_OUTPUT.PUT_LINE('value exceeded');


    -- =========================================
    -- TASK 8:
    -- Handle invalid stock situation
    -- Hint:
    -- Use custom exception handling
    -- =========================================

    WHEN out_of_stock THEN
        DBMS_OUTPUT.PUT_LINE('Out of Stock');


    -- =========================================
    -- TASK 9:
    -- Generic exception handling
    -- Hint:
    -- Use SQLERRM
    -- =========================================

    WHEN others THEN
        DBMS_OUTPUT.PUT_LINE('Other error');


END;
/
