var questaoModel = require("../models/questaoModel")

function carregarConteudo(req, res){
    var id = req.body.idServer;
    questaoModel.carregarConteudo(id).then((resultado) => {res.status(200).json(resultado)})
}

module.exports = {carregarConteudo};