
select
	distinct team_name,
	count(*) as group_winning
from 
	v_all_group_stage
where
	group_stage_place in ('advance to final', 'first place')
group by
	team_name
order by group_winning DESC
