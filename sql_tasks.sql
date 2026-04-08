use da_project_db ;

select * from netflix_titles;

-- 1 Total Titles
SELECT COUNT(*) FROM netflix_titles;

-- 2 Movies vs TV Shows
select type , count(*) as total_count from netflix_titles
group by type ;

-- 3 Content by Year
select release_year as Year , count(*) as total_release_yearly from netflix_titles
group by Year 
order by total_release_yearly desc ;

-- 4 Content Added Per Year
select year(date_added) as Year , count(*) as content_add_yearly from netflix_titles
group by year(date_added) 
order by content_add_yearly desc ;

-- 5 Top Countries
select country , count(*) as count from netflix_titles 
where country not in ('unknown')
group by country 
order by count desc
limit 5 ;

-- 6 Most Common Rating
select rating , count(*) as count from netflix_titles 
group by rating 
order by count desc 
limit 1 ;

-- 7 Avg Movie Duration
select  round(avg(duration_int),3) as avg_movie_timing from netflix_titles 
where type = 'movie';

-- 8 Longest Movies
select title , duration_int from netflix_titles 
where type = 'movie'
order by duration_int desc 
limit 1 ;

-- 9 Top Directors
select director , count(*) as count from netflix_titles 
group by director 
order by count desc 
limit 10 ;

-- 10 top 5 Most Frequent Actors
select cast , count(*) as count from netflix_titles 
group by cast 
order by count desc 
limit 5 offset 1 ;

-- 11 Movies vs TV Shows by Country
select country  , type  , count(*) count  from netflix_titles 
group by country , type 
order by count(*) desc ;

-- 12 Recent Content (Last 5 Years)
select * from netflix_titles 
where release_year >= current_date - interval 5 year ;  

select distinct release_year from netflix_titles ;

select * from netflix_titles 
where release_year >= 1996 ;

-- 13 Most Common Genre (listed_in)
select listed_in , count(*) as count from netflix_titles 
group by listed_in 
order by count desc 
limit 5 ;

-- 14 Top 5  Directors with Most Titles
select director , count(*) as count from netflix_titles 
where director not in ('unknown')
group by director 
order by count desc 
limit 5 ;

-- 15 Running Total of Content Added Over Time
select date_added , count(*)over(order by date_added desc ) as running_total 
from netflix_titles 
where date_added is not null ;

-- 16 Find Duplicate Titles (Data Quality Check)
select title from ( select title , row_number()over(partition by title ) as rn from 
netflix_titles ) t 
where rn > 1 ;

-- 17 Content Added Per Month (MAU-style metric)
select month(date_added) as month_id ,
count(*) as count  from netflix_titles
where month(date_added) is not null 
group by month_id 
order by count desc ;

-- 18 Content by Rating Category
select rating , count(*) as count from netflix_titles
where rating is not null  
group by rating 
order by count desc ;

-- 19 Top 5 movie titles based on rating 
select title , rating , count(*) as count from netflix_titles 
where title and rating is not null 
group by title , rating 
order by count desc 
limit 5 ;



