# String-Evolve

## Instructions

le but de l'exercice est de modifier la chaine de caractere selon la ponctuation.

Pour se faire,
vous devez mettre en majuscule les partie de la chaine dont la ponctuation est un !
vous devez renverser les partie de la chaine dont la ponctuation est un ?
vous devez mettre en majuscule la premiere lettre dont les partie de la chaine se terminent par un .

```
bonjour! => BONJOUR!
bonjour? => ruojnob?
bonjour. => Bonjour.

bonjour! ca va? oui. => BONJOUR!av ac ? Oui.
```
<br>

#### STEP 1

Créer une fonction `StringEvolve` recevant une string que vous devrez modifier a l'aide de votre programe, l'output sera une ``string`` qui sera le reultat attendu de la string principal modifier.


``` golang
func StringEvolve(s string) string {}
```

Cette fonction doit : 
* Gérer tout les caracters ascii (man ascii dans le terminal)
* Doit garder les ponctuations a l'index ou ils sont placés

#### STEP 2

Testez votre programe.

```
// Dans la fonction main

StringEvolve("bonjour! comment va tu! ca va!") // BONJOUR! COMMENT VA TU! CA VA!
StringEvolve("dfgndvnb!dsfhg!gdqs!  sfgsgf!fsd gb!") // DFGNDVNB!DSFHG!GDQS!  SFGSGF!FSD GB!

StringEvolve("bonjour? comment va tu? ca va?") // ruojnob?ut av tnemmoc ?av ac ?
StringEvolve("dfgndvnb?dsfhg?gdqs?  sfgsg?fsd gb?") // bnvdngfd?ghfsd?sqdg?gsgfs  ?bg dsf?

StringEvolve("drg.sdhsd.gdhsqhg.") // Drg.sdhsd.gdhsqhg.
StringEvolve("qerg.dqhr.dqhfg.dqf..") // Qerg.dqhr.dqhfg.dqf..

StringEvolve("bonjour! comment va tu? ca va.") // BONJOUR!ut av tnemmoc ? Ca va.
StringEvolve("dfgndvnb?dsfhg?gdqs.  sfgsgf!fsd gb!") // bnvdngfd?ghfsd?Gdqs.  SFGSGF!FSD GB!
```

### A SAVOIR

* Pour le `?` tout les caractere doivent etre inverser y compris les espaces
* Vous ne devez pas gere les cas speciau nous ne teston que des chose coerante (type test du dessus)

**Imports autorisés**: fmt, string.split

### ⚠️ Attention ⚠️
Ne rendre que la fonction `StringEvolve` <br>
