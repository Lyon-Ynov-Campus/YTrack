# Hangman feature with ASCII-Art part

## Objectives

You must follow the same [principle](https://github.com/Lyon-Ynov-Campus/YTrack/tree/master/subjects/hangman/hangman-classic) as the first subject.
Ascii-art is a program which consists in receiving a string as an argument and outputting the string in a graphic representation using ASCII. Time to write big.
What we mean by a graphic representation using ASCII, is to write the string received using ASCII characters, as you can see in the example below:

    ██   ██ ███████ ██      ██       ██████      ██ 
    ██   ██ ██      ██      ██      ██    ██     ██ 
    ███████ █████   ██      ██      ██    ██     ██ 
    ██   ██ ██      ██      ██      ██    ██        
    ██   ██ ███████ ███████ ███████  ██████      ██ 
                                                
## Instructions
* Your project must be written in Go.
* This project should display letters in ASCII-Art from those [following files](https://github.com/LeaderGRL/Hangman-ascii-art/tree/main/letters)
    * You need to parse the file
    * You need to pass the file in argument
* The code must respect the [good practices](https://public.01-edu.org/subjects/good-practices/).

## Allowed packages
* Only the [Standard Go](https://pkg.go.dev/std) packages are allowed.

### Usage

    go run . words.txt standard.txt
    
    Good luck you have 10 attempts !
     _                        
    | |                    
    | |__                             ___
    |  _ \                           / _ \
    | | | |                         | (_) |
    |_| |_|                          \___/
    ███████ ███████ ███████ ███████ ███████
    
    Choose: E
    
     _               
    | |                
    | |__     ___                     ___
    |  _ \   / _ \                   / _ \
    | | | | |  __/                  | (_) |
    |_| |_|  \___|                   \___/
    ███████ ███████ ███████ ███████ ███████
    
    Choose: A
    Not present in the word, 9 attempts remaining

     _               
    | |                
    | |__     ___                     ___
    |  _ \   / _ \                   / _ \
    | | | | |  __/                  | (_) |
    |_| |_|  \___|                   \___/
    ███████ ███████ ███████ ███████ ███████          
    
    
    
    
    
    
    =========
    
    Choose: L
    
     _               _   _
    | |             | | | |
    | |__     ___   | | | |   ___
    |  _ \   / _ \  | | | |  / _ \
    | | | | |  __/  | | | | | (_) |
    |_| |_|  \___|  |_| |_|  \___/
    ███████ ███████ ███ ███ ███████                  
    
    
    
    
    
    
    =========
    
    Congrats !

This project will help you learn about :
- The Go file system(fs) API
- Data manipulation
