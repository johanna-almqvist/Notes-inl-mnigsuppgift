var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");
const mysql = require("mysql");
var cors = require("cors");

var indexRouter = require("./routes/index");
var usersRouter = require("./routes/users");
const docsRouter = require("./routes/docs");
const getAllDocsRouter = require("./routes/getAllDocs");

var app = express();

app.locals.con = mysql.createConnection({
  host: "localhost",
  port: "8889",
  user: "johannaNotes",
  password: "notes",
  database: "johannaNotes",
});

app.use(cors());
app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);
app.use("/users", usersRouter);
app.use("/docs", docsRouter);
app.use("/getAllDocs", getAllDocsRouter);

module.exports = app;
