SELECT
    s.name AS school,
    c.name AS course,
    COUNT(e."userId") AS studentCount,
    e.status AS status
FROM
    educations AS e
JOIN
    schools AS s
ON
    e."schoolId" = s.id
JOIN
    courses AS c
ON
    e."courseId" = c.id
WHERE
    e.status = 'ongoing' OR  e.status = 'finished'
GROUP BY
    s.name,
    c.name,
    e.status
ORDER BY
    studentCount
DESC
LIMIT 3;
