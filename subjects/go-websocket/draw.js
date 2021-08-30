var body = document.documentElement;
var html = document.documentElement;
var sq = document.getElementById("square");
var square = sq.getContext("2d");
sq.width = Math.max(body.scrollWidth, body.offsetWidth, html.clientWidth, html.scrollWidth, html.offsetWidth); //screen size
sq.height = Math.max(body.scrollHeight, body.offsetHeight, html.clientHeight, html.scrollHeight, html.offsetHeight);
var x = 0;
var y = 0;
var listColor = ['/green\n', '/purple\n', '/blue\n', '/pink\n', '/black\n', '/white\n', '/red\n', '/orange\n', '/brown\n', '/grey\n', '/cyan\n', '/yellow\n']
var color = "";
var regexWidth = /width/g;
var regexHeight = /height/g;
var squareWidth = 100;
var squareHeight = 100;

function drawSquare(){
    square.beginPath();
    square.rect(x, y, squareWidth, squareHeight);
    square.fillStyle = color;
    square.fill();  
}

function draw(){
    square.clearRect(0, 0, sq.width, sq.height);
    drawSquare();
    console.log("draw");
}

draw();

//-------------SOCKET-------------//
var socket = new WebSocket("ws://localhost:8080/msg");
console.log(socket);

//Server indicate that he's ready to receive or send data
socket.onopen = function (event) {
    //output.innerHTML += "Status: Connected\n";
};

//Receive message event from server
socket.onmessage = function (event) {
    if(event.data == 'z\n'){
        y += -2;
    } else if(event.data == 's\n'){
        y += 2;
    } else if(event.data == 'q\n'){
        x += -2;
    } else if(event.data == 'd\n'){
        x += 2;
    } else if(event.data.match(regexWidth) != null){
        var size = event.data.match(/\d/g);
        squareWidth = size.join('');
    } else if(event.data.match(regexHeight) != null){
        var size = event.data.match(/\d/g);
        squareHeight = size.join('');
    }

    for(i = 0; i < listColor.length; i++){
        if(event.data == listColor[i]){
            color = event.data.trim()
            color = color.replace(/\//g, '')
        }
    }

    draw();
};

socket.onerror = function(event){
    console.log("err : ", event);
}
//-----------SOCKET-END-----------//
