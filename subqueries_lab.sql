SELECT COUNT(*) AS num_copies
FROM inventory
WHERE film_id = (
    SELECT film_id
    FROM film
    WHERE title = 'Hunchback Impossible'
);
SELECT title, length
FROM film
WHERE length > (SELECT AVG(length) FROM film);
SELECT first_name, last_name
FROM actor
WHERE actor_id IN (
    SELECT actor_id
    FROM film_actor
    WHERE film_id = (
        SELECT film_id
        FROM film
        WHERE title = 'Alone Trip'
    )
);
