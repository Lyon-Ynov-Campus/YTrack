package life

var grid [][]bool = nil

func InitializeGridCopy(newGrid [][]bool) {
	grid = newGrid
}

func Update() {
	// Need to make a copy, because slices are passed by pointer, which means that we'll modify the original as well
	// This is a problem, since we don't want to modify the cells in the grid as we are calculating them.
	// Otherwise, we'll calculate with changes that happened partly through the update
	var newGrid [][]bool = make([][]bool, len(grid), len(grid))
	for posY, _ := range grid {
		newGrid[posY] = make([]bool, len(grid[posY]), len(grid[posY]))
	}

	// First, Iterate on the 2D grid
	for posY, _ := range grid {
		for posX, val := range grid[posY] {

			// Remove a neighbor if the cell is active (this is more performant than checking if the cell is counting itself)
			neighbors := 0
			if val {
				neighbors = -1
			}

			// Start checking for neighbors using max and min to stay in array bounds
			for i := intMax(posY-1, 0); i < intMin(posY+2, len(grid)); i++ {
				for j := intMax(posX-1, 0); j < intMin(posX+2, len(grid[posY])); j++ {
					if grid[i][j] {
						neighbors++
					}
				}
			}

			// Change value in array copy, depending on the number of neighbors
			if val && neighbors < 2 {
				newGrid[posY][posX] = false
			} else if val && neighbors < 4 {
				newGrid[posY][posX] = true
			} else if val && neighbors < 9 {
				newGrid[posY][posX] = false
			} else if !val && neighbors == 3 {
				newGrid[posY][posX] = true
			}
		}
	}
	// Assign updated grid to old grid variable
	grid = newGrid
}

func intMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func GetGrid() [][]bool {
	return grid
}
