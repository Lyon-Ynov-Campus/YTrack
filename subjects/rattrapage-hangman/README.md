## Searchlist

### Barème:
- Tests d'entrée / sortie: 12 points
- Cas d'erreurs: 4 points
- Clarté du code: 4 points

### Instructions

Le but de cet exercice est de ressortir tout les mots d'un fichier qui correspondent à une recherche donnée

<br>

#### STEP 1

Créez une fonction `SearchList` prenant deux paramètres, le nom du fichier dans lequel chercher, la chaîne à chercher.
``` golang
func SearchList(filename, search string) []string {}
```
Cette fonction doit:
* Lire le contenu du fichier `filename` passé en argument
* Retourner un tableau contenant tout les lignes qui commencent par `search`

#### STEP 2

Créez un programme (main) qui utilisera votre fonction `SearchList`. Ce programme doit:
* Prendre un argument un nom de fichier
* Lire l'entrée standard pour demander à l'utilisateur ce qu'il souhaite chercher
* Utiliser la fonction `SearchList` avec le fichier donné ainsi que la recherche.

Voici deux fichier avec lesquels vous pouvez tester:
- [exemple1](https://github.com/Lyon-Ynov-Campus/YTrack/tree/master/subjects/rattrapage-asciiart/exemple1)
- [exemple2](https://github.com/Lyon-Ynov-Campus/YTrack/tree/master/subjects/rattrapage-asciiart/exemple2)


<h4><span class=""><b><span class="" style="color: rgb(239, 69, 64);">Tout devoir s'avérant être identique a celui d'un autre étudiant se verra attribuer la note de 0.</span></b><br></span>
</h4>

**Imports autorisés**: os, bufio, log, fmt

**Ressources**
- [zetcode](https://zetcode.com/golang/readfile/)
- [yourbasics](https://yourbasic.org/golang/read-file-line-by-line/)
- [gobyexamples](https://gobyexample.com/slices)

**Exemple**

![exemple](https://i.imgur.com/Y99gyu2.gif)