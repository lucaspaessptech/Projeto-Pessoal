var questaoModel = require("../models/questaoModel")

function carregarConteudo(req, res){
    questaoModel.carregarConteudo(req, res).then((resultado) => {res.status(200).json(resultado)})
}

module.exports = {carregarConteudo};