select * from `adventureworks_customers (2)`;
SELECT CustomerKey, Prefix,FirstName,LastName, MaritalStatus FROM `adventureworks_customers (2)`
WHERE CustomerKey > 10000;
UPDATE `adventureworks_customers (2)`
SET Prefix = 'Ms'
WHERE CustomerKey > 10000;
Select count(*) from `adventureworks_customers (2)`;

ALTER TABLE `adventureworks_customers (2)`ADD Age INT;

SELECT FirstName, LastName, annualincome_clean, AVG(DATEDIFF(CURRENT_DATE, COALESCE(BirthDate, CURRENT_DATE)) / 365) AS average_age 
FROM  `adventureworks_customers (2)` 
WHERE  annualincome_clean >= 75000 AND annualincome_clean <= 100000 
GROUP BY  FirstName, LastName, annualincome_clean;

SELECT FirstName,LastName, AVG(TIMESTAMPDIFF(YEAR, BirthDate, CURRENT_DATE())) AS average_age
FROM `adventureworks_customers (2)`
WHERE annualincome_clean BETWEEN 75000 AND 100000;

SELECT AVG(TIMESTAMPDIFF(YEAR, BirthDate, CURDATE())) AS average_age 
FROM `adventureworks_customers (2)`;

UPDATE `adventureworks_customers (2)`
SET BirthDate = STR_TO_DATE(BirthDate, '%m/%d/%Y');
SELECT FirstName, LastName, annualincome_clean, AVG(DATEDIFF(CURRENT_DATE, COALESCE(BirthDate, CURRENT_DATE)) / 365.25) AS average_age 
FROM  `adventureworks_customers (2)` WHERE  annualincome_clean >= 75000 AND annualincome_clean <= 100000 
GROUP BY  FirstName, LastName, annualincome_clean;

SELECT FirstName,LastName,BirthDate FROM `adventureworks_customers (2)`
WHERE DAYNAME(BirthDate) = 'Monday';

SELECT FirstName,LastName FROM `adventureworks_customers (2)`
WHERE EmailAddress IS NULL;

SELECT CustomerKey,FirstName,LastName FROM `adventureworks_customers (2)`
WHERE CustomerKey %2 != 0;

SELECT Occupation, AVG(annualIncome_clean) AS average_annual_income 
FROM `adventureworks_customers (2)` 
WHERE Occupation IN ('Professional', 'Management', 'Clerical','Manual','Skilled Manual')
GROUP BY Occupation;

SELECT FirstName,LastName,annualincome_clean FROM `adventureworks_customers (2)`
WHERE annualIncome_clean = (SELECT MAX(annualIncome_clean) FROM `adventureworks_customers (2)`);

SELECT FirstName,LastName,annualincome_clean FROM `adventureworks_customers (2)`
ORDER BY annualincome_clean DESC;

SELECT FirstName,LastName,EmailAddress FROM `adventureworks_customers (2)`
WHERE EmailAddress LIKE '%@adventure-works.com';

SELECT COUNT(*) AS total_customers
FROM `adventureworks_customers (2)`;

SELECT Gender, MaritalStatus, COUNT(*) AS count_per_marital_status
FROM `adventureworks_customers (2)`
WHERE Gender = 'M' 
GROUP BY Gender, MaritalStatus;

Select FirstName from `adventureworks_customers (2)`
where FirstName like '%a%';

SELECT CustomerKey,FirstName,LastName FROM `adventureworks_customers (2)`
WHERE CustomerKey %2 = 0;

SELECT FirstName,LastName,BirthDate FROM `adventureworks_customers (2)`
WHERE MONTH(BirthDate) = 5;

SELECT FirstName,LastName,Occupation,EducationLevel FROM `adventureworks_customers (2)`
WHERE Occupation in ('Clerical','Manual')
AND EducationLevel in ('Bachelors', 'Graduate Degree');

Select FirstName,LastName,annualincome_clean from `adventureworks_customers (2)`
where annualincome_clean =(select min(annualincome_clean) from`adventureworks_customers (2)`);

Select FirstName,LastName,BirthDate from `adventureworks_customers (2)`
Order by BirthDate desc;

Select Occupation, count(*) as occupation_count  from `adventureworks_customers (2)`
where annualincome_clean between 50000 and 75000 Group by Occupation;

Select FirstName,LastName from `adventureworks_customers (2)`
Where LastName like 'S%';

SELECT MaritalStatus, SUM(annualincome_clean) AS total_annual_income
FROM `adventureworks_customers (2)`
WHERE MaritalStatus = 'M';

Select CustomerKey,FirstName,LastName from `adventureworks_customers (2)` where FirstName = 'JON'
UPDATE `adventureworks_customers (2)` SET FirstName='JANE' where CustomerKey= 11000;
Select CustomerKey,FirstName,LastName from `adventureworks_customers (2)`

