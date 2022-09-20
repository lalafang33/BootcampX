SELECT students.name as student, avg(assignment)submissions.duration) as average_assigment_duration, avg(assignments.duration) as average_estimated_duration 
FROM students 
JOIN assignment_submissions ON student_id = students.id 
JOIN assignemnts ON assisgnments.id = assignment_id
WHERE end_date IS NULL 
GROUP BY student
HAVING ave(assignment_submissions.duration) < avg(assignemnts.duration)
ORDER BY average_assigment_duration;