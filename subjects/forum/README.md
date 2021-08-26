## forum

### Objectives

This project consists in creating a web forum that allows :

- communication between users.
- associating categories to posts.
- filtering posts.

#### SQLite

In order to store the data in your forum (like users, posts, etc.) you will use the database library SQLite.

SQLite is a popular choice as embedded database software for local/client storage in application software such as web browsers. It enables you to create a database as well as controlling it by using queries.

To structure your database and to achieve better performance we highly advise you to take a look at the [entity relationship diagram](https://www.smartdraw.com/entity-relationship-diagram/) and build one based on your own database.

- You must use at least one SELECT, one CREATE and one INSERT queries.

To know more about SQLite you can check the [SQLite page](https://www.sqlite.org/index.html).

#### API

One of the goal of this project is also to gather all the knowledge acquired throughout the year. With that in mind, you will be asked to create your very first mini API.

* Your Go routes must either be :
  * Public Route: A Route that present HTML content via a static html page using `http` golang package with `http.ServeFile` function.
  * "*Private*" Route: A Route that performs an action on the database or retrieves data. Then it returns a result in the response of the route *(ResponseWriter)*
  <br><br>
* Your JavaScript will then: 
  * Call the privates routes with the `fetch` function, specifying the method and maybe the params you want to pass to your route.
  * When the route has responded, it will display the data on the page. (You can use [handleBars library](https://handlebarsjs.com/) to help you display the data dynamically)

**Example**
``` javascript
fetch("/routeName", {
  method: "POST", // or GET
  headers: {
    "content-type": "application/json"
  },
  body: JSON.stringify({
    // Data you want to pass to your route
  })
})
.then((res) => res.json()) // Transforming the result to JSON object format to handle it easily
.then((data) => {
  // HERE is the code you want to do to handle the data
  // Maybe
  // Display HTML content
  // Transorms data
  // ...
})
.catch((err) => {
  // Handle error cases
})
```

**All the templating part to display the informations dynamically souldn't be done with the package `html/template`.**

Your golang is only responsible for retrieving data and requesting the Database.
Your Javascript MUST be in charge of the rendering part, here is a few library you can look at to help you with this:
- [HandleBars Library](https://handlebarsjs.com/)
- [Mustach.js](https://github.com/janl/mustache.js)
- [EJS](https://ejs.co/#install)

If you are warriors and your group wants a challenge you can still look at Javascript Framework, **but be aware of what you do if you want to dive into it, it wont be easy**:
- [Vue.js](https://vuejs.org/v2/guide/)
- [React](https://fr.reactjs.org/)
- [Angular](https://angular.io/docs)


#### Authentication

In this segment the client must be able to `register` as a new user on the forum, by inputting their credentials. You also have to create a `login session` to access the forum and be able to add posts.

You should use cookies to allow each user to have only one opened session. Each of this sessions must contain an expiration date. It is up to you to decide how long the cookie stays "alive".

Instructions for user registration:

- Must ask for email
  - When the email is already taken return an error response.
- Must ask for username
- Must ask for password
  - The password must be encrypted when stored

The forum must be able to check if the email provided is present in the database and if all credentials are correct. It will check if the password is the same with the one provided and, if the password is not the same, it will return an error response.

#### Posting

In order for users to interact with the forum, they will able to create posts.

- Only registered users will be able to create posts.
- Posts that belongs to the registered user can be edited or deleted.
- The posts should be visible to all users (registered or not).
- Non-registered users will only be able to see posts.

<!-- #### Filter

You need to implement a filter mechanism, that will allow users to filter the displayed posts by :

- categories
- created posts
- liked posts

You can look at filtering by categories as subforums. A subforum is a section of an online forum dedicated to a specific topic.

Note that the last two are only available for registered users and must refer to the logged in user. -->

<!-- #### Heroku

For the forum project you **must** deploy you website to Heroku. You can see all about heroku basics on the [forum-herokuize](https://lyon-ynov-campus.github.io/YTrack/subjects/forum/herokuize/) subject. -->

This project will help you learn about:

- The basics of web :
  - HTML
  - HTTP
  - Sessions and cookies
- SQL language
  - Manipulation of databases
- The basics of encryption 

### Instructions

- You must use **SQLite**.
- You must handle website errors, HTTP status.
- You must handle all sort of technical errors.
- The code must respect the [**good practices**](https://public.01-edu.org/subjects/good-practices/).
- It is recommended that the code should present a **test file**.

### Allowed packages

- All [standard go](https://golang.org/pkg/) packages are allowed.
- github.com/mattn/go-sqlite3
- golang.org/x/crypto/bcrypt
- github.com/satori/go.uuid
