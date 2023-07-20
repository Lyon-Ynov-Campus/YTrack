package main

import (
	"life"
	"log"
	"math/rand"
	"time"

	"github.com/gdamore/tcell"
)

func main() {
	// Make Random Grid
	a := MakeRandomGrid(50, 10)
	// Set it in life.go
	life.InitializeGridCopy(a)
	// UI Stuff
	s, err := tcell.NewScreen()
	if err != nil {
		log.Fatalf("%+v", err)
	}
	if err := s.Init(); err != nil {
		log.Fatalf("%+v", err)
	}

	// Set default text style
	defStyle := tcell.StyleDefault.Background(tcell.ColorBlack).Foreground(tcell.ColorWhite)
	s.SetStyle(defStyle)

	//Poll exit keys
	loop := true
	go PollExit(s, &loop)

	for loop {
		// Calculate new state
		life.Update()
		// Clear UI
		s.Clear()
		//Draw UI
		drawGame(s, 0, 0, len(life.GetGrid()[0])+1, len(life.GetGrid())+1, defStyle, life.GetGrid())
		s.Show()
		// Wait
		time.Sleep(500 * time.Millisecond)
	}
}

func MakeRandomGrid(x, y int) [][]bool {
	grid := make([][]bool, y, y)
	for i, _ := range grid {
		row := make([]bool, x, x)
		for j := 0; j < x; j++ {
			row[j] = rand.Intn(2) == 1
		}
		grid[i] = row
	}
	return grid
}

func PollExit(s tcell.Screen, loop *bool) {
	// Poll for key/mouse
	ev := s.PollEvent()

	// Process event
	switch ev := ev.(type) {
	case *tcell.EventKey:
		if ev.Key() == tcell.KeyEscape || ev.Key() == tcell.KeyCtrlC {
			*loop = false
			return
		}
	default:
	}
	go PollExit(s, loop)
}

func drawGame(s tcell.Screen, x1, y1, x2, y2 int, style tcell.Style, grid [][]bool) {
	if y2 < y1 {
		y1, y2 = y2, y1
	}
	if x2 < x1 {
		x1, x2 = x2, x1
	}

	// Fill background
	for row := y1; row <= y2; row++ {
		for col := x1; col <= x2; col++ {
			s.SetContent(col, row, ' ', nil, style)
		}
	}

	// Draw borders
	for col := x1; col <= x2; col++ {
		s.SetContent(col, y1, tcell.RuneHLine, nil, style)
		s.SetContent(col, y2, tcell.RuneHLine, nil, style)
	}
	for row := y1 + 1; row < y2; row++ {
		s.SetContent(x1, row, tcell.RuneVLine, nil, style)
		s.SetContent(x2, row, tcell.RuneVLine, nil, style)
	}

	// Only draw corners if necessary
	if y1 != y2 && x1 != x2 {
		s.SetContent(x1, y1, tcell.RuneULCorner, nil, style)
		s.SetContent(x2, y1, tcell.RuneURCorner, nil, style)
		s.SetContent(x1, y2, tcell.RuneLLCorner, nil, style)
		s.SetContent(x2, y2, tcell.RuneLRCorner, nil, style)
	}
	// Draw cells
	for i := 0; i < len(grid); i++ {
		for j := 0; j < len(grid[0]); j++ {
			if grid[i][j] {
				s.SetContent(j+1, i+1, '▮', nil, style)
			} else {
				s.SetContent(j+1, i+1, '▯', nil, style)
			}
		}
	}
}
