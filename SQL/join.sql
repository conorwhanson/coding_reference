
-- Create tables and import data
CREATE TABLE players (
	id serial primary key,
	player_id INT,
	first_name VARCHAR,
	last_name VARCHAR,
	hand VARCHAR(10),
	country_code VARCHAR(10),
	last_updated timestamp default localtimestamp
);
-- Create the matches table
CREATE TABLE matches (
	id serial primary key,
	loser_age DEC,
	loser_id INT,
	loser_name VARCHAR,
	loser_rank INT,
	winner_age DEC,
	winner_id INT,
	winner_name VARCHAR,
	winner_rank INT,
	last_updated timestamp default localtimestamp
);

select * 
from players
limit 5;

select *
from matches
limit 5;

select 
	p.country_code,
	count(*) as num_losers
from matches m
join players p on p.player_id = m.loser_id
group by 
	p.country_code
	order by num_losers desc
	
select
	p.player_id,
	p.player,
	ss.year,
	ss.tm,
	ss.ft_percentage,
	ss.two_point_percentage,
	ss.fg_percentage
from
	seasons_stats ss
	join players p on p.player_id = ss.player_id
order by
	ss.year asc,
	ss.fg_percentage desc;

