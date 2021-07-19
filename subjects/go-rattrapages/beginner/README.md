## beginner

The followings exercices are required to complete the catch-up.

### Explosive Roll (3 points)

Create a function that displays `n` numbers.<br>
Thoses numbers will be randomly chosen between 1 and 6. <br>
If the result of one number is equal to 6, you must add a random number between 1 and 4 to it
(so the number 6 should'nt appear)

`func ExplosiveRoll(n int) {}`

#### Example
``` golang
ExplosiveRoll(7);

/* this can display
 3
 1
 7
 8
 10
 2
 5 
*/
```
<br>

### Blood and Guts (3 points)

In this exercice you will need the following structure.

``` golang
type Character struct {
    Name    string
    Health  uint
    Damage  int
    IsAlive bool
}
```

The goal is to create two functions that can simulate a fight between two `Characters`
* `func ApplyDamage(c *Character, damageTaken uint)`: This function update the `Health` of the character with the `damageTaken` parameter
* `func Attack(c1 *Character, c2 *Character)`: This function must `ApplyDamage` of the character 1 (c1) to the character 2 (c2)
    - If `IsAlive` of c2 is false, the function displays: `[c1 name] just finished [c2 name]`. 
    - Otherwise it will display: `[c1 name] make [damage] damages to [c2 name]`
    - (Of course replace the *names* by the corresponding character name, as well as the *damage*)

* A Character with 0 `Health` must have `IsAlive` value to `false`. A Character can't have a negative `Health` value

<br>

### PhoneBook (3 points)

Create a function `CompileList` that read the content of the file passed as parameter.

`func CompileList(filename string) []string;`

This function must return an array containing each line of the file **if it is not a comment**. <br>
A comment is represented by a `#` at the beginning of the line.

You can test your program with a bunch of file [here](https://github.com/Lyon-Ynov-Campus/YTrack/tree/master/subjects/go-rattrapages/beginner)