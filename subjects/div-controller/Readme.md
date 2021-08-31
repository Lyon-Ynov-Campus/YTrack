# div-controller
This project is based on the use of TCP sockets

It is provided with a server, the goal is to make make the client that can communicate with this server !  
The server will display on a local web page, an HTML div element. You client will be able to controll this div by sending commands to the server.

You will need to create a private repository with the name div-controller  
[WARNING !] all files have to be in the same folder

## Notion

* [Golang Documentation : Net](https://pkg.go.dev/net)
* [Golang Documentation : Os](https://pkg.go.dev/os)
* [Golang Documentation : bufio](https://pkg.go.dev/bufio)

## Instructions

Create a program `clientTCP` that will take 3 parameters at the start
* First: IP Adress
* Second: Port
* Third: Connexion type

## Part 1---
* First, the program must connect to the server provided in parameters
* The program will display an error if the connection has failed
* The program must display a menu like so:
```
Connecting to tcp server localhost:8080

Menu ------
[1] : Moving div
[2] : Config div
[3] : Exit

Choose an option:
```

## Part 2---
* The program will read the user input as commands
  * A command must begin with "/"
  * Display an error if the command doesn't begin with "/"
  * You can test all the CSS commands. It will work and being displayed on the web page.
    - **Exemple:** `$> /width 100` 
* The program will then send the user input to the server
* You can continue to send several command swithout restarting the client

## Part 3---
For this part, you will need to use the following lines of code :  

* `exec.Command("stty", "-F", "/dev/tty", "cbreak", "min", "1").Run()`
Its allowing the code to disable the console input to bufferize. Therefore you do not need to press "enter" to send your input.

* `exec.Command("stty", "-F", "/dev/tty", "-echo").Run()`
This one can allow you not to display the characters you have typed on the console. Usefule when pressing keys to move the div.

* `exec.Command("reset").Run()`

Finaly, this command can restore the console to its initial state. It should be used when you leave the choosen option of the menu or you leave the program. Otherwise you will not be able to see what you wrote on the console

This part will allow you to move your div in real time

For this part you will had to :
* Indicate to users to use "Z Q S D" to move the div. The server can only respond to theses 4 keys.
* Execute the commands provided above.
* Take users input
* Send them to the server

### Allowed packages
* Only the [standard go](https://pkg.go.dev/std) packages are allowed

## Usage

Part 1 Command Line & Menu : 

    $ go run clientTCPGo.go localhost 8081 tcp
    Connecting to tcp server localhost:8081
    
    Menu ------
    [1] : Moving div
    [2] : Config div
    [3] : Exit
 
    Choose an option : 2
    Type your command : /backgroundColor purple
    Type your command : /width 200
    Type your command : /height 200
    Type your command : /top 200
    Type your command : /left 200
    Type your command : /border solid 2px black
    Type your command :

Result : [here](https://i.imgur.com/ERBwGDW.png)

Part 2 GetKey : 

Client side :

    Choose an option : 1
    Press ZQSD to move your div !
    input :

Server side : 

    [::1]:51854 sent: z
    [::1]:51854 sent: q
    [::1]:51854 sent: s
    [::1]:51854 sent: d






    
