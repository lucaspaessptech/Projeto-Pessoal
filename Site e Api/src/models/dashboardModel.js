var database = require("../database/config")

function carregardados1(idUsuario){
    var instrucaoSql = `select count(idResposta) as resposta1 from resposta join usuario on fkUsuario = idUsuario where idUsuario = ${idUsuario};`
    return database.executar(instrucaoSql);
}

function carregardados2(idUsuario){
    var instrucaoSql = `select count(respostaUsuario) as resposta2 from resposta join usuario on fkUsuario = idUsuario join questao on fkQuestao = idQuestao where idUsuario = ${idUsuario} and respostaUsuario = resposta;`
    return database.executar(instrucaoSql);
}

function carregardados3(idUsuario){
    var instrucaoSql = `select count(respostaUsuario) as resposta3, titulo from resposta join usuario on fkUsuario = idUsuario join questao on fkQuestao = idQuestao join topico on fkTopico = idTopico where respostaUsuario = resposta and idUsuario = ${idUsuario} group by titulo;`
    return database.executar(instrucaoSql);
}

function carregardados4(idUsuario){
    var instrucaoSql = `select count(respostaUsuario) as resposta4, titulo from resposta join usuario on fkUsuario = idUsuario join questao on fkQuestao = idQuestao join topico on fkTopico = idTopico where idUsuario = ${idUsuario} group by titulo;`
    return database.executar(instrucaoSql);
}

module.exports = {carregardados1, carregardados2, carregardados3, carregardados4};