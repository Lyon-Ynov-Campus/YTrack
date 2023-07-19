# Deminer

## Objectif
Design a program where a character and a bomb are positioned on a grid. The character must locate the bomb, but its precise position is unknown. The only information the character has is the direction of the bomb.

## Instructions
The task is to create a grid-based function where the dimensions of the grid are defined by an X and Y size. This grid will have several characters on it:

An empty space will be represented by an `'o'` character.
A player will be represented by a `'P'` character.
A bomb will be represented by an `'X'` character.
The function should be able to determine the **direction** represented by a string in which the player character can move based on the bomb's **direction**. The possible directions include:

- 'U' (Up)
- 'D' (Down)
- 'R' (Right)
- 'L' (Left)
- 'UL' (Up left)
- 'UR' (Up Right)
- 'DL' (Down Left)
- 'DR' (Down Right)  

⚠️ Only the bomb **direction** can be determine with the bomb **position** ! It mean that you can't use the bomb **position** to move the character⚠️

The player can only move according to the given direction and **needs to reach the bomb in the quickest way possible**.

## Constraint
You are not allowed to use ChatGPT or others IA tool to make this exercice.
