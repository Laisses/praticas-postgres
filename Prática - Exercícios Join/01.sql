SELECT users.id AS id, users.name AS name, cities.name AS city
FROM users
JOIN cities on users."cityId" = cities.id;