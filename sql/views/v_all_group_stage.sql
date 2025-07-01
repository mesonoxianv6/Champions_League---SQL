create view v_all_group_stage as 
select *
from group_stage
union all
select *
from secound_group_stage
