# String-Evolve

## Instructions

Le but de l'exercice est de modifier la chaine de caractere selon la ponctuation.

Pour ce faire vous devez:
- Mettre en majuscule les parties de la chaine qui précèdent un `!`
- Renverser les parties de la chaine qui précèdent un `?`
- Mettre en majuscule la premiere lettre dont les parties de la chaine se terminent par un `.`

```
bonjour! => BONJOUR!
bonjour? => ruojnob?
bonjour. => Bonjour.

bonjour! ca va? oui. => BONJOUR!av ac ? Oui.
```
<br>

#### STEP 1

Créer une fonction `StringEvolve` recevant une string en paramètre que vous devrez modifier à l'aide de votre programme.L'output sera une `string` modifié selon les règles énoncées ci-dessus.

``` golang
func StringEvolve(s string) string {}
```

Cette fonction doit : 
* Gérer tout les caractères ascii (man ascii dans le terminal)
* Doit garder les ponctuations à l'index ou elles sont placées

#### STEP 2

Testez votre programme.

``` golang
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

* Pour le `?` tout les caractères doivent être inversés y compris les espaces (voir 7ème test)
* Vous ne devez pas gérer les cas spéciaux nous ne testons que des choses cohérentes (type test du dessus)

**Imports autorisés**: fmt, string.split
