var questaoModel = require("../models/questaoModel")

function carregarConteudo(req, res){
    var id = req.body.idServer;
    questaoModel.carregarConteudo(id).then((resultado) => {res.status(200).json(resultado)})
}

function menu(req, res){
    questaoModel.menu().then((resultado) => {res.status(200).json(resultado)})
}

function responder(req, res){
    var respostas = req.body.respostasServer;
    var questoesID = req.body.idquestoesServer;
    var usuarioID = req.body.idusuarioServer;
    questaoModel.responder(respostas, questoesID, usuarioID).then((resultado) => {res.status(200).json(resultado)})
}

module.exports = {carregarConteudo, menu, responder};