Select FirstName, LastName, BirthDate from `adventureworks_customers (2)`
where year(BirthDate) < 1990;

SELECT EducationLevel, COUNT(*) AS Customer_count
FROM `adventureworks_customers (2)` GROUP BY EducationLevel;

select Occupation,Gender, count(*) as Occupation_Count 
from `adventureworks_customers (2)` group by Occupation, Gender;

Select * from `adventureworks_customers (2)`
where FirstName ='MARCO' AND LastName= 'MEHTA';

SELECT * FROM`adventureworks_customers (2)`
WHERE EmailAddress IS NOT NULL;

SELECT Gender,MaritalStatus, avg(annualincome_clean) AS AVG_INCOME
FROM `adventureworks_customers (2)` WHERE Gender = 'F' AND MaritalStatus ='M';

SELECT FirstName,LastName,annualincome_clean FROM `adventureworks_customers (2)`
WHERE annualincome_clean % 10000 = 0;

SELECT FirstName,LastName,TotalChildren FROM `adventureworks_customers (2)`
ORDER BY TotalChildren ASC;

SELECT * FROM `adventureworks_customers (2)`
WHERE FirstName LIKE 'A%' OR FirstName LIKE 'E%' OR FirstName LIKE 'I%' OR FirstName LIKE 'O%' OR FirstName LIKE 'U%';

SELECT AVG(TIMESTAMPDIFF(YEAR, BirthDate, CURDATE())) AS average_age
FROM `adventureworks_customers (2)`
WHERE Occupation = 'Professional' AND EducationLevel = 'Bachelor';

ALTER TABLE `adventureworks_customers (2)`
DROP COLUMN Age;

ALTER TABLE `adventureworks_customers (2)`
ADD COLUMN Age INT;
UPDATE `adventureworks_customers (2)`
SET Age = TIMESTAMPDIFF(YEAR, BirthDate, CURDATE());

select avg (Age) as Avg_Age FROM `adventureworks_customers (2)`
Where Occupation = 'Management' AND EducationLevel = 'Bachelor'
group by Occupation,EducationLevel;

SELECT  AVG(DATEDIFF(CURRENT_DATE, COALESCE(BirthDate, CURRENT_DATE)) / 365.25) AS average_age 
FROM  `adventureworks_customers (2)` Where Occupation = 'Management' AND EducationLevel = 'Bachelor'
group by Occupation,EducationLevel;

SELECT * FROM `adventureworks_customers (2)`
WHERE Occupation = 'Professional' AND EducationLevel = 'Bachelors';

select Occupation,EducationLevel, AVG(Age) AS Avg_Age 
FROM `adventureworks_customers (2)` 
WHERE Occupation = 'Professional' AND EducationLevel = 'Bachelors' 
GROUP BY Occupation,EducationLevel;

SELECT * FROM `adventureworks_customers (2)`
WHERE YEAR(BirthDate) > '1972%';

SELECT FirstName,LastName,MaritalStatus,Gender,TotalChildren
FROM `adventureworks_customers (2)` WHERE TotalChildren = 3;

Select count(*)as customer_count from `adventureworks_customers (2)`
where EmailAddress like '%@adventure-works.com';

SELECT FirstName,LastName,annualincome_clean FROM `adventureworks_customers (2)`
WHERE annualincome_clean >= 50000 AND annualincome_clean <= 75000;



SELECT FirstName,LastName,EmailAddress FROM `adventureworks_customers (2)`
order by EmailAddress asc;


SELECT FirstName,LastName,annualincome_clean FROM `adventureworks_customers (2)`
Where annualincome_clean like '15%';


select Gender,MaritalStatus, count(*) as Total_Customer from `adventureworks_customers (2)`
where Gender='F' and MaritalStatus ='S' group by Gender,MaritalStatus;


Select * from `adventureworks_customers (2)`
where LastName like '%son%';

SELECT * FROM `adventureworks_customers (2)`
WHERE BirthDate IS NOT NULL;

SELECT FirstName, LastName, MaritalStatus, Occupation, avg(annualincome_clean)
FROM `adventureworks_customers (2)`
where MaritalStatus ='M' and Occupation = 'Management' 
group by FirstName, LastName, MaritalStatus, Occupation;

select FirstName,LastName,Occupation from `adventureworks_customers (2)`
order by Occupation desc;

SELECT * FROM `adventureworks_customers (2)`
WHERE DATE(BirthDate) = '1980-04-01';

select * from `adventureworks_customers (2)`
where FirstName='GABRIELLA' and LastName = 'HOWARD';

SELECT * FROM `adventureworks_customers (2)`
WHERE LENGTH(EmailAddress) = 22;

select EducationLevel,Occupation, sum(annualincome_clean) as Total_income
from `adventureworks_customers (2)`
where EducationLevel ='Graduate Degree' and Occupation = 'Clerical';

select * from `adventureworks_customers (2)`
where LastName like '%DER';

