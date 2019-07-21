-- 1. Which destination in the flights database is the furthest distance away, based on information in the flights table. Show the SQL query(s) that support your conclusion.
select distinct dest from flights 
where distance = (select max(distance)from flights)

-- 2. What are the different numbers of engines in the planes table? For each number of engines, which aircraft have the most number of seats? Show the SQL statement(s) that support your result.
select distinct engines from planes
select distinct engines, max(seats) from planes group by engines

-- 3. Show the total number of flights.
select count(distinct flight) from flights 

-- 4. Show the total number of flights by airline (carrier).
select carrier, count(distinct flight) as numflight from flights group by carrier

-- 5. Show all of the airlines, ordered by number of flights in descending order.
select airlines.name, count(distinct flight) as numflight 
from flights 
inner join airlines on airlines.carrier=flights.carrier 
group by flights.carrier 
order by numflight desc

-- 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.
select airlines.name, count(distinct flight) as numflight 
from flights 
inner join airlines on airlines.carrier=flights.carrier 
group by flights.carrier order by numflight desc limit 5

-- 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.
select airlines.name, count(distinct flight) as flightcount 
from flights 
inner join airlines on airlines.carrier=flights.carrier 
where distance >= 1000 
group by airlines.name order by flightcount desc limit 5

-- 8. Show which manufacures makes fewer than 100 seat on average before year 2000 by average number of seats
select manufacturer, avg(seats) 
from planes where year < 2000 
group by manufacturer having avg(seats) < 100 
order by avg(seats)