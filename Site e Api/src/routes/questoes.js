var express = require("express");
var router = express.Router();

var questaoController = require("../controllers/questaoController");

router.post("/carregarConteudo", function (req, res) {
    questaoController.carregarConteudo(req, res);
})

router.get("/menu", function (req, res){
    questaoController.menu(req, res);
})

router.post("/respostas", function (req, res){
    questaoController.responder(req, res);
}
)

module.exports = router;