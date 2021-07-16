## intermediate

### MineSweeper (4 points)

*Minesweeper* is a game in which the player must find the mines according to the digit that indicates the number of mines adjacent to a square.
(A square is considered the 9 cases around a mine)

In this exercise you have to create a function `func ComputeMineSweeper(board *[][]rune)` that counts the number of adjacent mines and changes the values like the example below. The function must change the pointer, it should not return anything.
(The * in the board indicates a mine)

Example:

```
+-----+
| * * |
|  *  |
|  *  |
|     |
+-----+
```
Will become: 

```
+-----+
|1*3*1|
|13*31|
| 2*2 |
| 111 |
+-----+
```

Here is a tip to initialize the board in the main function:

``` golang

board := [][]rune{
    []rune("+-----+"),
    []rune("| * * |"),
    []rune("|  *  |"),
    []rune("|     |"),
    []rune("+-----|"),
}

```
<br>

### C3PO (4 points)

In this exercice you will need the following structures.

``` golang

type Point struct {
	X int
	Y int
}

type Robot struct {
	Fuel     int
	Position Point
}
```

The goal of this exercice is to make a `Robot` move towards a given `Destination`.
For this you will have to create:
* A global variable named `Destination` of type `Point`
* A function `func MoveRobot(robot *Robot, direction string)`.
    - The `direction` param is either "LEFT", "RIGHT", "TOP", "BOTTOM"
    - This function must change the `Position` of the robot according to the `direction`. It will also decrease the `Fuel`

    - If the `Position` approaches the `Destination`, the function will display: `I'm C3PO, computing Cyborg data`
    - If it moves away, it will display: `D2R2, where are you my boy ?...`
    - If the Robot reaches the `Destination`, it will display `D2R2, it's you my boy, that is really you !`
    - If the Robot is out of `Fuel`, it will display `Aaaaaaaah... my.. batteri..es .. a..re ... dead ....;` 

<br>

### Blood and Swords (3 points +)

