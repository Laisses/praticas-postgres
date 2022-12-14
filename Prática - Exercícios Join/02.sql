SELECT
testimonials.id AS id, users1.name AS writer, users2.name AS recipient, testimonials.message
FROM testimonials
JOIN users AS users1
ON testimonials."writerId" = users1.id
JOIN users AS users2
ON testimonials."recipientId" = users2.id;
