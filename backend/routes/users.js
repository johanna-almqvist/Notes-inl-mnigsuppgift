var express = require("express");
var router = express.Router();

/* GET users listing. */
router.post("/", async (req, res) => {
  const { username, password } = req.body;
  req.app.locals.con.connect(function (err) {
    if (err) {
      console.log("error", err);
    }
    let sql = `SELECT * FROM users WHERE users.userName = "${username}" AND users.userPassword = "${password}"`;

    req.app.locals.con.query(sql, function (err, result) {
      if (err) {
        console.log(err);
      }
      console.log("result", result);
      if (Array.isArray(result) && result.length > 0) {
        res.status(200).send(true);
      } else {
        res.status(403).send(false);
      }
    });
  });
});
module.exports = router;
