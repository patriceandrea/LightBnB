SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM reservations
  JOIN properties ON reservations.property_id = properties.id
  JOIN property_reviews ON reservations.id = reservation_id
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10; 