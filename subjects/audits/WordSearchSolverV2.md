# Word Search Solver

Execute the code with the command ```Go run main.go```

## Essential :
* Does the program print the provided grid with letters ?

## Questions
* Does the program show you these words : `pâtisserie - grains - jute - café - croissant - tasse - lait - verre - assiette`
  with this grid :
  
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
  
*  Does the program show you these words : `crêpes - oeufs - haricots - lard - café - napperon - fourchette - baies - couteau - patates - eau`
  with this grid :
  
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

## Code Quality
* clear and concise code (1 function -> 1 fonctionnality)
* Variable naming
* Git branch correctly set up
* Correct branch and commit name
