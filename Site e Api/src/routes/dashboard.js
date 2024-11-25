var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.post("/dados1", function(req, res){
    dashboardController.carregardados1(req, res)
})

router.post("/dados2", function(req, res){
    dashboardController.carregardados2(req, res)
})

router.post("/dados3", function(req, res){
    dashboardController.carregardados3(req, res)
})

router.post("/dados4", function(req, res){
    dashboardController.carregardados4(req, res)
})

module.exports = router;