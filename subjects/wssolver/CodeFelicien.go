// package main

// import (
// 	"bufio"
// 	"log"
// 	"os"
// 	"time"

// 	"github.com/01-edu/z01"
// )

// var field = [10][10]rune{
// 	{'c', 'o', 't', 'd', 't', 'r', 's', 'n', 'e', 'c'},
// 	{'r', 'e', 'e', 'o', 't', 'e', 'o', 'h', 'u', 'c'},
// 	{'ê', 'u', 'h', 'h', 't', 'r', 'l', 'a', 'o', 'a'},
// 	{'p', 'f', 'w', 'a', 'e', 'r', 'e', 'a', 'a', 'f'},
// 	{'e', 's', 't', 'p', 'r', 't', 'a', 'e', 'r', 'é'},
// 	{'s', 'a', 'p', 'y', 'u', 'i', 'o', 'e', 's', 'd'},
// 	{'p', 'a', 'e', 'o', 'i', 't', 'c', 'd', 't', 'e'},
// 	{'n', 'n', 'c', 'n', 'c', 'w', 'b', 'o', 'b', 'n'},
// 	{'f', 'o', 'u', 'r', 'c', 'h', 'e', 't', 't', 'e'},
// 	{'b', 'a', 'i', 'e', 's', 't', 'h', 'n', 'w', 's'},
// }

// func main() {
// 	start := time.Now()
// 	words := getAllWords("words.txt")

// 	for _, word := range words {
// 		for _, column := range getColumns() {
// 			if stringContain(word, column) {
// 				Println(word)
// 			}
// 		}
// 		for _, line := range getLines() {
// 			if stringContain(word, line) {
// 				Println(word)
// 			}
// 		}
// 		for _, diag := range getDiagTopRight() {
// 			if stringContain(word, diag) {
// 				Println(word)
// 			}
// 		}
// 		for _, diag := range getDiagTopBot() {
// 			if stringContain(word, diag) {
// 				Println(word)
// 			}
// 		}
// 		for _, diag := range getDiagBotRight() {
// 			if stringContain(word, diag) {
// 				Println(word)
// 			}
// 		}
// 		for _, diag := range getDiagBotTop() {
// 			if stringContain(word, diag) {
// 				Println(word)
// 			}
// 		}
// 	}
// 	elapsed := time.Since(start)
// 	log.Printf("Binomial took %s", elapsed)
// }

// func Println(word string) {
// 	for _, i := range word {
// 		z01.PrintRune(i)
// 	}
// 	z01.PrintRune(10)
// }

// func getLines() []string {
// 	var lines []string
// 	var add string
// 	for _, line := range field {
// 		for _, letter := range line {
// 			add += string(letter)
// 		}
// 		lines = append(lines, add)
// 		add = ""
// 	}
// 	return lines
// }

// func getColumns() []string {
// 	var columns []string
// 	var add string
// 	for i := 0; i < len(field[0]); i++ {
// 		for l := 0; l < len(field); l++ {
// 			add += string(field[l][i])
// 		}
// 		columns = append(columns, add)
// 		add = ""
// 	}

// 	return columns
// }

// func getDiagTopRight() []string {
// 	var diags []string
// 	var add string
// 	for i := 1; i < len(field[0]); i++ {
// 		for l := 0; l < len(field); l++ {
// 			if i+l >= len(field[0]) {
// 				break
// 			}
// 			add += string(field[l][i+l])
// 		}
// 		diags = append(diags, add)
// 		add = ""
// 	}
// 	return diags
// }

// func getDiagTopBot() []string {
// 	var diags []string
// 	var add string
// 	for i := 0; i < len(field[0]); i++ {
// 		for l := 0; l < len(field); l++ {
// 			if i+l >= len(field[0]) {
// 				break
// 			}
// 			add += string(field[i+l][l])
// 		}
// 		diags = append(diags, add)
// 		add = ""
// 	}
// 	return diags
// }

// func getDiagBotRight() []string {
// 	var diags []string
// 	var add string
// 	for i := 1; i < len(field); i++ {
// 		for l := len(field) - 1; l >= 0; l-- {
// 			if l-i < 0 {
// 				break
// 			}
// 			add += string(field[l][i+(len(field)-1-l)])
// 		}
// 		diags = append(diags, add)
// 		add = ""
// 	}
// 	return diags
// }

// func getDiagBotTop() []string {
// 	var diags []string
// 	var add string
// 	for l := len(field) - 1; l >= 0; l-- {
// 		for i := 0; i < len(field[0]); i++ {
// 			if l-i < 0 {
// 				break
// 			}
// 			add += string(field[l-i][i])
// 		}
// 		diags = append(diags, add)
// 		add = ""
// 	}
// 	return diags
// }

// func stringContain(sWord string, sentence string) bool {
// 	valid := true
// 	for i := 0; i < len(sentence); i++ {
// 		valid = true
// 		if sentence[i] == sWord[0] {
// 			for l := 0; l < len(sWord); l++ {
// 				if i+l >= len(sentence) {
// 					return false
// 				}
// 				if sentence[i+l] != sWord[l] {
// 					valid = false
// 					break
// 				}
// 			}
// 			if valid {
// 				return true
// 			}
// 		}
// 	}
// 	return false
// }

// func getAllWords(path string) []string {
// 	var words []string
// 	file, err := os.Open(path)
// 	if err != nil {
// 		log.Fatal(err)
// 	}
// 	defer file.Close()

// 	scanner := bufio.NewScanner(file)
// 	for scanner.Scan() {
// 		words = append(words, scanner.Text())
// 	}

// 	if err := scanner.Err(); err != nil {
// 		log.Fatal(err)
// 	}
// 	return words
// }

// func check(e error) {
// 	if e != nil {
// 		panic(e)
// 	}
// }
