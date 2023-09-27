# Word Search Solver

Execute the code with the command ```Go run main.go```

## Essentials :
* Does the program print the provided grid with letters ?
* Does the program only use the 4 packages allowed :
	```
	- "buffio"
	
	- "log"
	
	- "os"
	
	- "github.com/01-edu/z01"
	```

## Grid 1
You have this grid of letters :

  ```golang
  var field = [10][10]rune{
	{'s', 'h', 'f', 'h', 'm', 'g', 'm', 't', 'i', 'f'},
	{'q', 'a', 'z', 'd', 't', 'u', 'f', 'c', 'n', 'u'},
	{'p', 'â', 't', 'i', 's', 's', 'e', 'r', 'i', 'e'},
	{'g', 'r', 'a', 'i', 'n', 's', 'é', 'o', 't', 'e'},
	{'r', 'j', 't', 'm', 't', 'f', 'r', 'i', 's', 'r'},
	{'o', 'u', 'e', 'e', 'a', 't', 'd', 's', 'r', 't'},
	{'e', 't', 'i', 'c', 'u', 'a', 'a', 's', 'i', 'a'},
	{'v', 'e', 'r', 'r', 'e', 't', 'i', 'a', 'o', 'i'},
	{'o', 'd', 'u', 'o', 'a', 't', 'l', 'n', 'n', 'c'},
	{'a', 'a', 's', 's', 'i', 'e', 't', 't', 'e', 'i'},
  }
  ```

* Does the program show you these words by lines : `pâtisserie - grains - verre - assiette`
* Does the program show you these words by columns : `jute - croissant`
* Does the program show you these words by diagonal line (from up to down) : ``
* Does the program show you these words by diagonal line (from down to up) : `café - tasse - lait`

## Grid 2
You have this grid of letters :

  ```golang
  var field = [10][10]rune{
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

* Does the program show you these words by lines : `fourchette - baies`
* Does the program show you these words by columns : `crêpes - oeufs - café`
* Does the program show you these words by diagonal line (from up to down) : `haricots - lard`
* Does the program show you these words by diagonal line (from down to up) : `couteau - eau - napperon - patates`

## Grid 3
You have this grid of letters :

  ```golang
  var field = [10][10]rune{
	{'s', 'p', 'd', 'a', 'e', 'e', 'v', 'i', 'd', 'r'},
	{'p', 'a', 'g', 'r', 'm', 'f', 'v', 'e', 'n', 't'},
	{'t', 'o', 'n', 'm', 'i', 'd', 'n', 'u', 'd', 'w'},
	{'y', 't', 'e', 't', 'i', 'p', 'a', 'c', 'e', 'v'},
	{'n', 'f', 'e', 'u', 'é', 'e', 'i', 'r', 'h', 'i'},
	{'m', 'e', 'd', 'i', 't', 'a', 't', 'i', 'o', 'n'},
	{'c', 't', 'r', 'a', 'u', 'l', 'i', 'w', 'r', 't'},
	{'a', 'i', 'b', 'q', 'd', 'a', 'a', 'o', 's', 'r'},
	{'e', 'f', 'e', 'n', 'e', 'c', 'o', 'h', 'a', 'e'},
	{'e', 'e', 'f', 'l', 'e', 'a', 'o', 't', 'r', 'i'},
   }
  ```

* Does the program show you these words by lines : `vent - feu`
* Does the program show you these words by columns : `lac - dehors`
* Does the program show you these words by diagonal line (from up to down) : `santé - ciel`
* Does the program show you these words by diagonal line (from down to up) : `bateau - eau - femme - yoga - quai`

## Code Quality
* clear and concise code (1 function -> 1 fonctionnality)
* Variable naming
* Git branch correctly set up
* Correct branch and commit name
