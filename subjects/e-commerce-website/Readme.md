# E-Commerce Website

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
You have to make a data base to manage users, carts, products etc...   
Your free to use what you want for your data base except SQLite
(you can use MySQL, NoSQL ect..)

The goal of this project is to create the API that can communicate with [the provided Front-End]().

Here is how you can start the Front-End, you need to install nodejs if not already installed:
```
node front.js
```

## Authentification
In this segment you must be able to `register` as a new user on the website, by inputting their credentials. 
You also have to create a login session to access the website and be able to buy.

You should use cookies to allow each user to have only one opened session.

Instructions for user registration :
* Must ask for mail
  * When a mail is already taken, return an error
* Must ask for username
* Must ask for password
  * The password must contain one uppercase character, one digit and 8 characters minimum
* Must ask for adress
  
You have to add a "forgot password" button for the login

You must implement the following PHP files:

`inscription.php`: 
- Method: **POST**
- Body Parameters: ...

`login.php`:
- Method: **POST**
- Body Parameters: `email`, `password`

## Products

In this part you must implement a [CRUD](https://developer.mozilla.org/fr/docs/Glossary/CRUD) for the products of your website
You must implement the following routes:
`products.php`: Returns all the products
- Method: **GET**

`prodcuts.php`: Create a new product
- Method: **POST**
- Body parameter: ...

`products.php`: Delete a product
- Method: **DELETE**
- Body parameter: `id`

Here are all the requirements to complete the project.

You are free, **and IT WILL BE VERY WELCOME**, to implement any routes you want in the API. If you do so you will need to modify the provided FRONT-END.

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
