-- Find departments having more than 1 employee
-- Find job roles where total salary is greater than 60,000
-- Find cities where average salary is greater than 50,000
-- Find departments where maximum salary is above 65,000
-- Find job roles where total experience is greater than 5 years
-- Find departments having average age greater than 30
-- Find cities with more than 1 active employee
-- Find job roles where minimum salary is greater than 40,000
-- Find departments where total salary is less than 100,000
-- Find cities where average experience is greater than 5 year

select department from schema.tablename group by department having count(emp_id)>1;
select job_role from schema.tablename group by job_role having salary>60000;
select city, avg(salary) from schema.tablename group by city having avg(salary)>50000;
select department from schema.tablename group by department having salary>65000;
select job_role from schema.tablename group by job_role having experience_years>5;
select department from schema.tablename group by department having avg(age)>30;
select city from schema.tablename group by city having count(emp_id)>1;
select job_role from schema.tablename group by job_role having min(salary)>40000;
select department from schema.tablename group by department having sum(salary)<10000;
select city from schema.tablename group by city having avg(experience_years)>5;
