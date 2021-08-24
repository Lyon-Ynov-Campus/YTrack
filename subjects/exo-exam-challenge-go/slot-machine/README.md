# Slot-Machine

## Instructions

Le but de cet exercice est d'analyser les lignes gagnantes d'une machine à sous, et de renvoyer la somme des lignes gagnantes.

Pour cela vous receverez une machine de taille `n`, et les lignes gagnantes seront les suivantes :

![exemple](https://i.imgur.com/ohMHijy.png)

Si une ligne est valide soit 3 symbole identique, vous devrez alors faire la somme des lignes gagnantes comme dans l'exemple suivant :

![exemple](https://i.imgur.com/9fzSPYq.png)

<br>

#### STEP 1

Créer une fonction `Analyze` recevant un tableau double entrées représentant la machine à sous, l'output sera un ``int`` de la somme des lignes gagnantes.


``` golang
func Analyze(slot [][]int) int {}
```

Cette fonction doit : 
* Analyser le tableau et identifier les lignes gagnantes
* Calculer et renvoyer la somme gagné lors de cette partie

#### STEP 2

Créer vos tableaux afin de tester votre programme.



### A SAVOIR

* La machine sera forcément un carré de taille comprise entre 3 et `n`
* Les symboles présent dans la machine seront entre 1 et 3

**Imports autorisés**: fmt, math/rand

### ⚠️ Attention ⚠️
Ne rendre que la fonction `Analyze` <br>

<span style="background-color: red">Changer le ``package main`` en ``package Student`` avant de rendre le fichier</span>



### Exemple:
![exemple](https://i.imgur.com/dVYJC3G.png)