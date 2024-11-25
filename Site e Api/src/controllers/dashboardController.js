var dashboardModel = require("../models/dashboardModel")

function carregardados1(req, res){
    var idUsuario = req.body.idusuarioServer;
    dashboardModel.carregardados1(idUsuario).then((resultado) => {res.status(200).json(resultado)})
}

function carregardados2(req, res){
    var idUsuario = req.body.idusuarioServer;
    dashboardModel.carregardados2(idUsuario).then((resultado) => {res.status(200).json(resultado)})
}

function carregardados3(req, res){
    var idUsuario = req.body.idusuarioServer;
    dashboardModel.carregardados3(idUsuario).then((resultado) => {res.status(200).json(resultado)})
}

function carregardados4(req, res){
    var idUsuario = req.body.idusuarioServer;
    dashboardModel.carregardados4(idUsuario).then((resultado) => {res.status(200).json(resultado)})
}

module.exports = {carregardados1, carregardados2, carregardados3, carregardados4};