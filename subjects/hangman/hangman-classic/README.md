## hangman

This project is based on the famous HangMan Game

You will need to create a private repository with the name `hangman-classic`

### Notions
- [Golang Documentation: ioutil](https://golang.org/pkg/ioutil/)
- [Golang Documentation: rand](https://golang.org/pkg/math/rand/)

### Instructions

Create a program `hangman` that will take a file as parameter. 
Create a file `words.txt` which contains a bunch of words with which the program will play. Each word is separated with a newline `\n`.

#### PART 1 ---

You will have 10 attempts to complete the game.

* First, the program will randomly choose a word in the file.
* The programm will reveal `n` random letters in the word, where `n` is the `len(word) / 2 - 1`
* The program will read the standard input to suggest a letter.
* If the letter is not present, it will print an error message and the number of attempts decreases (10->9->...0)
* If the letter is present, it will reveal all the letters corresponding in the word.
* The program continues until the word is either found, or the numbers of attempts is 0.

#### PART 2 ---

Let's name José the poor man that will be hanging to this rope if you lose.

You will be given a file named [hangman.txt](https://github.com/Lyon-Ynov-Campus/YTrack/blob/master/subjects/hangman/hangman-classic/hangman.txt) that contains all the position of José. 
This file contains 10 positions corresponding to the 10 attempts needed to complete the game.

You will need to parse this file and display the appropriate position of José as the count of attemps decreases.

Each position has :
* A height of 7 lines, ending with a new line (so 8)
* A length of 9 character, ending with a new line (so 10)

Here is an example of the seventh position of José :

```
  +---+  
  |   |  
  O   |  
 /|   |  
      |  
      |  
=========

```

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

Choose: Z
Not present in the word, 7 attempts remaining
  +---+  
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
