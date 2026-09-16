SELECT
  m.pizza_name,
  pz.name AS pizzeria_name,
  m.price
FROM
  menu m
  JOIN pizzeria pz ON (pz.id = m.pizzeria_id)
WHERE
  m.pizza_name = 'mushroom pizza'
  OR pizza_name = 'pepperoni pizza'
ORDER BY
  1,
  2;
