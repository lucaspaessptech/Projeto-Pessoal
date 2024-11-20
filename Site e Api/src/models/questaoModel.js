var database = require("../database/config")

function carregarConteudo(){
    var instrucaoSql = `SELECT * from topico;`
    return database.executar(instrucaoSql);
}


module.exports = {
    carregarConteudo
};