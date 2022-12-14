SELECT
    schools.id AS id,
    schools.name AS school,
    courses.name AS course,
    companies.name AS company,
    roles.name AS role
FROM
    schools
JOIN
    educations
ON
    schools.id = educations."schoolId"
JOIN
    users
ON
    educations."userId" = users.id
JOIN
    courses
ON
    educations."courseId" = courses.id
JOIN
    applicants
ON
    users.id = applicants."userId"
JOIN
    jobs
ON
    applicants."jobId" = jobs.id
JOIN
    companies
ON
    jobs."companyId" = companies.id
JOIN
    roles
ON
    jobs."roleId" = roles.id

WHERE jobs."companyId" = 10
AND jobs.active = true
AND roles.name = 'Software Engineer';
