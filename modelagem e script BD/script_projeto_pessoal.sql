create database projetoPessoal;

use projetoPessoal;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha char(64),
dtEntrada datetime
);

create table topico(
idTopico int primary key auto_increment,
ramo varchar(45),
titulo varchar(45),
explicacao varchar(2000),
curiosidade varchar(400)
);

create table questao(
idQuestao int primary key auto_increment,
conteudo varchar(45),
resposta varchar(15),
opcao1 varchar(45),
opcao2 varchar(45),
opcao3 varchar(45),
opcao4 varchar(45),
fkTopico int,
constraint fkQuestaoTopico foreign key (fkTopico) references topico (idTopico)
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

insert into topico values
(default, 'Aritmética', 'Operações básicas', 'Assim como em um videogame que tem os seus comandos essenciais como andar, pular, interagir e atacar a Matemática também tem os seus "comandos essenciais", no caso da Matemática são as operações básicas como soma, subtração, multiplicação e divisão, nosso foco inicial é dominar essas operações para assim dominar a matemática como um todo.', 'Sabia que a Matemática que conhecemos já existe a mais de 5000 anos? Existem registros da Matemática por volta de 3500A.C no egito, mas a matemática como conceito de contar ou medir é muito mais velha que isso');

insert into topico values
(default, 'Aritmética', 'Soma e Subtração', 'A soma é o ato de "juntar" 2 elementos em 1, facilitando a linguagem imagine que você tem 3 uvas e quer juntar(somar) com mais 2 uvas, o resultado será 5 uvas, já a subtração seria o processo oposto seria o ato de "separar", imagine que você tem 5 uvas e separa 3 uvas do total, você vai ficar com 2 uvas sobrando.', 'O símbolo de soma (+) foi criado em 1360 pelo francês Nicole de Oresme para substituir a palavra "et", que em latim significa "e".<br>
Em 1489, o alemão Johannes Widmann usou pela primeira vez o símbolo de soma em uma publicação e também criou o sinal de subtração (-).');

insert into questao values
(default, 'Quanto é 1 mais 1?', '2', '10', '11', '1', '2', 2);

insert into topico values
(default, 'Aritmética', 'Multiplicação', 'Seguindo o que você viu no tópico anterior se eu te perguntasse quanto é 2+2 o que você responderia? 4 né? e se eu te perguntasse 2+2+2, imagino que você responderia 6, a partir daqui podemos fazer uma observação 2 vezes 2 da 4 e 2+2 da 4, 2 vezes 3 da 6 2+2+2 da 6, reconhece o padrão?, 2 vezes 2 eu estou somando 2 por ele mesmo duas vezes, 2 vezes 3 eu estou somando 2 por ele mesmo 3 vezes.
Multiplicação é a repetição da soma, nos repetimos a soma de um termo a quantidade de vezes do outro termo, simplificando, 3 vezes 4, nos somamos 3 quatro vezes 3+3+3+3=12, ou o contrário serve, somamos 4 tres vezes 4+4+4=12.
Outra maneira de visualizar a multiplicação seria pensar que você está multiplicando algo físico, eu tenho 1 maçã se eu multiplicar por 4 eu terei 4 maçãs, eu tenho 2 chocolates se eu multiplicar por 3 eu terei 6 chocolates. 
Os símbolos que representam a multiplicação são o "X", o "." e o "*" mas os mais usados são o "X" e o ".".', 'O símbolo de multiplicação × foi introduzido por William Oughtred em 1631, no livro Clavis Matematicae.');

insert into topico values
(default, 'Aritmética', 'Divisão', 'Do mesmo jeito que a subtração é o oposto da soma, a divisão é o oposto da multiplicação, uma maneira de se pensar é pensar como se eu estivesse dividindo algo entre pessoas, eu tenho 12 balas e vou dividir com meus 2 amigos, com quantas balas cada um ficará? Simples tenho o total de 12 e vou dividir para 3 pessoas, 12 dividido por 3 fica 4 balas para cada pessoa, 
tenho uma barra de chocolate de 16 quadradinhos e vou dividir para minha mãe, irmã, irmão e eu, são 16 quadradinhos para 4 pessoas, 16 dividido por 4 são 4 quadrados para cada pessoa, podemos dizer que divisão é sobre ser bondoso com seus amigos, deixar todos com a quantidade igual.
Os símbolos que representam a divisão são o "÷", o "/", e o ":".', 'O símbolo de divisão foi usado pela primeira vez em 1633 no livro Aritmética de Johnson.');

insert into topico values
(default, 'Aritmética', 'Ordem de operações', 'Agora que você aprendeu os quatro operadores fundamentais, vamos aumentar a dificuldade, em vez de expressões com só um dos operadores vamos usar mais de um, quanto seria 1+3*4-6/2, aqui encontramos um problema se formos realizar pela direção da leitura daria 5,
mas se considerarmos que multiplicação é soma repetida, a expressão ficaria 1+3+3+3+3-6/2, e nesse caso daria 11 dividido por 2, teriamos dois resultados diferentes então qual seria o correto? Apresento a você a ordem de operações, dentro da matemática temos uma "pirâmide" para sabermos qual operação deve ser feita primeira, 
ela se chama PEMDAS quebrando por letras temos:<br>
P:Parentêses<br>
E:Exponenciação<br>
M e D: Multiplicação e Divisão<br>
A e S: Adição e Subtração.<br>
Seguindo essa "pirâmide" você consegue resolver qualquer expressão com mais de um operador sem dificuldades, vamos voltar a expressão anterior.
1+3*4-6/2, olhando nesse caso não tem nenhum parentêses então vamos para o próximo exponenciação, também não tem nenhum expoente (aprenderemos isso já já), Multiplicação e Divisão, temos os 2,
como eles estão no mesmo nível nos vamos resolver o que aparecer primeiro na ordem de leitura da esquerda para a direita, então seria primeiro o 3*4 que dá 12, então o 6/2 que dá 3,
a expressão após resolver os dois ficaria 1+12-3, agora é simples só sobrou adição e subtração e eles estão no mesmo nível então só resolver na direção da leitura<br>
1+12=13<br>
13-3=10<br>
Então no final a resposta correta era 10.', 'PEMDAS é um acrônimo mnemônico, ou seja, uma sigla que ajuda a lembrar a ordem das operações. Em alguns países, a ordem das operações é lembrada por outros acrônimos, como BODMAS, BIDMAS ou BEDMAS. ');