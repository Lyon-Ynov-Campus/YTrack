# Contacts Manager

## Objectives

In this project, you will develop a contacts manager system on a web platform. You will implement functionalities to add contacts, save them, and display them using Golang routes.

## Documentation

- [Templates en Golang](https://pkg.go.dev/html/template)
- [HTTP Server](https://gowebexamples.com/http-server/)

## Data structure

Define a structure named "Contact" with the following information:

```
Id
FirstName
LastName
PhoneNumber
Status
Email
```

## Features  

Create a list of Contacts that contains all the created contacts.

Implement a function named GetLastId that takes a parameter "contacts" and returns the last Id of the last contact created. For example, if we have 5 contacts with the ids (1, 4, 5, 3, 2), this function will return the id 5.

Set up a Golang server that listens on port 8080 and serves all static files using Golang templates for the page.

Link the index.html with the style.css. You can download these files [here](https://moodle.ynov.com/mod/folder/view.php?id=149753).

Create three routes :

- `GET "/"` => use "index.html" template and display all contacts information.
- `POST "/add-contact"` => add a new contact with the last id + 1 and save it into the list of "Contacts".
- `POST "/delete-contact"` => delete a contact by its id.

When the "Add contact" button is clicked, call the route "/add-contact" route to add a new contact to the list of Contacts. Display all contacts data on the home page with the route "/".

There are three classes for the status :
- `interested` => Put a text in green
- `awaiting-reply` => Put a text in orange
- `to-contact` => Put a text in red

There is an example of how to use it in a html page :
```html
<div class="contact-status">Status : <span class="interested">Interested</span></div>
```

You must use these css classes in order to show the status by colors like the example below. If the status is "Interested" display the status text in green. If the status is "Awaiting Reply" display the status text in orange. If the status is "To Contact" display the status text in red.

## Example of the expected result

![](https://i.imgur.com/1BKnBn7.gif)

## Constraints

Do not use AI tools 

Use only html and css files given.

Use only Golang, HTML & CSS languages.

You can modify the provided HTML and CSS files as needed.

Javascript is prohibited.