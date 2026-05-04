WITH expensive_flights AS (
    SELECT * FROM flights WHERE price > 500
)
SELECT * FROM expensive_flights;

WITH flight_details AS (
    SELECT a.airline_name, f.source, f.destination, f.price
    FROM flights f
    JOIN airlines a ON f.airline_id = a.airline_id
)
SELECT * FROM flight_details;

WITH avg_price AS (
    SELECT airline_id, AVG(price) AS avg_price
    FROM flights
    GROUP BY airline_id
)
SELECT * FROM avg_price;

WITH avg_price AS (
    SELECT airline_id, AVG(price) AS avg_price
    FROM flights
    GROUP BY airline_id
)
SELECT * FROM avg_price
WHERE avg_price > 700;

WITH ranked_flights AS (
    SELECT *,
           RANK() OVER (PARTITION BY airline_id ORDER BY price DESC) AS rnk
    FROM flights
)
SELECT * FROM ranked_flights;

WITH ranked_flights AS (
    SELECT *,
           RANK() OVER (PARTITION BY airline_id ORDER BY price DESC) AS rnk
    FROM flights
)
SELECT * FROM ranked_flights WHERE rnk = 1;

WITH RECURSIVE flight_paths AS (
    SELECT flight_id, source, destination, 1 AS level
    FROM flights
    WHERE source = 'Delhi'

    UNION ALL

    SELECT f.flight_id, fp.source, f.destination, fp.level + 1
    FROM flights f
    JOIN flight_paths fp ON f.source = fp.destination
)
SELECT * FROM flight_paths;

WITH duplicates AS (
    SELECT source, destination, departure_time, COUNT(*) AS cnt
    FROM flights
    GROUP BY source, destination, departure_time
    HAVING COUNT(*) > 1
)
SELECT * FROM duplicates;

WITH running_total AS (
    SELECT *,
           SUM(price) OVER (
               PARTITION BY airline_id
               ORDER BY departure_time
           ) AS running_total
    FROM flights
)
SELECT * FROM running_total;

WITH flight_count AS (
    SELECT airline_id, COUNT(*) AS total_flights
    FROM flights
    GROUP BY airline_id
),
avg_price AS (
    SELECT airline_id, AVG(price) AS avg_price
    FROM flights
    GROUP BY airline_id
)
SELECT fc.airline_id, fc.total_flights, ap.avg_price
FROM flight_count fc
JOIN avg_price ap ON fc.airline_id = ap.airline_id;



SELECT * FROM flights
WHERE price > 500;

SELECT airline_name, source, destination, price
FROM (
    SELECT a.airline_name, f.source, f.destination, f.price
    FROM flights f
    JOIN airlines a ON f.airline_id = a.airline_id
) AS sub;

SELECT airline_id,
       (SELECT AVG(price)
        FROM flights f2
        WHERE f2.airline_id = f1.airline_id) AS avg_price
FROM flights f1
GROUP BY airline_id;

SELECT airline_id
FROM flights f1
GROUP BY airline_id
HAVING AVG(price) > 700;

SELECT f1.*,
       (SELECT COUNT(*)
        FROM flights f2
        WHERE f2.airline_id = f1.airline_id
        AND f2.price > f1.price) + 1 AS rank
FROM flights f1;

SELECT *
FROM flights f1
WHERE price = (
    SELECT MAX(price)
    FROM flights f2
    WHERE f2.airline_id = f1.airline_id
);

SELECT f1.source, f1.destination, f2.destination AS next_stop
FROM flights f1
JOIN flights f2 ON f1.destination = f2.source
WHERE f1.source = 'Delhi';

SELECT *
FROM flights
WHERE (source, destination, departure_time) IN (
    SELECT source, destination, departure_time
    FROM flights
    GROUP BY source, destination, departure_time
    HAVING COUNT(*) > 1
);

SELECT f1.*,
       (SELECT SUM(price)
        FROM flights f2
        WHERE f2.airline_id = f1.airline_id
        AND f2.departure_time <= f1.departure_time) AS running_total
FROM flights f1;

SELECT airline_id,
       (SELECT COUNT(*) FROM flights f2 WHERE f2.airline_id = f1.airline_id) AS total_flights,
       (SELECT AVG(price) FROM flights f3 WHERE f3.airline_id = f1.airline_id) AS avg_price
FROM flights f1
GROUP BY airline_id;
