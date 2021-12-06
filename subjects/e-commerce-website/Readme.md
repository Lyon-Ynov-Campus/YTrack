# E-Commerce Website: Subject 1

## Objectives
The project consists in creating the API of an e-commerce website (in the short time we have) that allow to :
* Register an account
* Login/Logout
* Create, see, delete product

<!-- * Send mail to user when he buy something
* Have a wishList
* Save your cart
* have an admin panel for admin users -->

## Notions
[PHP Documentation : $_GET](https://www.php.net/manual/en/reserved.variables.get.php)  
[PHP Documentation : $_POST](https://www.php.net/manual/en/reserved.variables.post.php)   
[PHP Documentation : $_SESSION](https://www.php.net/manual/en/reserved.variables.session.php)   
[PHP Documentation : Mail](https://www.php.net/manual/en/function.mail.php)

### Querry Notions
[PHP Documentation : PDO:Query](https://www.php.net/manual/en/pdo.query.php)   
[PHP Documentation : Mysqli:Query](https://www.php.net/manual/en/mysqli.query.php)

## SQL
You have to use your e-commerce-sql database from the previous module to manage users, carts, products etc... This one can be updated to match your need
Your free to use what you want for your data base except SQLite, should've been made in the SQL project
(you can use MySQL, NoSQL ect..)

The goal of this project is to create the API that can communicate with <a href="e-commerce-website.rar" download>the provided frontend</a>.
**VERY IMPORTANT**: Put the folder `Www` that you will find insinde the .rar into WAMP path -> `[your path to wamp]\wamp64\www\`.
Create a folder `backend` in the existing folder `src`

Here is how you can start the Front-End, you need to install nodejs if not already installed:
```
node index.js
```
Then you can go to `localhost:5000`

For the frontend to work for everyone despite differents name of property in the Database, you must transform your data as an array using the below function:
`mysqli_fetch_array`

## Composer
Composer is package manager for PHP. You had to use composer ton link all your php file with a namespace thanks to autoload    
If you want to install package for your PHP, also used composer !

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
  
You have to add a "forgot password" button for the login

You must implement the following PHP files:

`inscription.php`: 
- Method: **POST**
- Route front : /inscription
- Route back : /inscr
- Body Parameters: `pseudo`, `lastname`, `firstname`, `ages`, `country`, `city`, `address`, `address2`, `phone`, `mail`, `password`

`connexion.php`:
- Method: **POST**
- Route front : /connexion
- Route back : /conn
- Body Parameters: `email`, `password`

⚠️ To get post value wich is sending from JS file (like connexion.js) you had to use : file_get_contents('php://input');   
With this, you will have json data format that you need to decode !

## Products

In this part you must implement a [CRUD](https://developer.mozilla.org/fr/docs/Glossary/CRUD) for the products of your website
You must implement the following routes:
`product.php`: Returns all the products
- Method: **GET**
- Route front : /produit


`products.php`: Create a new product (NOT IN THE FRONT)
- Method: **POST**
- Body parameter:   
* Product : `name` `category`, `price`, `weight` // HERE YOU NEED TO FILL ALL THE ATTRIBUTE OF YOU product TABLE, this is just an example
* photo : `name`

`products.php`: Delete a product (NOT IN THE FRONT)
- Method: **DELETE**
- Body parameter: `id`

Here are all the requirements to complete the project.

You are free, **and IT WILL BE VERY WELCOME**, to implement any routes you want in the API. If you do so you will need to modify the provided FRONT-END.   
     
The route for the photos are already set. You can add any photos you want in the /img directory and you can acces them in the website at the route /img/nameOfYourImage.png  
   
You can test your API by using **POSTMAN** !

<!-- Here are the products you sell.
* Sort your product correctly and create category and subcategory if neccessary
* Product must be findable by searching them in a search bar -->

<!-- ## Cart
In this segment, users must be able to : 
* Add product in number to your cart  
* Erase his cart.    
* Choose between several payment method.   
* See his order details before processing the payment
* See the state of the payment
* See commands history

A mail is send to the user to confirm his command when this one process to his payment. -->

<!-- ## Admin
When a user have the grade "Admin" he must be able to :
* Change username and password of any other user except admin
* See a panel on the website with command of all user sort in order -->

## Allowed package
You can use any package you want
