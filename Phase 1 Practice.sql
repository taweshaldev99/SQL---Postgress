select * from ai_impact_on_job where "Job_Title" = 'Security Guard';

select distinct "Job_Title" from ai_impact_on_job ;   -- gives unique value


select * 
from ai_impact_on_job
order by "Skill_3" desc ;  

select * 
from ai_impact_on_job
order by "Skill_4" desc, "Skill_6" asc  ;  

select * 
from ai_impact_on_job 
where "Job_Title" = 'Nurse' and "AI_Exposure_Index" = '0.75' ;  -- and is used for different headers 


select * 
from ai_impact_on_job 
where "Job_Title" = 'Security Guard' or  "Job_Title" = 'Nurse' ; --or is used for same header

select *
from ai_impact_on_job 
where not "Job_Title" = 'Security Guard';   -- not is used to skip those who doesn't meet speicified criterias


insert into ai_impact_on_job 
values ('Data Engineer', '800000','10','Bachelor''s','0.03','1.56','0.45','Medium','0.56','0.33','0.23','0.87','0.99','0.45','0.87','0.43','0.98','0.32');  -- 's case 

select * 
from ai_impact_on_job 
where "Average_Salary" = '800000';

insert into ai_impact_on_job ("Job_Title","Average_Salary","Education_Level")            --add values in specific columns 
values ('Chaprasi''s','20000','+2 Pass')


select * from ai_impact_on_job where "Average_Salary" = '20000';


select * from ai_impact_on_job 
where "Risk_Category" is null 
and "AI_Exposure_Index" is not null;

insert into ai_impact_on_job ("Job_Title","Average_Salary","Education_Level","AI_Exposure_Index")            --add values in specific columns 
values ('Chaprii','20000','+2 Pass','0.23');

delete 
from ai_impact_on_job
where "Job_Title" = 'Security Guard';

select * from ai_impact_on_job
limit 8;


-- Aggregrate Function
select min("Years_Experience") from ai_impact_on_job;

select max("Years_Experience") from ai_impact_on_job;



    -- Count
select count(*) from ai_impact_on_job;
select count("Average_Salary") from ai_impact_on_job;
select count(distinct "Job_Title") from ai_impact_on_job;

-- Qn: Count the number of Average Salary which is higher than 50000
select count(distinct "Average_Salary") from ai_impact_on_job where "Average_Salary" > 50000 ;


-- SUM fxn
select sum("Years_Experience") from ai_impact_on_job where "Education_Level" = 'PhD';

select sum("Average_Salary") from ai_impact_on_job;

-- Avg Fxn
--  decimal value paxi ko lai count garna ROund , value rakhne 
select Round(AVG("Average_Salary"),4) 
from ai_impact_on_job 
where "Average_Salary" > 30000 ;				


-- Like 
-- The LIKE operator is used in a WHERE clause to search for a specified pattern within a column's text data.
-- two wildcards often used in conjunction with the LIKE operator:
-- A percent sign % - represents zero, one, or multiple characters
-- A underscore sign _ - represents a single character

-- Qn: Select all Job-Title with that starts with the letter "a":
select * 
from ai_impact_on_job
where "Job_Title" like 'T%'; 

SELECT * 
FROM ai_impact_on_job 
WHERE "AI_Exposure_Index"::TEXT LIKE '1%';

--The _ Wildcard
-- Return all Job Title from a table that starts with 'N' followed by one wildcard character, then 'rs' and then two wildcard characters:

select *
from ai_impact_on_job 
where "Job_Title" like 'N_rs_' ;

SELECT *
FROM customer 
WHERE city = "Kathmandu" OR city ="Pokhara"
AND salary = 10000