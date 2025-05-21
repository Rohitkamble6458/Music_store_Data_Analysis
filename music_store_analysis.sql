 -- Q1: Who is the senior-most employee based on job title? 
select *
from employee 
order by levels desc
limit 1;

 -- Q2: Which countries have the most Invoices?
select billing_country,count(*) as c  from invoice 
group by billing_country 
order by c desc

-- Q3: What are the top 3 values of the total invoice

select total from invoice
order by total desc 
limit 3;

 -- Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city where we made the most money. Write a query that returns one city that has the highest sum of invoice totals. Return both the city name & sum of all invoice totals

select billing_city,sum(total) as t
from invoice
group by billing_city 
order by t desc;

-- Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money.

select c.customer_id, c.first_name, c.last_name, sum(ic.total) as t 
from customer c
join invoice as ic
on c.customer_id =ic.customer_id
group by c.customer_id 
order by t desc 
limit 1;


-- Question Set 2 - Moderate

-- Q1: Write query to return the email, first name, last name, & Genre of all Rock Music listeners. Return your list ordered alphabetically  by email starting with A

SELECT DISTINCT email, first_name, last_name
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE track_id IN(
SELECT track_id FROM track
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name LIKE 'Rock'
)
ORDER BY email;


 -- Q2: Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total  track count of the top 10 rock bands.

SELECT artist.artist_id, artist.name,COUNT(artist.artist_id) AS number_of_songs
FROM track
JOIN album ON album.album_id = track.album_id 
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id
ORDER BY number_of_songs DESC
limit 10;

 -- Q3: Return all the track names that have a song length longer than the average song length. Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first. 

select name, milliseconds from track
where milliseconds > ( 
		select avg(milliseconds) from track
		)
order by milliseconds desc;
