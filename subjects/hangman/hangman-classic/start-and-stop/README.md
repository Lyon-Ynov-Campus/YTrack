## hangman-start-and-stop

### Notions
- [Golang Documentation: json](https://golang.org/pkg/json/)
- [Json encoding/decoding](https://blog.golang.org/json)
- [Golang Documentation: ioutil](https://golang.org/pkg/ioutil/)
- [Read/Write file golang](https://tutorialedge.net/golang/reading-writing-files-in-go/)
- [Go example: os Arg](https://gobyexample.com/command-line-arguments)

### Objectives

You must follow the same [principles](https://github.com/Lyon-Ynov-Campus/YTrack/tree/master/subjects/hangman/hangman-classic) as the first subject.

In hangman-start-and-stop have to create a way to stop the game and save the progress and restart at anytime to the point where you left the game.

You must:
* Implement a keyword `STOP` in the standard input.
  * It will stop and exit the game.
  * It will save the status of the game in a file. The data in the file must be encoded with `json.Marshal`

* Handle a parameter `--startWith save.txt` in the command line, that allow you to launch the game with the file you saved with `STOP` command.
The file will be decoded with `json.UnMarshal`

This project will help you learn about:
* Json format
* Encoding/Decoding structure to Json format
* Reading and Writing in files
* Argument handling in the command line 

### Allowed packages

- Only the [standard go](https://golang.org/pkg/) packages are allowed

### Usage
```
$> ./hangman words.txt
Good Luck, you have 10 attempts.
_ _ _ _ O

Choose: E
_ E _ _ O

Choose: A
Not present in the word, 9 attempts remaining
         
         
         
         
         
         
=========


Choose: STOP

Game Saved in save.txt.
```

```
$> ./hangman --startWith save.txt
Welcome Back, you have 9 attempts remaining.
_ E _ _ O

Choose: L
_ E L L O

Choose: B
Not present in the word, 8 attempts remaining
         
      |  
      |  
      |  
      |  
      |  
=========

Choose: H
H E L L O

Congrats !
```

### Instructions

- The code must respect the [**good practices**](https://public.01-edu.org/subjects/good-practices/).
- We suggest you to search for the principles of a good website design.
