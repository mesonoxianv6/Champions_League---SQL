select
	kos.team_name,
	count(*) as lost_finals
from 
	knock_out_stage kos
where
	kos.knock_out_stage_status = "loser"
group by
	kos.team_name
order by 
	lost_finals DESC