package life

var grid [][]bool = nil

func InitializeGridCopy(newGrid [][]bool) {
	grid = newGrid
}

func Update() {
	panic("unimplemented")
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
