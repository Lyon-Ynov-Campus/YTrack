## pilot

### Instructions

This exercice will introduce you go structures.

A structure is a group of variables that you can instance as a new type in your code. 
Therefore, you will be able to use it like `int`, `string`, `boolean` etc.

``` go
type struct MyStruct {
    Field1  int;
    Field2  string;
}
```

The goal of the exercice is to complete the code so that it works properly.

You will need to add the `Pilot` structure and the corresponding fields in it.
Read the code provided with attention, to help you perform this exercice

### Usage

```go
package main

import "fmt"

func main() {
	var donnie Pilot
	donnie.Name = "Donnie"
	donnie.Life = 100.0
	donnie.Age = 24
	donnie.Aircraft = AIRCRAFT1

	fmt.Println(donnie)
}

const AIRCRAFT1 = 1
```