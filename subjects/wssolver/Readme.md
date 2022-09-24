# Word Scrabble Solver
## Objectives

Word Scramble Solver consists on receiving a Word Scramble field and finding all the words contained in it.

The given field will always be of size [10]x[10] and will always contain runes.

You are given a list of words to work with , all the words to find will be contained in this list.

All the possible words have to be found.


The Words to find can only be contained in all the lines , Columns or Diagonals like so :

![SolverVector.png](https://i.imgur.com/ZhTxNyI.png)



## Instructions

Write the Solver() function that takes a field[10][10]rune in parameter and returns the found words.

Your code must be delivered with the Solver() function and by replacing 'package main' with 'package Correction'.

Here is an example of the expected result to give in :

![result.png](https://i.imgur.com/zuHTl3o.png)

The Program must draw the letter table like so :

![ExampleTable.png](https://i.imgur.com/399ayl3.png)


Here is an example of the program running :

![ExampleSolverMM.gif](https://i.imgur.com/4XZvkVK.gif)

You are only allowed the packages listed bellow : 

- "buffio"

- "log"

- "os"

- "github.com/01-edu/z01"
## Ressources

Here is an example of letter table to work with and test your code : 
```
var suj2 = [10][10]rune{
	{'c', 'o', 't', 'd', 't', 'r', 's', 'n', 'e', 'c'},
	{'r', 'e', 'e', 'o', 't', 'e', 'o', 'h', 'u', 'c'},
	{'ê', 'u', 'h', 'h', 't', 'r', 'l', 'a', 'o', 'a'},
	{'p', 'f', 'w', 'a', 'e', 'r', 'e', 'a', 'a', 'f'},
	{'e', 's', 't', 'p', 'r', 't', 'a', 'e', 'r', 'é'},
	{'s', 'a', 'p', 'y', 'u', 'i', 'o', 'e', 's', 'd'},
	{'p', 'a', 'e', 'o', 'i', 't', 'c', 'd', 't', 'e'},
	{'n', 'n', 'c', 'n', 'c', 'w', 'b', 'o', 'b', 'n'},
	{'f', 'o', 'u', 'r', 'c', 'h', 'e', 't', 't', 'e'},
	{'b', 'a', 'i', 'e', 's', 't', 'h', 'n', 'w', 's'},
}
```

Here is the list of Words :
<a href="https://drive.google.com/u/0/uc?id=1jb0RQLdoDqZ4f1JypLoQ_kQqK7IMsRLS&export=download" title="Words" download>Words</a>
[words.txt](https://github.com/Lyon-Ynov-Campus/YTrack/blob/master/subjects/wssolver/words.txt)
### Docs:

[Readfile.doc](https://golangdocs.com/golang-read-file-line-by-line)

