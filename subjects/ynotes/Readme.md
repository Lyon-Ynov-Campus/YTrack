# YNotes

## Objectives
The project consists in creating a school life php website that allow to :
* Have a student, a teacher and an admin panel
* Add student with the admin panel
* Login/Logout
* Look at the agenda/planning
* Look at marks
* Have a messaging system between teachers and students

## Notions
[PHP Documentation : $_GET](https://www.php.net/manual/en/reserved.variables.get.php)   
[PHP Documentation : $_POST](https://www.php.net/manual/en/reserved.variables.post.php)   
[PHP Documentation : $_SESSION](https://www.php.net/manual/en/reserved.variables.session.php)   
[PHP Documentation : Mail](https://www.php.net/manual/en/function.mail.php)

### Querry Notions
[PHP Documentation : PDO:Query](https://www.php.net/manual/en/pdo.query.php)   
[PHP Documentation : Mysqli:Query](https://www.php.net/manual/en/mysqli.query.php)   

## SQL 
You have to make a data base to manage students, teachers, admin, planning, etc...   
Your free to use what you want for your data base but we recommand to use SQLite

## Authentification 
In this segment you must be able to `register` a student or a teacher from the admin panel.   
You also have to create a login session by inputting their credentials.
You should use cookies to allow each user to have only one opened session.

Instructions for user registration :
* Must ask for mail
  * When a mail is already taken, return an error
* Must ask for username
* Must ask for password
  * The password must contain one uppercase character, one digit and 8 characters minimum

You had to add a "forgot password" button for the login

## Planning
All users have to have access to their planning for the year. They can navigate in it by week with a button and go at the date they want with a calendar.

## Marks
How should it work :
* Admin and teacher have acces to all marks
* student have only acces to their marks
* teacher can add/change/delete marks to their students

## Messaging
Section in the website where students can send message to each of his teachers and where teachers can send message to others teachers and students. This messaging system should look like a mail system

## Admin
When a user have the grade "Admin" he must be able to :
* Add user with a name, a password and a grade
* Change username and password of any other user except admin
* See a panel on the website with command of all user sort in order

## Allowed package
You can use any package as you want
