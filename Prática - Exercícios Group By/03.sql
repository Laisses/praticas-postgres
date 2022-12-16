SELECT
    users.name AS writer,
    COUNT("writerId") AS testimonialCount
FROM
    testimonials
JOIN
    users
ON
    users.id = testimonials."writerId"
WHERE
    "writerId"=435
GROUP BY
    users.name;
