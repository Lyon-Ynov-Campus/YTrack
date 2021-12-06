# E-Commerce Website: Subject 2

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
[What is a REST API](https://www.redhat.com/fr/topics/api/what-is-a-rest-api)  

[Create a Basic REST API](https://code.tutsplus.com/tutorials/how-to-build-a-simple-rest-api-in-php--cms-37000)

[Create AND RUN the API](https://developer.okta.com/blog/2019/03/08/simple-rest-api-php)   

### Querry Notions
[PHP Documentation : PDO:Query](https://www.php.net/manual/en/pdo.query.php)   
[PHP Documentation : Mysqli:Query](https://www.php.net/manual/en/mysqli.query.php)

## SQL
You have to use your e-commerce-sql database from the previous module to manage users, carts, products etc... This one can be updated to match your need
Your free to use what you want for your data base except SQLite, should've been made in the SQL project
(you can use MySQL, NoSQL ect..)

The goal of this project is to create a REST API with certain endpoints that can be called with Postman. 

We **STRONGLY** recommand to follow the notions provided to do so.

<h3 style="color: red">All the reponses mention below have to be return in <strong>JSON Format</strong></h3>

## Composer
You are free to use Composer if needed to match your needs. Composer is the package manager of PHP, it can help you install some dependencies and useful tools. Also, Iit helps you link all your php file with a namespace thanks to autoload 

## Authentification
In this segment you have to create routes to authenticate the user.

`/register` :
- Method: **POST**
- Body Parameters:
```
    {
        pseudo,
        lastname,
        firstname,
        ages,
        country,
        city,
        address,
        address2,
        phone,
        email,
        password
    }
```
- Response: Object containing -> `id`, `pseudo`, `mail`, `fullname`

You will need to hash the provided password before inserting it into the database.
  
<!-- You have to add a "forgot password" button for the login -->

<br>

`/login`:
- Method: **POST**
- Body Parameters:
```
    {
        identifier,
        password
    }
```
> `identifier`: Email or Pseudo

- Response: Object containing -> `id`, `pseudo`, `mail`, `fullname`

<br>

`/forgot_password`: *OPTIONAL*
- Method: **POST**
- Body Parameters:
```
    {
        id,
        email,
    }
```
- Response: Object containing -> `id`, `pseudo`, `mail`, `fullname`

You must check if the email, is corresponding to the email of the user. Reset the password of the account with a new generated password and send an email to the provided email.

## Products

In this part you must implement a [CRUD](https://developer.mozilla.org/fr/docs/Glossary/CRUD) for the products of your website
You must implement the following routes:

`/products`: Returns all the products
- Method: **GET**
- Response: Object containing all product information.
- Optional Query String;
    * `limit`: return only n products if limit is set. (ex: `?limit=20`)


`/products`: Create a new product
- Method: **POST**
- Body parameter:   
```
    {
        product: { name, category, price, weight}, // HERE YOU NEED TO FILL ALL THE ATTRIBUTE OF YOU product TABLE, this is just an example
        photo,
    }
```

`/products`: Delete a product
- Method: **DELETE**
- Body parameter: `id`

`/products/{id}`: *OPTIONAL* Return all the informations of one product, with provided id
- Method: **GET**

Here are all the requirements to complete the project.

You are free, **and IT WILL BE VERY WELCOME**, to implement any other routes you want in the API.
**Examples**:
- Routes for users
- Routes for cart
- Others that come to you mind and can enhance the project
<!--      
The route for the photos are already set. You can add any photos you want in the /img directory and you can acces them in the website at the route /img/nameOfYourImage.png   -->
   
You must test your API by using **POSTMAN** !

## Allowed package
You can use any package you want
