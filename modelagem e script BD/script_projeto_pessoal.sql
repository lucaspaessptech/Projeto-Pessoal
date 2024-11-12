create database projetoPessoal;

use projetoPessoal;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
senha char(64),
dtEntrada datetime
);

create table topico(
idTopico int primary key auto_increment,
titulo varchar(45),
explicacao varchar(2000),
curiosidade varchar(200)
);

create table questao(
idQuestao int primary key auto_increment,
conteudo varchar(45),
resposta float,
fkTopico int,
constraint fkQuestaoTopico foreign key (fkTopico) references topico (idTopico)
);

create table log(
idLog int primary key auto_increment,
entrada datetime,
saida datetime,
fkUsuario int,
constraint fkLogUsuario foreign key (fkUsuario) references usuario (idUsuario)
);

create table resposta(
fkUsuario int,
fkQuestao int,
respostaUsuario varchar(15),
tentativas int,
constraint fkRespostaUsuario foreign key (fkUsuario) references usuario (idUsuario),
constraint fkRespostaQuestao foreign key (fkQuestao) references questao (idQuestao),
constraint pkComposta primary key (fkUsuario, fkQuestao)
);