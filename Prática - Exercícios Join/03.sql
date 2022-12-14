SELECT users.id AS id, users.name AS name, courses.name AS course, schools.name AS school, educations."endDate"
FROM educations
JOIN users
ON educations."userId" = users.id
JOIN schools
ON educations."schoolId" = schools.id
JOIN courses
ON educations."courseId" = courses.id
WHERE educations.status = 'finished';
