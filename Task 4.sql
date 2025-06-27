use students_sm;
select *from `students social media addiction`;


-- using the avg function for sleep time
select *, (select avg(Sleep_Hours_Per_Night)from `students social media addiction`) as avg_sleep 
from `students social media addiction`;

-- using count and aggregate function to calculate total number of females
select Gender, 
	count(CASE WHEN Gender = 'Male' Then 1 End) AS male_count,
	count(CASE WHEN Gender = 'Female' Then 1 End) AS female_count,
    MAX(Student_ID) AS student_id -- Aggregating Student_ID with MAX
from `students social media addiction`
group by Gender;

-- Using the sum function
Select Gender,
	round(sum(Avg_Daily_Usage_Hours),2) as total_time
from `students social media addiction`
group by Gender;

-- Using having clause
Select Gender,Age
from `students social media addiction`
group by Country
Having Min(Mental_Health_Score) AND 'Age'<22;

SELECT 
    Gender, 
    Age
FROM `students social media addiction`
GROUP BY Country,Gender,Age
HAVING MIN(Mental_Health_Score) > 5 AND Age < 22
LIMIT 1000;



