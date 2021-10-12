## Matchstick

Le but de cet exercice est de réaliser un mini jeu d'allumettes où vous jouerez contre une Intelligence Artificielle. Le but du jeu est de ne pas être le dernier à retirer la dernière allumette.

### Notions

⚠️ ATTENTION ⚠️

La première ligne de votre main doit être la suivante:
``` Go
rand.Seed(time.Now().UnixNano())
``` 
Cela permet à votre programme de pouvoir générer des valeurs randoms différentes via l'étape suivante

Effectuer un RANDOM entre 1 et 3: 
``` Go
r := rand.Intn(3) + 1
```

Lire l'entrée standard:
``` Go
/* Initialiser une seule fois */
scanner := bufio.NewScanner(os.Stdin)

/* A éxécuter en boucle */
scanner.Scan() //Permet d'écouter l'entrée standard
text := scanner.Text() // Permet de récuperer le text entrée par l'utilisateur
```

### Instructions

- Determinez un nombre d'allumettes avec lesquels jouer entre 1 et 15
- Vous jouerez un tour sur deux, le second tour sera effectué par l'IA, qui choisiria simplement un nombre aléatoire entre 1 et 3 à enlever au nombre d'allumette de base.
- Vous devez lire l'entrée standard pour demander à l'utilisateur le nombre d'allumette qu'il souhaite enlever.
    - Le nombre d'allumette doit être compris entre 1 et 3 compris.
    - Si l'entrée est inférieur, égale à 0 ou incompréhensible, le programme affichera `Entry must be a number cannot be negative or equal to 0` 
    - Si l'entré est supérieur à 3, le programme affichera `Number must be between 1 and 3`
- Si vous avez enlevé la dernière allumette, le programme affichera `You lost... noob !`
- Si l'IA à enlevé la dernière allumette, le programme affichera `You won !`

### Allowed Packages

 - [bufio](https://pkg.go.dev/bufio)
 - [fmt](https://pkg.go.dev/fmt)
 - [math/rand](https://pkg.go.dev/math/rand)
 - [os](https://pkg.go.dev/os)
 - [strconv](https://pkg.go.dev/strconv)
 - [time](https://pkg.go.dev/time)

### Usage

```
./matchstick
||||||||||||

Choose: 3
|||||||||

AI remove 1 matchsticks
||||||||

Choose: 2
||||||

AI remove 3 matchsticks
|||

Choose: 1
||

AI remove 1 matchsticks
|

Choose: 1
You Lost..., noob

```

```
./matchstick
||

Choose: 1
|

AI remove 1 matchsticks
|

You won !

```
