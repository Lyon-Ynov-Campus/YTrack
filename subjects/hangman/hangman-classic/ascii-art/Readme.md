# hangman-ascii-art

## Objectives

You must follow the same [principle](https://github.com/Lyon-Ynov-Campus/YTrack/tree/master/subjects/hangman/hangman-classic) as the first subject.

Ascii-art is a program which consists in receiving a string in the standar input and outputting the string in a graphic representation using ASCII. **Time to write big !!**.

What we mean by a graphic representation using ASCII, is to write the string received using ASCII characters, as you can see in the example below:
```
     _    _   ______   _        _         ____
    | |  | | |  ____| | |      | |       / __ \
    | |__| | | |__    | |      | |      | |  | |
    |  __  | |  __|   | |      | |      | |  | |
    | |  | | | |____  | |____  | |____  | |__| |
    |_|  |_| |______| |______| |______|  \____/
```
                                                
## Instructions
* Your project must be written in Go.
* This project should display letters in ASCII-Art from those [following files](https://github.com/LeaderGRL/Hangman-ascii-art/tree/main/letters)
    * First you need to pass the file in argument containing the ascii letters as argument to your program (see example below).
    * You will then need to parse this file.
* You are free to design your own letter file !
* The code must respect the [good practices](https://public.01-edu.org/subjects/good-practices/).

## Allowed packages
* Only the [Standard Go](https://pkg.go.dev/std) packages are allowed.

### Usage

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

This project will help you learn about :
- The Go file system(fs) API
- Ascii code manipulation
- Data manipulation
