const express = require("express");
const app = express();
const http = require("http");
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server);

io.on("connection", (socket) => {
  console.log("a  socket user connected");

  // socket.on("createRoom", (nickname) => {
  //   console.log(`Nikname: ${nickname}`);
  // });
});

server.listen(3000, () => {
  console.log("listening on *:3000");
});
