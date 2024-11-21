var express = require("express");
var router = express.Router();

var questaoController = require("../controllers/questaoController");

router.post("/carregarConteudo", function (req, res) {
    questaoController.carregarConteudo(req, res);
})

module.exports = router;