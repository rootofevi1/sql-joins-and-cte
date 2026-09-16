SELECT
  pz.name AS pizzeria_name
FROM
  pizzeria pz
  JOIN menu m ON(pz.id = m.pizzeria_id)
  JOIN person_visits pv ON(pz.id = pv.pizzeria_id)
  JOIN person p ON(pv.person_id = p.id)
WHERE
  pv.visit_date = '2022-01-08'
  AND m.price < 800
  AND p.name = 'Dmitriy';
