# div-controller
This project is based on the use of TCP socket

This project is provided with a server and you have to make the client !  
The server will display on a local web page, a div HTML element and you will be able to controll this div by sending command to the server.

You will need to create a private repository with the name div-controller  
[WARNING !] all files have to be in the same folder

## Notion

* [Golang Documentation : Net](https://pkg.go.dev/net)
* [Golang Documentation : Os](https://pkg.go.dev/os)

## Instructions

Create a program `clientTCP` that will take 3 parameters at the start
* IP Adress
* Port
* Connexion type

## Part 1---
* First, the program must connect to the server provided
* The program will display an error if the connection failed
* The program can work with a menu

## Part 2---
* The program will read an user input as command
  * Command must begin with "/"
  * Display an error if the command didn't begin with "/"
  * All the CSS command will work and being display on the web page.
* The program will send the user input to the server
* The programm will allow to send several input without restarting the client

## Part 3---
For this part, you will need to use those following command :  
* `exec.Command("stty", "-F", "/dev/tty", "cbreak", "min", "1").Run()`
* `exec.Command("stty", "-F", "/dev/tty", "-echo").Run()`
* `exec.Command("reset").Run()`

The first one allow you to disable the console input buffer and therefore to not have to press "enter" to send your input  
The second one allow you to not display your entered character on the screen
the last one allow you to restore the initial console. this one has to be used when you leave your function or program otherwise you will not be able to see what you wrote on the console

This part will allow you to move your div in real time
For this part you will had to :
* Indicate to users to use "Z Q S D" to move their div
* Execute the commands provided above
* Take users input
* Send them to the server

### Allowed packages
* Only the [standard go](https://pkg.go.dev/std) packages are allowed

## Usage
Part 1 Menu :

    $ go run clientTCPGo.go localhost 8081 tcp
    Connecting to tcp server localhost:8081
    [1] : Moving div
    [2] : Config div
    [3] : Exit
    Menu :  

Part 2 Command line : 

    Menu : 2
    Type your command : /backgroundColor purple
    Type your command : /width 200
    Type your command : /height 200
    Type your command : /top 200
    Type your command : /left 200
    Type your command : /border solid 2px black
    Type your command :

Result : [here](https://i.imgur.com/ERBwGDW.png)

Part 3 GetChar : 

Client side :

    Menu : 1
    Press ZQSD to move your div !
    input :

Server side : 

    [::1]:51854 sent: z
    [::1]:51854 sent: q
    [::1]:51854 sent: s
    [::1]:51854 sent: d






    