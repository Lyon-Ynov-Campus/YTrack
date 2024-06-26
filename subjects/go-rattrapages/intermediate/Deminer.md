# Deminer

## Objective
Design a program where a character (player) and a bomb are positioned on a grid. The character must locate and reach the bomb, but its precise position is unknown to the character. The only information the character has is the direction to move towards the bomb.

## Instructions
The task is to create a function that operates on a grid with defined dimensions (X and Y). The grid will have the following representations:

An empty space is represented by an 'o' character.
The player is represented by a 'P' character.
The bomb is represented by an 'X' character.
The function should determine the direction in which the player should move to get closer to the bomb. The directions are represented by strings and include:

- 'U' (Up)
- 'D' (Down)
- 'R' (Right)
- 'L' (Left)
- 'UL' (Up Left)
- 'UR' (Up Right)
- 'DL' (Down Left)
- 'DR' (Down Right)
  
Important Note: Only the direction **towards the bomb** can be determined; you cannot directly use the **bomb's position** to guide the player's movements.  

The player must move in the indicated direction and reach the bomb in the quickest way possible.  

## Example Scenario

```o o o o o
o P o o o
o o o o o
o o o X o
o o o o o
```

The player ('P') is at position (1, 1).  
The bomb ('X') is at position (3, 3).  
The function should determine the correct sequence of directions for the player to reach the bomb.  

## Constraint
- You are not allowed to use ChatGPT or others IA tool to make this exercice.
- Ensure that the player reaches the bomb in the quickest way possible using the provided directions.

### Scenario to validate

```o o o o o o o o o o
o o o o o o o o o o
o o o o o o o o o o
o o o o o o o o o o
o o o o P o o o o o
o o o o o o o o o o
o o o o o o o o o o
o o o o o o o X o o
o o o o o o o o o o
o o o o o o o o o o
```

```o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o X o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o P o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
o o o o o o o o o o o o o o o
```

```o
o
o
P
o
o
o
o
o
o
o
o
o
X
o
o
o
o
o
o
o
````
