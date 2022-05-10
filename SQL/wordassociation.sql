-- Create table and view column datatypes
CREATE TABLE wordassociation (
	id serial primary key,
	author INT,
	word1 VARCHAR,
	word2 VARCHAR,
	source VARCHAR (5),
	last_updated timestamp default localtimestamp
);

select
count(*)
from wordassociation;

select *
from wordassociation
limit 5

select
count(*)
from wordassociation;

--find the word stone
select *
from wordassociation
where word1 = 'stone'

-- return a substring match i.e. specified word in a string
select *
from wordassociation
where word1 like '%stone%';

select *
from wordassociation
where author between 0 and 10;

--OR

select *
from wordassociation
where author <=0 and author >= 0;

select *
from wordassociation
where author between 333 and 335
and source = 'BC';