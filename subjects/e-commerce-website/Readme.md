# E-Commerce Website: Subject 1

## Objectives
The project consists in creating the API of an e-commerce website (in the short time we have) that allow to :
* Register an account
* Login/Logout
* Create, see, delete product

## Notions
* [PHP Documentation : $_GET](https://www.php.net/manual/en/reserved.variables.get.php)  
* [PHP Documentation : $_POST](https://www.php.net/manual/en/reserved.variables.post.php)   
* [PHP Documentation : $_Cookie](https://www.php.net/manual/en/reserved.variables.cookies.php)
* [PHP Documentation : $_SESSION](https://www.php.net/manual/en/reserved.variables.session.php)   
* [Twig Documentation](https://twig.symfony.com/doc/3.x/)
* [Twig Template](https://twig.symfony.com/doc/3.x/templates.html)

### Querry Notions
* [PHP Documentation : PDO:Query](https://www.php.net/manual/en/pdo.query.php)   
* [PHP Documentation : Mysqli:Query](https://www.php.net/manual/en/mysqli.query.php)

## Tools
* [PHP](https://www.php.net/)
* [MySQL](https://www.mysql.com/fr/)
* [Postman](https://www.postman.com/)
* [WampServer (windows)](https://www.wampserver.com/en/)
* [MAMP (MAC)](https://www.mamp.info/en/)
* [LAMP (linux)](https://doc.ubuntu-fr.org/lamp)
* [phpMyAdmin](https://www.phpmyadmin.net/)

You have to use PhpMyAdmin to host your database and your website !

## SQL
You have to use your e-commerce-sql database from the previous module to manage users, carts, products etc... This one can be updated to match your need
Your free to use what you want for your data base except SQLite, should've been made in the SQL project
(you can use MySQL, NoSQL ect..)

The goal of this project is to create a simple e-commerce website with a login system, a cart and a product list.
Also, you have to make an API to manage the data of your website.
The API should be able to :
* Create a user
* Login/Logout
* CRUD products  

## Composer
Composer is package manager for PHP. You had to use composer to link all your php file with a namespace thanks to autoload !
You can also add php packages to your project with composer.  

## MVC Pattern
The MVC pattern is a very popular pattern that allow to separate the code in 3 parts :
* Model : The model is the part of the code that manage the data of the website. It's the part that communicate with the database.
* View : The view is the part of the code that display the data of the website. It's the part that communicate with the user.
* Controller : The controller is the part of the code that manage the data of the website. It's the part that communicate with the model and the view.

You have to use this pattern to create your website.   

## Twig
Twig is a template engine for PHP. It's a very popular template engine that allow to separate the code and the view.
You have to use twig to create your view !

## Authentification
In this segment you must be able to `register` as a new user on the website, by inputting their credentials. 
You also have to create a login session to access the website and be able to buy.

You should use cookies to allow each user to have only one opened session.

Instructions for user registration :
* Must ask for pseudo
* Must ask for lastname
* Must ask for fistname
* Must ask for ages (int number, not a date)
* Must ask for country
* Must ask for city
* Must ask for address
* Must ask for address2 (optional value)
* Must ask for phone number
* Must ask for mail
  * When a mail is already taken, return an error
* Must ask for password
  * The password must contain one uppercase character, one digit and 8 characters minimum
  
All registration features cited above can be done on different pages.

You must implement the following PHP files:

`inscription.php`: 
- Method: **POST**
- Route front : /register
- Route back : /addUser
- Exemple of body parameters: `pseudo`, `lastname`, `firstname`, `ages`, `country`, `city`, `address`, `address2`, `phone`, `mail`, `password`

`connexion.php`:
- Method: **POST**
- Route front : /login
- Route back : /connection
- Body Parameters: `email`, `password`

## Products

In this part you must implement a [CRUD](https://developer.mozilla.org/fr/docs/Glossary/CRUD) for the products of your website
You must implement the following routes:
`product.php`: Returns all the products
- Method: **GET**
- Route front : /product


`products.php`: Create a new product (NOT IN THE FRONT)
- Method: **POST**
- Body parameter:   
* Product : `name` `category`, `price`, `weight` // HERE YOU NEED TO FILL ALL THE ATTRIBUTE OF YOU product TABLE, this is just an example
* photo : `name`

`products.php`: Delete a product (NOT IN THE FRONT)
- Method: **DELETE**
- Body parameter: `id`

`products.php`: Update a product (NOT IN THE FRONT)
- Method: **UPDATE**
- Body parameter: `name` `category`, `price`, `weight`, others

Here are all the requirements to complete the project.

You are free, **and IT WILL BE VERY WELCOME**, to implement any routes you want in the API.
   
You can test your API by using **POSTMAN** !

<!-- Here are the products you sell.
* Sort your product correctly and create category and subcategory if neccessary
* Product must be findable by searching them in a search bar -->

## Cart
In this segment, users must be able to : 
* Add product in number to your cart  
* Erase his cart.    
* See his order details before processing the payment
* See the state of the payment
* See commands history

The cart informations must be save with cookies.

## Admin
When a user have the grade "Admin" he must be able to :
* Change username and password of any other user except admin
* See a panel on the website with command of all user sort in order

## Front
No time to make front, you don't need to make a beautiful website, just make it work !

## Allowed package
You can use any package you want
