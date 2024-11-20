var express = require("express");
var router = express.Router();

var questaoController = require("../controllers/questaoController");

router.get("/carregarConteudo", function (req, res) {
    questaoController.carregarConteudo(req, res);
})

module.exports = router;