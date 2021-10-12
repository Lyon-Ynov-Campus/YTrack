# Slot-Machine

## Instructions

Le but de cet exercice est d'analyser les lignes gagnantes d'une machine à sous, et de renvoyer la somme de ces lignes.

Pour cela vous recevrez une machine de taille `n`, et les lignes gagnantes seront les suivantes :

![exemple](https://i.imgur.com/ohMHijy.png)

Si une ligne est valide, soit 3 symboles identiques, vous devrez alors faire la somme des lignes gagnantes comme dans l'exemple suivant :

![exemple](https://i.imgur.com/9fzSPYq.png)

<br>

#### STEP 1

Créer une fonction `Analyze` recevant un tableau double entrées représentant la machine à sous, l'output sera un ``int`` de la somme des lignes gagnantes.


``` golang
func Analyze(slot [][]int) int {}
```

Cette fonction doit : 
* Analyser le tableau et identifier les lignes gagnantes
* Calculer et renvoyer la somme gagnée lors de cette partie

#### STEP 2

Créer vos tableaux afin de tester votre programme.

<span style="background-color: red">Vous ne devez pas générer alétoirement un tableau</span>

**Exemple:**

``` golang
slotcase := [][]int{{1, 1, 1}, {2, 1, 3}, {3, 2, 1}}

Analyze(slotcase) // Cela devrait retourner 6
```


### A SAVOIR

* La machine sera forcément un carré de taille comprise entre 3 et `n`
* Les symboles présents dans la machine seront 1,2 et 3

**Imports autorisés**: fmt, math/rand

### ⚠️ Attention ⚠️
Ne rendre que la fonction `Analyze` <br>

<span style="background-color: red">Changer le ``package main`` en ``package Student`` avant de rendre le fichier</span>



### Exemple:
![exemple](https://i.imgur.com/dVYJC3G.png)
