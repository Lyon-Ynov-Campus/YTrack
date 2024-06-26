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
  
Important Note: Only the direction **towards the bomb** can be determined thanks to the bomb position; you cannot directly use the **bomb's position** to guide the player's movements.  

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

## Step to solve the problem   
1. Understand the Problem Statement:   
  - You have a grid with a player ('P') and a bomb ('X').
  - The player needs to reach the bomb by moving in the correct direction based on their relative positions.

2. Identify the Player and Bomb Positions:   
  - Loop through the grid to find the coordinates of the player ('P') and the bomb ('X').  

3. Determine the Direction:   
  - Based on the relative positions of the player and the bomb, decide the direction the player should move.
  - For example:
    - If the player is above and to the left of the bomb, they should move 'DR' (Down Right).
    - If the player is directly above the bomb, they should move 'D' (Down).
    
4. Create a Function to Calculate the Direction:
  - Write a helper function that takes the player's coordinates and the bomb's coordinates and returns the direction string ('U', 'D', 'L', 'R', 'UL', 'UR', 'DL', 'DR').

5. Iteratively Move the Player:
  - Use a loop to move the player in the direction provided by the helper function.
  - Update the player's coordinates accordingly.
  - Append each move to a list of directions.

6. Stop When the Player Reaches the Bomb:
  - Continue the loop until the player's coordinates match the bomb's coordinates.

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
