## hangman-web

Hangman-web consists in creating and running a server, in which it will be possible to use a web GUI (graphical user interface) version of your last project, hangman.

You will need to create a public repository with the name `hangman-web`

### Notions
- [Golang Documentation: net](https://golang.org/pkg/net/)
- [Golang Documentation: ioutil](https://golang.org/pkg/ioutil/)
- [Golang Documentation: rand](https://golang.org/pkg/math/rand/)
- [Go Web Example Documentation: templates](https://gowebexamples.com/templates/)
- [Golang Documentation: templates](https://pkg.go.dev/html/template)

### Objectives

Create a program `hangman-web` that will take a file as parameter. 
This file contains a bunch of words with wich the program will play. Each word is separated with a newline.

The behavior of the game is the same than the [hangman project](), refers to it for more details.

In this project you will need to implement at least the following endpoints:

1. GET `/` : Sends HTML response - the main page. <br>
1.1. GET Tip: [go templates]((https://pkg.go.dev/html/template)) to receive and display data from the server<br>

2. POST `/hangman` : that sends data to Go server (the letter you want to find)<br>
2.1. POST Tip: use [form](https://developer.mozilla.org/fr/docs/Web/HTML/Element/Form) and other types of tags to make the post request.

The main page must have at least:
* A text representing the word to reveal.
* A text input
* A button which sends a POST request to `/hangman` and outputs the result on page.

### Allowed packages

- Only the [standard go](https://golang.org/pkg/) packages are allowed

### Instructions

- HTTP server must be written in _Go_.
- HTML templates must be in project root directory _templates_.
- The code must respect the [good practices](https://public.01-edu.org/subjects/good-practices/).

### Usage

![Imgur](https://i.imgur.com/msWYxJD.png)
