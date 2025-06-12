# 🎵 SQL Music Store Analysis using PostgreSQL

This project is a hands-on SQL case study using a **digital music store database** to analyze employee roles, customer behavior, track sales trends, and genre popularity. The project is executed using **PostgreSQL**, and provides a practical understanding of real-world data relationships and business questions.

---

## 🧠 Project Objectives

- Practice SQL querying and data analysis.
- Understand relational database schema design.
- Derive business insights from music store data.

---

## 📁 Project Structure

- `music_store_analysis.sql` – Contains SQL queries that answer various business-related questions.
- `README.md` – Explains the project purpose, schema, and insights gained.

---

## 🗃️ Database Schema Overview

The schema represents a digital music store. Here are the major tables and their roles:

### 📋 Tables

| Table Name      | Description |
|-----------------|-------------|
| **employee**    | Employee details including titles and managers. |
| **customer**    | Customer info and support rep (employee) assigned. |
| **invoice**     | Each purchase/invoice made by a customer. |
| **invoice_line**| Line items within each invoice (track purchases). |
| **track**       | Music track info including genre, album, media type. |
| **album**       | Albums associated with artists. |
| **artist**      | Artist or band who created the album. |
| **genre**       | Music genre like Rock, Jazz, etc. |
| **media_type**  | Format of the track (MP3, AAC, etc.). |
| **playlist**    | Curated collections of tracks. |
| **playlist_track** | Mapping table for many-to-many relationship between playlists and tracks. |

---

## 🔗 Relationships Between Tables

- Each **customer** is supported by an **employee** (`support_rep_id`).
- Each **invoice** is linked to a **customer**.
- Each **invoice_line** is linked to one **invoice** and one **track**.
- Each **track** belongs to an **album**, has a **genre**, and a **media type**.
- Each **album** is associated with one **artist**.
- A **track** can appear in many **playlists**, and vice versa (via `playlist_track`).

---

| From Table       | Field            | To Table     | Relationship                  |
| ---------------- | ---------------- | ------------ | ----------------------------- |
| `customer`       | `support_rep_id` | `employee`   | Many customers → One employee |
| `invoice`        | `customer_id`    | `customer`   | Many invoices → One customer  |
| `invoice_line`   | `invoice_id`     | `invoice`    | Many lines → One invoice      |
| `invoice_line`   | `track_id`       | `track`      | Many lines → One track        |
| `track`          | `album_id`       | `album`      | Many tracks → One album       |
| `track`          | `genre_id`       | `genre`      | Many tracks → One genre       |
| `track`          | `media_type_id`  | `media_type` | Many tracks → One media type  |
| `album`          | `artist_id`      | `artist`     | Many albums → One artist      |
| `playlist_track` | `track_id`       | `track`      | Many-to-many with `playlist`  |
| `playlist_track` | `playlist_id`    | `playlist`   | Many-to-many with `track`     |


## 📊 SQL Questions & Insights

### 📗 Easy Level

1. **Who is the senior most employee based on job title?**
2. **Which countries have the most invoices?**
3. **Top 3 invoice totals?**
4. **Which city has the best customers? We would like to ‘throw a
promotional Music Festival in the city we made the most money. Write a
query that returns one city that has the highest sum of invoice totals.
Return both the city name & sum of all invoice totals**
5. **Who is the best customer? The customer who has spent the most
money will be declared the best customer. Write a query that returns
the person who has spent the most money.**

### 📘 Moderate Level

1. **Write query to return the email, first name, last name, & Genre
of all Rock Music listeners. Return your list ordered alphabetically
by email starting with A.**
2. **Let's invite the artists who have written the most rock music in
our dataset. Write a query that returns the Artist name and total
track count of the top 10 rock bands.**
3. **Return all the track names that have a song length longer than
the average song length. Return the Name and Milliseconds for
each track. Order by the song length with the longest songs listed
first.**


### 📙 Advanced Level

1. **Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and total spent**
2. **We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre 
with the highest amount of purchases. Write a query that returns each country along with the top Genre. For countries where 
the maximum number of purchases is shared return all Genres.**
3. **Write a query that determines the customer that has spent the most on music for each country. 
Write a query that returns the country along with the top customer and how much they spent. 
For countries where the top amount spent is shared, provide all customers who spent this amount.**

---

## 🛠️ Technologies Used

- **Database**: PostgreSQL
- **Language**: SQL
- **Tools**: pgAdmin 4
- **Schema Reference**: Provided ERD (entity-relationship diagram)

---

## 🚀 How to Use

1. Install PostgreSQL and import the Music Store sample database.
2. Open `music_store_analysis.sql` in your SQL client.
3. Run each query to view business insights.

---

## 📷 Schema Diagram

![Database Schema](schema_diagram.png)

---

## 👤 Author

**Rohit Kamble**  
[GitHub](https://github.com/Rohitkamble6458) | [LinkedIn](https://www.linkedin.com/in/rohitkamble6458/) 
---


## ⭐ Highlights

- Real-world SQL problem solving.
- Clear schema understanding.
- Clean and efficient PostgreSQL queries.
