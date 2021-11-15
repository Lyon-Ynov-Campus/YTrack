# E-Commerce SQL

## Notions
* [Introduction CDM](https://www.it-connect.fr/introduction-au-mcd/)
* [SQL : Installation PhpMyAdmin](https://kinsta.com/fr/blog/installer-phpmyadmin/)
* [Vidéo: Fake Data in PHP](https://www.youtube.com/watch?v=sSDh1zfz-5s)
* [Faker PHP](https://zetcode.com/php/faker/)
* [SQL : Syntax](https://sql.sh/cours)

## Instructions

The goal of this project is to make the databse of an ecommerce website.

Create a repository `e-commerce-SQL`, inside of that repository create a folder named `TP`. Put all of your files in this folder

### CDM

First, you will have to make an CDM (Conceptual Data model) of the database -> You can use [draw.io](https://app.diagrams.net/) or anything else to make it.   
All the relations have to be display on the CDM.

**Make sure to think of all the relations and attributes your elements must have before starting to create the DB**

### DataBase

Next, create the database using the PhpMyAdmin tool. 

Your database must contain the followings tables and must respect exactly your MCD: 
* user table : informations about users
* adress table : adress from users
* product table : Product selling from your website
* cart table : shopping list from users
* command table : command history
* photo table : photos of users and products
* rate table : product rating from users
* all the junction table

### Fixtures

Finally, make a script in the language of you choice (PHP seems to be a perfect fit TripleXDPTDRlol) that can fill the database with fake **BUT RELEVANT** data.
It can be a script full of SQL commands (not very sexy), or a script in a certain language that perform SQL Queries with generated data.

For example, the library [Faker](https://github.com/marak/Faker.js/) in js can help you generate relevant but random data.
You have some other examples [here](https://dev.to/iainfreestone/20-resources-for-generating-fake-and-mock-data-55g1).

ENJOY !