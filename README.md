# Beauty Secrets

This was my first ever website project, created during SPM Form 5 for Computer Science coursework.  
It’s a catalog-style system for skincare products, built with PHP and MySQL.

**Features :**

**Customer (Pembeli)**
- Browse product catalog with descriptions and prices
- Search products by budget
- Sort products by brand
- Compare products side-by-side (ingredients, price)

**Admin/Manager (Pengurus)**
- Manage product list (add, edit, delete)
- Manage buyers (add, edit, list)
- Manage managers (add, edit, list)
- Import data from text files (bulk add buyers/managers)
- Auto-sync with database (phpMyAdmin) when edits are made

**Tech Stack :**
- **Frontend:** HTML, CSS
- **Backend:** PHP
- **Database:** MySQL (via phpMyAdmin, XAMPP localhost)
- **Hosting:** InfinityFree (for deployment)

**Disclaimer :**

This project was created purely for **educational purposes** during SPM coursework.  
All product names, descriptions, and images belong to their respective owners.

**How to Run Locally :**

1. Clone or download this repository.

2. Open **XAMPP** and start Apache and MySQL.

3. Import the database:
   - Go to **phpMyAdmin** ('http://localhost/phpmyadmin').
   - Create a new database (e.g., 'beautysecrets').
   - Import the SQL file ('beautysecrets.sql') from this repo.

4. Place the project files inside 'htdocs' folder (e.g., 'C:/xampp/htdocs/beautysecrets').

5. Access the site in browser: http://localhost/beautysecrets

**live demo :**

https://beautysecrets.wuaze.com/index.php
