// websockets.go
package main

import (
	"bufio"
	"fmt"
	"net"
	"net/http"
	"os"

	"github.com/gorilla/websocket"
)

// Application constants, defining host, port, and protocol.
const (
	connHost = "localhost"
	connPort = "8081"
	connType = "tcp"
)

//upgrades the HTTP server connection to the WebSocket protocol
//It allow to get the connection
//Buffer size do not limit the size of the message that can be read
//Buffer are preserved during all the lifetime of the connection
var upgrader = websocket.Upgrader{
	ReadBufferSize:  1024,
	WriteBufferSize: 1024,
}

var c = make(chan string)

type Server struct {
	Listener   net.Listener
	connection [32]net.Conn
}

func newServer() Server {
	var server Server                  //struct var
	server.connection = [32]net.Conn{} //Array init
	server.run()
	return server
}

func (server *Server) startConnection() {
	fmt.Println("Starting " + connType + " server on " + connHost + ":" + connPort)
	//Listen connection
	l, err := net.Listen(connType, connHost+":"+connPort)
	server.error(err)
	server.Listener = l
}

func (server *Server) error(err error) {
	if err != nil {
		fmt.Println("Error listening:", err.Error())
		os.Exit(1)
	}
}

func (server *Server) addClient(connection net.Conn, index int) {
	server.connection[index] = connection
	//message := fmt.Sprintf("[Alert!] new client join the server\n")

	server.connection[index].Write([]byte("You can start the discussion with guests ...\n\n"))
	//server.send(server.connection[index], message, true)
	server.receive(server.connection[index], index)
}

func (server *Server) receive(connection net.Conn, index int) {
	buf := bufio.NewReader(connection)
	for {
		if message, err := buf.ReadString('\n'); err != nil {
			fmt.Println("Unable to receive message !", err)
			os.Exit(3)
			//break
		} else {
			//Recept the message and send it to all user
			//message = "client " + fmt.Sprint(index+1) + " : " + message
			fmt.Println(message)
			//server.send(connection, message, true)
			c <- message
			//webSocket()
		}
	}
}

func (server *Server) run() {
	index := 0
	server.startConnection()
	for {
		connection, err := server.Listener.Accept()
		server.error(err)
		fmt.Println("connection : ", connection.RemoteAddr())
		go server.addClient(connection, index)
		index++
	}
}

func webSocket() {
	mux := http.NewServeMux()
	message := ""
	mux.HandleFunc("/msg", func(w http.ResponseWriter, r *http.Request) { //Adress + Handler
		conn, err := upgrader.Upgrade(w, r, nil) // error ignored
		if err != nil {
			println(err)
		}
		for {
			message = <-c
			msg := []byte(message)
			//msg := []byte(message)

			// Print the message to the console
			fmt.Printf("%s sent: %s\n", conn.RemoteAddr(), msg)

			// Write message back to browser
			if err := conn.WriteMessage(1, msg); err != nil {
				//error writing message
				println("Can't write the message", err)
				return
			}
		}

	})

	fs := http.FileServer(http.Dir("./")) //Associate dir to make js or css file work
	mux.Handle("/", http.StripPrefix("/", fs))

	/*mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		http.ServeFile(w, r, "websockets.html") //associate page
	})*/

	http.ListenAndServe(":8080", mux)
}

func main() {
	go webSocket()
	newServer()
}
