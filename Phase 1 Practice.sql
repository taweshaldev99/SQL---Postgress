select * from ai_impact_on_job where "Job_Title" = 'Security Guard';

select distinct "Job_Title" from ai_impact_on_job ;   -- gives unique value


select * 
from ai_impact_on_job
order by "Skill_3" desc ;  
`
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