select FirstName,LastName,annualincome_clean
 from `adventureworks_customers (2)`
Order by annualincome_clean asc;

Select * from `adventureworks_customers (2)`
where CustomerKey % 2 =0 and month(BirthDate) = 6;

select FirstName,LastName, avg(Age) as Avg_Age
from `adventureworks_customers (2)`
where FirstName = 'FELICIA' and LastName = 'GILL';

Select FirstName, LastName, annualincome_clean 
from `adventureworks_customers (2)`
where annualincome_clean like '%7%';

Select Occupation,EducationLevel, count(*) as Total_count
from `adventureworks_customers (2)`
where Occupation = 'Manual' and EducationLevel = 'Partial College';

Select * from `adventureworks_customers (2)`
where BirthDate < '1990-01-01';

select FirstName,LastName,TotalChildren
from `adventureworks_customers (2)`
order by TotalChildren desc;

select MaritalStatus, Occupation, avg(annualincome_clean) as Avg_income
from `adventureworks_customers (2)`
where MaritalStatus = 'M' and Occupation = 'Clerical';

select FirstName, LastName, BirthDate 
from `adventureworks_customers (2)`
where BirthDate between '1979-01-01' and '1980-03-31';

SELECT * FROM `adventureworks_customers (2)`
WHERE LENGTH(FirstName) - LENGTH(REPLACE(LOWER(FirstName), 'a', '')) +
      LENGTH(FirstName) - LENGTH(REPLACE(LOWER(FirstName), 'e', '')) +
      LENGTH(FirstName) - LENGTH(REPLACE(LOWER(FirstName), 'i', '')) +
      LENGTH(FirstName) - LENGTH(REPLACE(LOWER(FirstName), 'o', '')) +
      LENGTH(FirstName) - LENGTH(REPLACE(LOWER(FirstName), 'u', '')) = 2;
    OR
SELECT * FROM `adventureworks_customers (2)`
WHERE LENGTH(FirstName) - LENGTH(REGEXP_REPLACE(LOWER(FirstName), '[^aeiou]', '')) = 2;      

Select Gender, annualincome_clean, count(*) as Customer_Count
from `adventureworks_customers (2)`
where Gender = 'M' and annualincome_clean between 75000 and 100000
group by Gender, annualincome_clean ;

select FirstName, LastName, EducationLevel
from `adventureworks_customers (2)`
order by EducationLevel asc;

select Gender, MaritalStatus, sum(annualincome_clean) as Total_income
from `adventureworks_customers (2)`
where Gender = 'F' and MaritalStatus = 'M'
group by Gender, MaritalStatus;

select LastName from `adventureworks_customers (2)`
where LastName like 'S%N';

select FirstName, LastName, EducationLevel
from `adventureworks_customers (2)`
where EducationLevel = 'High school';

select * from `adventureworks_customers (2)`
where length(EmailAddress) = 30;

select EducationLevel, Occupation, avg(annualincome_clean)
from `adventureworks_customers (2)`
where EducationLevel = 'Graduate Degree' and Occupation = 'Skilled Manual';

Select * from (select *, row_number() over (partition by Occupation
order by annualincome_clean desc) as Occupation_Rank
 from `adventureworks_customers (2)`)
 as Ranked_Customers  where occupation_Rank = 1;
 
 select FirstName from `adventureworks_customers (2)`
 where FirstName like '%T%';
 
 select MaritalStatus, annualincome_clean, count(*) as Total_customer
 from `adventureworks_customers (2)`
 where MaritalStatus = 'S' and annualincome_clean between 50000 and 75000
 group by  MaritalStatus, annualincome_clean;
 
select LastName from `adventureworks_customers (2)`
where length(LastName) - length(Regexp_replace(Lower(LastName), '[^aeiou]', '')) =2;

Select * from (select *, row_number() over (partition by Occupation
order by BirthDate asc) as Occupation_Rank
 from `adventureworks_customers (2)`)
 as Ranked_Customers  order by Occupation,BirthDate;
 
 select MaritalStatus, EducationLevel, avg(annualincome_clean) as Avg_income
 from `adventureworks_customers (2)`
 where MaritalStatus = 'M' and EducationLevel = 'Bachelors';
 
 Select FirstName, LastName, EmailAddress from `adventureworks_customers (2)`
 where EmailAddress like '%@%';
 
 select Occupation, Gender, sum(annualincome_clean) as Total_income
 from `adventureworks_customers (2)`
 where Occupation = 'Management' and Gender = 'M'
 group by Occupation, Gender; 
 
 select FirstName from `adventureworks_customers (2)`
 where FirstName like 'A%A';
 
select FirstName, LastName, MaritalStatus, TotalChildren row_number() over (partition by MaritalStatus
order by TotalChildren desc) as Maritualstatus_Rank
 from `adventureworks_customers (2)`
order by Occupation, TotalChildren desc;