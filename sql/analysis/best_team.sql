select
	kos.team_name,
	count(*) as wins,
	group_concat(s.season_year order by s.season_year separator ', ') as win_years
from 
	knock_out_stage kos
join
	seasons s
on 
	s.season_id = kos.season_id
where
	kos.knock_out_stage_status = "winner"
group by
	kos.team_name
order by 
	wins DESC