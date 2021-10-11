# div-controller
This project is based on the use of TCP sockets

It is provided with a server, the goal is to make the client that can communicate with this server !  
The server will display on a local web page, an HTML div element. Your client will be able to control this div by sending commands to the server.
For that it will display a menu to choose between three options:
- 1: Configure the div on the server
- 2: Move the div on the server using the key arrows
- 3: Exit the program.

When you have choosen an option, think of a way to switch to another option.

You will need to create a private repository with the name div-controller  
[WARNING !] all files have to be in the same folder

## Notion

* [Golang Documentation : Net](https://pkg.go.dev/net)
* [Golang Documentation : Os](https://pkg.go.dev/os)
* [Golang Documentation : bufio](https://pkg.go.dev/bufio)

## Instructions

#### Before you start

You need to launch the server by running the following command inside the directory
```
go run server.go
```
Then open your browser and go to `localhost:8080`

Create a program `clientTCP` that will take 2 parameters at the start
* First: IP Adress
* Second: Port

Run your client by typing:
```
go run clientTCP.go localhost 8081
```

## Part 1 --- Basics
* First, the program must connect to the server provided in parameters (cf: [Net package documentation](https://pkg.go.dev/net))
* The program will display an error if the connection has failed
* Try to send this command to the server to see its reaction: `/backgroundColor red` (cf: [Net package documentation](https://pkg.go.dev/net))

> **Note**: The client will constantly read the user input in a loop. Otherwise the connection will be interupted, you will have to rerun the server and the client.
> Here is how you can read the standard input
> 
``` go
reader := bufio.NewReader(os.Stdin)
line := bufio.ReadLine()
```

> **Note 2**: You can find all the commands availabe [here](https://www.w3schools.com/jsref/dom_obj_style.asp)

## Part 2 --- Config
* The program will read the user input as commands
  * A command must begin with `/`
  * Display an error if the command doesn't begin with `/`
  * You can test [all the CSS commands](https://www.w3schools.com/jsref/dom_obj_style.asp). It will work and being displayed on the web page.
    - **Exemple:** `$> /width 100` 
* The program will then send the user input to the server
* You can continue to send several commands without restarting the client

## Part 3 --- Move
In this part you will need to read the user input each 3 bytes in order to catch the arrow keys.
> ```os.Stdin.Read...``` 
>
> check [os](https://pkg.go.dev/os) library

It will allow you to move the div in real time on the server.

The following lines of code will help you perform this mode, use them when needed:  

* `exec.Command("stty", "-F", "/dev/tty", "cbreak", "min", "1").Run()`
Its allowing the code to disable the console input to bufferize. Therefore you do not need to press "enter" to send your input, it sends a character directly after it is pressed.

* `exec.Command("stty", "-F", "/dev/tty", "-echo").Run()`
This one can allow you not to display the characters you have typed on the console. Useful when pressing keys to move the div.

* `exec.Command("reset").Run()`
Finaly, this command can restore the console to its initial state. It should be used when you leave the choosen option of the menu or you leave the program. Otherwise you won't be able to see what you wrote on the console

For this part you will have to :
* Indicate to users to use "↑ ← ↓ →" to move the div. The server can only respond to theses 4 keys.
* Execute the commands provided above.
* Take users input by reading it 3 byte by 3 byte. (cf: [Os package documentation](https://pkg.go.dev/os))
* Send them to the server

## Part 4 --- Menu
- Finally you should provide a way in your program to choose the mode you want. (a menu at the start for example)
- You should also implement a feature that allow you to go back to the menu, to switch the mode (a choosen key on the keyboard can do the trick).
    - **Mode 1**: `Ctrl+A` or `q` can do the trick.
    - **Mode 2**: A certain command would work: `/leave` for example

**Example:**
```
Connecting to tcp server localhost:8080

Menu ------
[1] : Moving div
[2] : Config div
[3] : Exit

Choose an option:
``` 

<br>

# Part 5 --- Bonus
- Modify the server so that you can be able to insert text into the div !
- You will need to type `/innerText the text you want to write in the div`, while you are in **Mode 2** (Config div)

> `/innerText` is not a CSS command, it won't work like a charm without modifying the server a little bit.

GOOD LUCK !

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

Result : ![here](https://i.imgur.com/ERBwGDW.png)

Part 2 GetKey : 

Client side :

    Choose an option : 1
    Press ↑ ← ↓ → to move your div !
    input :

Server side : 

    [::1]:51854 sent: 
    [::1]:51854 sent: 
    [::1]:51854 sent: 
    [::1]:51854 sent: 