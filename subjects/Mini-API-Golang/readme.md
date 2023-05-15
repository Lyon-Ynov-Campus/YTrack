# MINI API GOLANG

## Objective  
In this exercice we will create firsts steps to make an API in Golang.

## Requirements
- Go
- Javascript

## Instructions
### Part 1
- Create a HTML form with the following fields:
    - `Name` string
    - `Email` string
    - `Password` string

### Part 2
- Create a new project in Go
- Create a new file called `Users.go` and create a struct called `User` with the following fields:
    - `ID` int
    - `Name` string
    - `Email` string
    - `Password` string
- Create a new file called `main.go`
- Create a function called `InitServer` that initates your routes and server
- Create a function called `GetDB` that returns a connection to your database
- Create a function called `GetUsers`. this function have to make a query to your database and insert the results in a slice of structs called `Users`
- Create a function called `CreateUser` that receives a Data from a HTML form and insert it in your database.

### Part 3
- Create a new Javascript file called `main.js`
- Create a function called `CreateUser` that receives a Data from a HTML form and returns a JSON with the following fields:
    - `Name` string
    - `Email` string
    - `Password` string

