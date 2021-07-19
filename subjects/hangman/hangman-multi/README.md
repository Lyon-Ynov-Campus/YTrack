## hangman

This raid is based on the famous HangMan Game

You will need to create a public repository with the name `hangman`

### Notions
- [Golang Documentation: net](https://golang.org/pkg/net/)
- [Golang Documentation: ioutil](https://golang.org/pkg/ioutil/)
- [Golang Documentation: rand](https://golang.org/pkg/math/rand/)

### Instructions

Create a program `hangman` that will take a file as parameter. 
This file contains a bunch of words with wich the program will play. Each word is separated with a newline.

You will have 10 attempts to complete the game.

* First, the program will randomly choose a word in the file.
* The program will read the standard input to suggest a letter.
* If the letter is not present, it will print an error message.
* If the letter is present, it will reveal all the letters corresponding in the word.
* The program continues until the word is either found, or the numbers of attempts is 0.

### Usage
```
$> ./hangman words.txt
Good Luck, you have 10 attempts.
_ _ _ _ _

Choose: E
_ E _ _ _

Choose: A
Not present in the word, 9 attempts remaining

Choose: L
_ E L L _ 

Choose: H
H E L L _

Choose: O
H E L L O

Congrats !

```

### Multiplayer Mode
 
This mode require to build a server and a client side.
The program can be played with four people maximum.

##### Server
Create a program `hangman-server`

* The server will take the file as parameter. (same file as in the first instructions)
* Once the server is ready, it will display the IP adress to connect to. It will wait for two player at least to start the game.
* The server will chose a random word to play with, from the file passed as parameter.
* Each time the server receives a suggestion, it will send the response to all connected clients.
* If the letter is not present, the response will be an error message, and attempts are decreased.
* If the letter is present, the response will be the word with all the letters corresponding in the word revealed.
* The program continues until the word is either found, or the numbers of attempts is 0. It then stops the game, as well as all the clients.

#### Client
Create a program `hangman-client`

* The client will take two parameter, the name of the player, and the IP adress to connect to.
* The programm will wait for its turn, specified by the server.
* When it is its turn, it will read the standard input to suggest a letter, and send this suggestion to the server.
* The client is in charge to display the server responses.

### Usage

![](https://i.imgur.com/zutn0ro.png)   

| Player1 | Player 2 |
| -------- | -------- |
| ![](https://i.imgur.com/eC3cDL7.png)| ![](https://i.imgur.com/kzKKHb1.png) |




