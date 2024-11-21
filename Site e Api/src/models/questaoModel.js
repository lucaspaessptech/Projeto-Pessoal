var database = require("../database/config")

function carregarConteudo(id){
    console.log(id)
    var instrucaoSql = `SELECT * from topico where idTopico = ${id};`
    return database.executar(instrucaoSql);
}


module.exports = {
    carregarConteudo
};