var express = require("express");
var router = express.Router();
const mysql = require("mysql");

/* Post docs. */
router.post("/", function (req, res) {
  req.app.locals.con.connect(function (err) {
    if (err) {
      console.log("error", err);
    }
    console.log("HEJ, här kommer bodyn, ", req.body);
    let sql = `INSERT INTO documents (docName, docDescription, tinymceText) VALUES (?,?,?)`;
    let values = [req.body.docName, req.body.docDescription, req.body.htmlText];

    req.app.locals.con.query(sql, values, function (err, result) {
      if (err) {
        console.log(err);
      }
      console.log("result", result);
      res.send(result);
    });
  });
});

/* Get 1 doc. */
router.get("/:id", function (req, res) {
  req.app.locals.con.connect(function (err) {
    if (err) {
      console.log("error", err);
    }

    let sql = `SELECT * FROM documents WHERE documents.id = ${req.params.id} limit 1`;

    req.app.locals.con.query(sql, function (err, result) {
      if (err) {
        console.log(err);
      }
      console.log("result", result);
      res.send(result[0]);
    });
  });
});

/* Put tiny doc. */
router.put("/:id", function (req, res) {
  req.app.locals.con.connect(function (err) {
    if (err) {
      console.log("error", err);
    }

    let sql = `UPDATE documents SET tinymceText = (?) WHERE documents.id = ${req.params.id}`;
    let values = [req.body.htmlText];
    req.app.locals.con.query(sql, values, function (err, result) {
      if (err) {
        console.log(err);
      }
      console.log("result", result);
      res.send(result[0]);
    });
  });
});

module.exports = router;
