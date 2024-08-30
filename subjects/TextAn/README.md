## textan

#### Instructions

Write a function `TextAn` that display the right amount of words, characters, vowels and consonants inside the string `str` passed as parameter.

There is also a second parameter `word` which can be an empty string, but if not empty it must print how many times the word passed as parameter occurs in the string, and if it's a palindrome or not (numbers can't be palindromes).

The function must display the informations about the string as in the examples.

Make sure you submit all the necessary files to run the program.

#### Expected function

```go
func TextAn(str string, word string) {

}
```

#### Usage

Here are possible programs to test your function :

Program #1

```go
package main

import "piscine"

func main() {
	piscine.TextAn("Salut, je m'appelle Gabriel et je suis très content !", "")
}
```

And its output :

```console
$ go run .
Amount of words : 9
Amount of characters : 54
Amount of vowels : 15
Amount of consonants : 25
No word passed as parameter
$
```

Program #2

```go
package main

import "piscine"

func main() {
	piscine.TextAn("Salut, je m'appelle Gabriel content et je suis très content !", "content")
}
```

And its output :

```console
$ go run .
Amount of words : 9
Amount of characters : 54
Amount of vowels : 15
Amount of consonants : 25
"content" occurs 2 times
"content" is not a palindrome
$
```

Program #3

```go
package main

import "piscine"

func main() {
	piscine.TextAn("Salut, je m'appelle Gabriel content et je suis très content !", "kayak")
}
```

And its output :

```console
$ go run .
Amount of words : 9
Amount of characters : 54
Amount of vowels : 15
Amount of consonants : 25
"kayak" occurs 2 times
"kayak" is a palindrome
$
```