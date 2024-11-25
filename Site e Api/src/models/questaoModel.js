var database = require("../database/config")

function carregarConteudo(id){
    var instrucaoSql = `SELECT * from topico left join questao on idTopico = fkTopico where idTopico = ${id};`
    return database.executar(instrucaoSql);
}

function menu(){
    var instrucaoSql = `select titulo from topico;`
    return database.executar(instrucaoSql)
}

function responder(respostas, questoesID, usuarioID){
    console.log(questoesID)
    console.log(respostas)
    console.log(usuarioID)
    var instrucaoSql = `insert into resposta (fkUsuario, fkQuestao, respostaUsuario) values `
    for(i = 0; i < respostas.length; i++){
        instrucaoSql += `(${usuarioID}, ${questoesID[i]}, '${respostas[i]}'),`
        if(i == respostas.length-1){
            instrucaoSql = instrucaoSql.slice(0, -1) + ";"
        }
        console.log(instrucaoSql)
    }
    return database.executar(instrucaoSql)
}


module.exports = {
    carregarConteudo,
    menu,
    responder
};