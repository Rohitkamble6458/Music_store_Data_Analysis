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

1. **Who is the senior-most employee?**
2. **Which countries have the most invoices?**
3. **Top 3 invoice totals?**
4. **Which city generated the most revenue?**
5. **Who is the best customer (by total spending)?**

### 📘 Moderate Level

1. **Find Rock music listeners (email, name).**
2. **Top 10 artists with the most Rock tracks.**
3. **Tracks longer than average duration.**

---

## 🛠️ Technologies Used

- **Database**: PostgreSQL
- **Language**: SQL
- **Tools**: pgAdmin / DBeaver / any PostgreSQL client
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

**Your Name**  
[GitHub](https://github.com/) | [LinkedIn](https://linkedin.com/)

---

## 📄 License

This project is free to use and modify for educational and non-commercial purposes.

---

## ⭐ Highlights

- Real-world SQL problem solving.
- Clear schema understanding.
- Clean and efficient PostgreSQL queries.
