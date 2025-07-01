select
	distinct team_name,
	count(*) as dropped_out
from 
	v_all_group_stage
where
	group_stage_place in ('drop out')
group by
	team_name
order by dropped_out DESC