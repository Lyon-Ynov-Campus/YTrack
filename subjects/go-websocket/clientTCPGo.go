package main

import (
	"bufio"
	"fmt"
	"log"
	"net"
	"os"
	"os/exec"
)

//Application constants, defining host, port, and protocol.
/*const (
	connHost = "localhost"
	connPort = "8081"
	connType = "tcp"
)*/

func main() {
	//defining host, port, and protocol in command line arguments
	connHost := os.Args[1]
	connPort := os.Args[2]
	connType := os.Args[3]

	reader := bufio.NewReader(os.Stdin)

	//Start the client and connect to the server.
	fmt.Println("Connecting to", connType, "server", connHost+":"+connPort)
	conn, err := net.Dial(connType, connHost+":"+connPort)
	if err != nil {
		fmt.Println("Error connecting:", err.Error())
		os.Exit(1)
	}

	println("[1] : Moving square")
	println("[2] : Config square")
	println("[3] : Exit")

	for {
		print("Menu : ")
		menu, _ := reader.ReadString('\n')

		if menu != "1\n" && menu != "2\n" && menu != "3\n" {
			println("Error : Invalid value !")
		} else {
			switch menu {
			case "1\n":
				getChar(conn)
				break
			case "2\n":
				command(conn)
				break
			case "3\n":
				os.Exit(1)
				break
			}
		}
	}

}

func getChar(conn net.Conn) {
	//run loop forever
	for {
		//Prompting message.
		fmt.Print("input : ")
		//disable input buffering (do not have to hit enter)
		exec.Command("stty", "-F", "/dev/tty", "cbreak", "min", "1").Run()
		//do not display entered characters on the screen
		exec.Command("stty", "-F", "/dev/tty", "-echo").Run()

		var input []byte = make([]byte, 1)

		//run loop forever
		for {
			os.Stdin.Read(input)
			//Add "enter" input cause socket write need this to send data
			input = append(input, 10)
			//Send to socket connection.
			conn.Write(input)
			input = input[:len(input)-1] //Remove "enter" input value
			if input[0] == 1 {           //CTRL + A
				interupt()
				main()
			}
		}
	}
}

//Command without error reception
func command(conn net.Conn) {
	reader := bufio.NewReader(os.Stdin)
	for {
		print("Type your command : ")

		command, _ := reader.ReadString('\n')

		if []byte(command)[0] != 47 && []byte(command)[0] != 1 { // "/" or CTRL + A
			println("Error : Invalid command !")
		} else {
			conn.Write([]byte(command))
		}

		if []byte(command)[0] == 1 { //CTRL + A
			interupt()
			main()
		}
	}
}

func interupt() {
	log.Println("interrupt")
	//restore console
	exec.Command("reset").Run()
}
