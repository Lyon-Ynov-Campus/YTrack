# Task Manager

## Objectives

In this project, you will develop a todo-list system on a web platform. You will implement functionalities to add tasks, save them, and display them using Golang routes.

## Documentation

- [Templates en Golang](https://pkg.go.dev/html/template)
- [HTTP Server](https://gowebexamples.com/http-server/)

## Data structure

Define a structure named "Task" with the following information:

```
Id
Name
Description
State (to-do, in progress, done)
Deadline
```

## Features  

Create a list of Tasks that contains all the created tasks.

Implement a function named GetLastId that takes a parameter "tasks" and returns the last Id of the last task created. For example, if we have 5 tasks with the ids (1, 4, 5, 3, 2), this function will return the id 5.

Set up a Golang server that listens on port 8080 and serves all static files using Golang templates for the page.

Link the index.html with the style.css. You can download these files [here](https://moodle.ynov.com/mod/folder/view.php?id=149624).

Create three routes :

- `GET "/"` => use "index.html" template and display all task information.
- `POST "/add-task"` => add a new task with the last id + 1 and save it into the list of "Tasks".
- `POST "/delete-task"` => delete a task by its id.

When the "Add task" button is clicked, call the route "/add-task" route to add a new task to the list of Tasks. Display all task data on the home page with the route "/".

There are three classes for the status :
- `done` => Put a text in green
- `in-progress` => Put a text in orange
- `to-do` => Put a text in red

There is an example of how to use it in a html page :
```html
<div class="task-status">Status : <span class="done">Done</span></div>
```

You must use these css classes in order to show the status by colors like the example below. If the state is "Done," display the status text in green. If the state is "In Progress," display the status text in orange. If the state is "To Do," display the status text in red.

## Example of the expected result

![](https://i.imgur.com/8U8KPhY.gif)

## Constraints

Do not use AI tools 

Use only html and css files given.

Use only Golang, HTML & CSS languages.

You can modify the provided HTML and CSS files as needed.

Javascript is prohibited.