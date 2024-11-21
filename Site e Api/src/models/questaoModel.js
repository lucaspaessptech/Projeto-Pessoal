var database = require("../database/config")

function carregarConteudo(id){
    var instrucaoSql = `SELECT * from topico left join questao on idTopico = fkTopico where idTopico = ${id};`
    return database.executar(instrucaoSql);
}


module.exports = {
    carregarConteudo
};