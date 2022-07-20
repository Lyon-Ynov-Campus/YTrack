# Audit - Hangman

### Objective 

The goal is to review the code of your classmate for the Hangman project.

### Restrictions

Has the requirement for the allowed packages been respected? (Reminder for this project: [only standard packages](https://pkg.go.dev/std))

### Hangman Principal Subject

#### Part 1

**Answer all these questions :**

> - Does the program choose a random word ?
> - Does the program reveal ```n``` random letters in the word, which ```n``` equals to ```len(word) / 2 - 1``` ?
> - Does the program read the standard input to suggest a letter ?
> - Does the program print error messages and the number of attempts decreases by one when letter is not correct ?
> - When letter is correct, does it reveal all the letters corresponding in the word ?

#### Part 2

**Answer all these questions :**

> - Does the program reads all positions of José from ```hangman.txt``` ?
> - Does the program display all positions of José based on the number of attempts ?
> - Does the program display this position of José when the number of attempts is equal to **7** :

```
  +---+  
  |   |  
  O   |  
 /|   |  
      |  
      |  
=========
```

### start-and-stop

**Answer all these questions :**

> - Type **STOP** in the standard input. Does it stop the game and save the status of the game encoded with ```json.Marshal``` in a file ```save.txt``` ?
> - Can you start the game with the status of the game saved in ```save.txt``` with the flag ```--startWith save.txt``` ?

### ascii-art

**Answer all these questions :**

> - Type ```./hangman words.txt --letterFile standard.txt``` and check if words are written in [standard ASCII](https://lyon-ynov-campus.github.io/YTrack/subjects/hangman/dictionnary/standard.txt).
This is an example of what you must have :

```
./hangman words.txt --letterFile standard.txt

Good luck you have 10 attempts !

 _
| |
| |__                                ___
|  _ \                              / _ \
| | | |                            | (_) |
|_| |_|                             \___/
         ______   ______   ______
        |______| |______| |______|
    
Choose: E

 _
| |
| |__     ___                      ___
|  _ \   / _ \                    / _ \
| | | | |  __/                   | (_) |
|_| |_|  \___|                    \___/
                ______   ______
               |______| |______|

Choose: A
Not present in the word, 9 attempts remaining
 _
| |
| |__     ___                      ___
|  _ \   / _ \                    / _ \
| | | | |  __/                   | (_) |
|_| |_|  \___|                    \___/
                ______   ______
               |______| |______|
   






=========

Choose: L

 _              _   _
| |            | | | |
| |__     ___  | | | |   ___
|  _ \   / _ \ | | | |  / _ \
| | | | |  __/ | | | | | (_) |
|_| |_|  \___| |_| |_|  \___/





=========

Congrats !
```

### advanced-features

**Answer all these questions :**

> - Can you suggest a word ?
> - If the word is not correct, does your number of attempts decrease by 2 ?
> - If the word is correct, does it stop the game ?
> - Can you suggest the same letter two times ? And does it display an error message ?



### Basic

> - Does the project runs quickly and effectively? (Favoring recursive, no unnecessary data requests, etc)
> - Does the code obey the good practices?
> - Is there a test file for this code?
> - Are the tests checking each possible case?
> - Is the output of the program well structured? Are the characters displayed correctly in line?
> - Is the project a package ```hangman``` ?
> - Does the project respect the [good practices](https://public.01-edu.org/subjects/good-practices/) ?

### Social

> - Did you learn anything from this project?
> - Can it be open-sourced / be used for other sources?
> - Would you recommend/nominate this program as an example for the rest of the school?
<br>
