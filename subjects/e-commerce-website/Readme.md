# E-Commerce Website

## Objectives
The project consists in creating an e-commerce website that allow to :
* Register an account
* Login/Logout
* Buy product
* Send mail to user when he buy something
* Have a wishList
* Save your cart
* have an admin panel for admin users

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
Your free to use what you want for your data base but we recommand to use SQLite

## Authentification
In this segment you must be able to `register` as a new user on the website, by inputting their credentials. You also have to create a login session to access the website and be able to buy.

You should use cookies to allow each user to have only one opened session.

Instructions for user registration :
* Must ask for mail
  * When a mail is already taken, return an error
* Must ask for username
* Must ask for password
  * The password must contain one uppercase character, one digit and 8 characters minimum
* Must ask for adress
  
You had to add a "forgot password" button for the login

## Products
Here are the products you sell.   
* Sort your product correctly and create category and subcategory if neccessary
* Product must be findable by searching them in a search bar

## Cart
In this segment, users must be able to : 
* Add product in number to your cart  
* Erase his cart.    
* Choose between several payment method.   
* See his order details before processing the payment
* See the state of the payment
* See commands history

A mail is send to the user to confirm his command when this one process to his payment.

## Admin
When a user have the grade "Admin" he must be able to :
* Change username and password of any other user except admin
* See a panel on the website with command of all user sort in order

## Allowed package
You can use any package as you want
