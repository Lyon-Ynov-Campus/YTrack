# TP - Redirections / Templates Golang

### Context

You're as a student charged to create an ID Card generator. The first web page will ask informations about you in a form and a "send" button will make a redirection to a second web page.
You will have to customize this last one to make it look the way you want (ID Card, Rugby licence, Bowling licence, driving licence ...)
<br>

### Exercice 0 - Setup the project

You have to create the repository, clone it, and make your first push.

Then you will have to create several files in order to make the exercise :

> - **server.go**
> - **index.html** (homepage)
> - **idCard.html** (page after redirection)
Create a directory in which they will be 2 files:

> - **style.css**
> - **idCard.css**
<br>

### Exercise 1 - Create the server

To do so, you have to get through this steps:

> - Recreate this Golang struct in the file **server.go** <br>
![structureGo](https://i.imgur.com/olR3L82.png?1)
> - Create a route to get the CSS files using *FileServer* (easy to find documentation on internet)
> - Create two routes: "/" and "/idcard". Here is some documentation to help : [handleFunc](https://pkg.go.dev/net/http#HandleFunc)
> - Create a function that define the html file to send on which route using [template](https://pkg.go.dev/html/template)
> - Create the [server](https://pkg.go.dev/net/http#ListendAndServe)
For info : the route "/" is the route for the homepage and the "/idcard" route is the route which will display the card with your personnal informations.
<br>

### Exercise 2 - Choose http/method to get infos

Now that the server has been created, choose the correct [method](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods) in order to get your infos in the *index.html* file by creating a *form*.
Then you will have to use [GolangTemplates](https://pkg.go.dev/text/template) to get the Go struct data on your web page.
<br>
And don't forget to customize the web pages using CSS files. *Note that you have to link CSS files to the server but also to the html file.*

### Finish

Once you got through all these steps, call ur BIG BOSS to check your work, be proud of yourself !