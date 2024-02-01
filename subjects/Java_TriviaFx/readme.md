# Java_TriaviaFx

## Objective
The objective of this project is to create a ``Quiz`` game using ``JavaFX``. The quiz will have a `GUI` and will be able to read questions from a file. The game will also have a timer and a score board.

## Requirements
- [x] The quiz must have a GUI made with JavaFX
- [x] The project must use `Maven`

## Instructions
### GUI Design
The GUI must have the following elements:
- Make a user friendly GUI using JavaFX that will display the questions and answers
- Implements `navigational buttons` to navigate through the questions (e.g., next, previous)
- Design a `scoreboard` to display the score of the player
- Design a `timer` to display the time left for the player to answer the question

### Questions
- Develop a system to `read` the `questions and answers` from an `external file` (e.g., XML, JSON, CSV).  
Your are free to use library of your choice to read the questions from the file. You can use `Gson` to read `JSON` files, `Jackson` to read `XML` files, or `OpenCSV` to read `CSV` files.


### Game Logic
- Implement a `timer` for `each question`
- Provide `immediate feedback` to the player if the answer is correct or not

### Bonus
- Implement different types of questions (e.g., multiple choice, true/false, fill in the blank)
- Add a `difficulty system` to the game (e.g., easy, medium, hard) and adjust the score accordingly
- Host the quiz on a **`pregnancy`** test