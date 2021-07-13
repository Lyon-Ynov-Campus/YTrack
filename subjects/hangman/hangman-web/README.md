## hangman-web

This raid is based on the famous HangMan Game and you will need the previous project `hangman`

You will need to create a public repository with the name `hangman-web`

### Notions
- [Golang Documentation: net](https://golang.org/pkg/net/)
- [Golang Documentation: ioutil](https://golang.org/pkg/ioutil/)
- [Golang Documentation: rand](https://golang.org/pkg/math/rand/)
- [Go Web Example Documentation: templates](https://gowebexamples.com/templates/)
- [Golang Documentation: templates](https://pkg.go.dev/html/template)

### Instructions

MORE TO COME !!!

Create a program `hangman` that will take a file as parameter. 
This file contains a bunch of words with wich the program will play. Each word is separated with a newline.

You will have 10 attempts to complete the game.

* First, the program will randomly choose a word in the file.
* The programm will reveal `n` randoms letter in the word, where `n` is the `len(word) / 2 - 1`
* The program will read the standard input to suggest a letter.
* If the letter is not present, it will print an error message.
* If the letter is present, it will reveal all the letters corresponding in the word.
* The program continues until the word is either found, or the numbers of attempts is 0.

### Usage