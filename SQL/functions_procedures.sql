/* =========================================================
   ORACLE PL/SQL - 20 FUNCTIONS AND 20 PROCEDURES
   ========================================================= */

/* =========================
   FUNCTIONS
   ========================= */

-- 1. Addition Function

/* =========================================================
   ORACLE PL/SQL - 20 FUNCTIONS AND 20 PROCEDURES
   ========================================================= */

/* =========================
   FUNCTIONS
   ========================= */

-- 1. Addition Function
CREATE OR REPLACE FUNCTION fn_add(a NUMBER, b NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN a + b;
END;
/

-- 2. Subtraction Function
CREATE OR REPLACE FUNCTION fn_subtract(a NUMBER, b NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN a - b;
END;
/

-- 3. Multiplication Function
CREATE OR REPLACE FUNCTION fn_multiply(a NUMBER, b NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN a * b;
END;
/

-- 4. Division Function
CREATE OR REPLACE FUNCTION fn_divide(a NUMBER, b NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN a / b;
END;
/

-- 5. Square Function
CREATE OR REPLACE FUNCTION fn_square(a NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN a * a;
END;
/

-- 6. Cube Function
CREATE OR REPLACE FUNCTION fn_cube(a NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN a * a * a;
END;
/

-- 7. Even or Odd Function
CREATE OR REPLACE FUNCTION fn_even_odd(a NUMBER)
RETURN VARCHAR2
IS
BEGIN
    IF MOD(a,2)=0 THEN
        RETURN 'EVEN';
    ELSE
        RETURN 'ODD';
    END IF;
END;
/

-- 8. Maximum Number Function
CREATE OR REPLACE FUNCTION fn_max(a NUMBER, b NUMBER)
RETURN NUMBER
IS
BEGIN
    IF a > b THEN
        RETURN a;
    ELSE
        RETURN b;
    END IF;
END;
/

-- 9. Minimum Number Function
CREATE OR REPLACE FUNCTION fn_min(a NUMBER, b NUMBER)
RETURN NUMBER
IS
BEGIN
    IF a < b THEN
        RETURN a;
    ELSE
        RETURN b;
    END IF;
END;
/

-- 10. Factorial Function
CREATE OR REPLACE FUNCTION fn_factorial(n NUMBER)
RETURN NUMBER
IS
    fact NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        fact := fact * i;
    END LOOP;
    RETURN fact;
END;
/

-- 11. String Length Function
CREATE OR REPLACE FUNCTION fn_string_length(txt VARCHAR2)
RETURN NUMBER
IS
BEGIN
    RETURN LENGTH(txt);
END;
/

-- 12. Uppercase Function
CREATE OR REPLACE FUNCTION fn_uppercase(txt VARCHAR2)
RETURN VARCHAR2
IS
BEGIN
    RETURN UPPER(txt);
END;
/

-- 13. Lowercase Function
CREATE OR REPLACE FUNCTION fn_lowercase(txt VARCHAR2)
RETURN VARCHAR2
IS
BEGIN
    RETURN LOWER(txt);
END;
/

-- 14. Reverse String Function
CREATE OR REPLACE FUNCTION fn_reverse(txt VARCHAR2)
RETURN VARCHAR2
IS
BEGIN
    RETURN REVERSE(txt);
END;
/

-- 15. Current Date Function
CREATE OR REPLACE FUNCTION fn_current_date
RETURN DATE
IS
BEGIN
    RETURN SYSDATE;
END;
/

-- 16. Age Calculation Function
CREATE OR REPLACE FUNCTION fn_age(dob DATE)
RETURN NUMBER
IS
BEGIN
    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, dob)/12);
END;
/

-- 17. Simple Interest Function
CREATE OR REPLACE FUNCTION fn_simple_interest(p NUMBER, r NUMBER, t NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN (p*r*t)/100;
END;
/

-- 18. Circle Area Function
CREATE OR REPLACE FUNCTION fn_circle_area(radius NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN 3.14 * radius * radius;
END;
/

-- 19. Palindrome Function
CREATE OR REPLACE FUNCTION fn_palindrome(txt VARCHAR2)
RETURN VARCHAR2
IS
BEGIN
    IF txt = REVERSE(txt) THEN
        RETURN 'PALINDROME';
    ELSE
        RETURN 'NOT PALINDROME';
    END IF;
END;
/

-- 20. Salary Hike Function
CREATE OR REPLACE FUNCTION fn_salary_hike(salary NUMBER, percent NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN salary + (salary * percent/100);
END;
/

/* =========================
   PROCEDURES
   ========================= */

-- 1. Hello Procedure
CREATE OR REPLACE PROCEDURE pr_hello
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
END;
/

-- 2. Print Number
CREATE OR REPLACE PROCEDURE pr_print_number(n NUMBER)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('NUMBER: ' || n);
END;
/

-- 3. Addition Procedure
CREATE OR REPLACE PROCEDURE pr_add(a NUMBER, b NUMBER)
IS
    c NUMBER;
BEGIN
    c := a + b;
    DBMS_OUTPUT.PUT_LINE('SUM: ' || c);
END;
/

-- 4. Subtraction Procedure
CREATE OR REPLACE PROCEDURE pr_subtract(a NUMBER, b NUMBER)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('SUBTRACTION: ' || (a-b));
END;
/

-- 5. Multiplication Procedure
CREATE OR REPLACE PROCEDURE pr_multiply(a NUMBER, b NUMBER)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('MULTIPLICATION: ' || (a*b));
END;
/

-- 6. Division Procedure
CREATE OR REPLACE PROCEDURE pr_divide(a NUMBER, b NUMBER)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('DIVISION: ' || (a/b));
END;
/

-- 7. Employee Insert Procedure
CREATE OR REPLACE PROCEDURE pr_insert_emp(
    p_id NUMBER,
    p_name VARCHAR2,
    p_salary NUMBER
)
IS
BEGIN
    INSERT INTO employee(emp_id, emp_name, salary)
    VALUES(p_id, p_name, p_salary);

    COMMIT;
END;
/

-- 8. Employee Update Salary
CREATE OR REPLACE PROCEDURE pr_update_salary(
    p_id NUMBER,
    p_salary NUMBER
)
IS
BEGIN
    UPDATE employee
    SET salary = p_salary
    WHERE emp_id = p_id;

    COMMIT;
END;
/

-- 9. Employee Delete Procedure
CREATE OR REPLACE PROCEDURE pr_delete_emp(p_id NUMBER)
IS
BEGIN
    DELETE FROM employee
    WHERE emp_id = p_id;

    COMMIT;
END;
/

-- 10. Print Current Date
CREATE OR REPLACE PROCEDURE pr_current_date
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE(SYSDATE);
END;
/

-- 11. Even or Odd Procedure
CREATE OR REPLACE PROCEDURE pr_even_odd(n NUMBER)
IS
BEGIN
    IF MOD(n,2)=0 THEN
        DBMS_OUTPUT.PUT_LINE('EVEN');
    ELSE
        DBMS_OUTPUT.PUT_LINE('ODD');
    END IF;
END;
/

-- 12. Factorial Procedure
CREATE OR REPLACE PROCEDURE pr_factorial(n NUMBER)
IS
    fact NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        fact := fact * i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('FACTORIAL: ' || fact);
END;
/

-- 13. Loop Numbers Procedure
CREATE OR REPLACE PROCEDURE pr_loop_numbers
IS
BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/

-- 14. Print Employee Count
CREATE OR REPLACE PROCEDURE pr_employee_count
IS
    total NUMBER;
BEGIN
    SELECT COUNT(*) INTO total
    FROM employee;

    DBMS_OUTPUT.PUT_LINE('TOTAL EMPLOYEES: ' || total);
END;
/

-- 15. Print Employee Salary
CREATE OR REPLACE PROCEDURE pr_employee_salary(p_id NUMBER)
IS
    sal NUMBER;
BEGIN
    SELECT salary INTO sal
    FROM employee
    WHERE emp_id = p_id;

    DBMS_OUTPUT.PUT_LINE('SALARY: ' || sal);
END;
/

-- 16. String Reverse Procedure
CREATE OR REPLACE PROCEDURE pr_reverse(txt VARCHAR2)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE(REVERSE(txt));
END;
/

-- 17. Uppercase Procedure
CREATE OR REPLACE PROCEDURE pr_upper(txt VARCHAR2)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE(UPPER(txt));
END;
/

-- 18. Lowercase Procedure
CREATE OR REPLACE PROCEDURE pr_lower(txt VARCHAR2)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE(LOWER(txt));
END;
/

-- 19. Bonus Calculation Procedure
CREATE OR REPLACE PROCEDURE pr_bonus(
    salary NUMBER,
    bonus_percent NUMBER
)
IS
    bonus NUMBER;
BEGIN
    bonus := salary * bonus_percent / 100;

    DBMS_OUTPUT.PUT_LINE('BONUS: ' || bonus);
END;
/

-- 20. Swap Two Numbers Procedure
CREATE OR REPLACE PROCEDURE pr_swap(
    a IN OUT NUMBER,
    b IN OUT NUMBER
)
IS
    temp NUMBER;
BEGIN
    temp := a;
    a := b;
    b := temp;
END;
/
