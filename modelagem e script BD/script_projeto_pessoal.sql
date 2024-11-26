create database projetoPessoal;

use projetoPessoal;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha char(64)
);

create table topico(
idTopico int primary key auto_increment,
ramo varchar(45),
titulo varchar(45),
explicacao varchar(4000),
curiosidade varchar(400)
);

create table questao(
idQuestao int primary key auto_increment,
conteudo varchar(400),
resposta varchar(15),
opcao1 varchar(45),
opcao2 varchar(45),
opcao3 varchar(45),
opcao4 varchar(45),
fkTopico int,
constraint fkQuestaoTopico foreign key (fkTopico) references topico (idTopico)
);

create table resposta(
idResposta int unique auto_increment,
fkUsuario int,
fkQuestao int,
respostaUsuario varchar(15),
constraint fkRespostaUsuario foreign key (fkUsuario) references usuario (idUsuario),
constraint fkRespostaQuestao foreign key (fkQuestao) references questao (idQuestao),
constraint pkComposta primary key (fkUsuario, fkQuestao, idResposta)
);

insert into topico values
(default, 'Aritmética', 'Operações básicas', 'Assim como em um videogame que tem os seus comandos essenciais como andar, pular, interagir e atacar a Matemática também tem os seus "comandos essenciais", no caso da Matemática são as operações básicas como soma, subtração, multiplicação e divisão, nosso foco inicial é dominar essas operações para assim dominar a matemática como um todo.', 'Sabia que a Matemática que conhecemos já existe a mais de 5000 anos? Existem registros da Matemática por volta de 3500A.C no egito, mas a matemática como conceito de contar ou medir é muito mais velha que isso');

insert into topico values
(default, 'Aritmética', 'Soma e Subtração', 'A soma é o ato de "juntar" 2 elementos em 1, facilitando a linguagem imagine que você tem 3 uvas e quer juntar(somar) com mais 2 uvas, o resultado será 5 uvas, já a subtração seria o processo oposto seria o ato de "separar", imagine que você tem 5 uvas e separa 3 uvas do total, você vai ficar com 2 uvas sobrando.', 'O símbolo de soma (+) foi criado em 1360 pelo francês Nicole de Oresme para substituir a palavra "et", que em latim significa "e".<br>
Em 1489, o alemão Johannes Widmann usou pela primeira vez o símbolo de soma em uma publicação e também criou o sinal de subtração (-).');

insert into questao values
(default, 'Quanto é 1 mais 1?', '2', '10', '11', '1', '2', 2),
(default, 'Quanto é 3-3?', '0', '6', '5', '0', '12', 2),
(default, 'Quanto é 4+12', '16', '13', '17', '6', '16', 2),
(default, 'Quanto é 12-3?', '9', '10', '15', '9', '6', 2),
(default, 'Quanto é 140+14', '154', '154', '127', '130', '98', 2);

insert into topico values
(default, 'Aritmética', 'Multiplicação', 'Seguindo o que você viu no tópico anterior se eu te perguntasse quanto é 2+2 o que você responderia? 4 né? e se eu te perguntasse 2+2+2, imagino que você responderia 6, a partir daqui podemos fazer uma observação 2 vezes 2 da 4 e 2+2 da 4, 2 vezes 3 da 6 2+2+2 da 6, reconhece o padrão?, 2 vezes 2 eu estou somando 2 por ele mesmo duas vezes, 2 vezes 3 eu estou somando 2 por ele mesmo 3 vezes.
Multiplicação é a repetição da soma, nos repetimos a soma de um termo a quantidade de vezes do outro termo, simplificando, 3 vezes 4, nos somamos 3 quatro vezes 3+3+3+3=12, ou o contrário serve, somamos 4 tres vezes 4+4+4=12.
Outra maneira de visualizar a multiplicação seria pensar que você está multiplicando algo físico, eu tenho 1 maçã se eu multiplicar por 4 eu terei 4 maçãs, eu tenho 2 chocolates se eu multiplicar por 3 eu terei 6 chocolates. 
Os símbolos que representam a multiplicação são o "X", o "." e o "*" mas os mais usados são o "X" e o ".", a multiplicação pode também ocorrer de maneira oculta caso algum número esteja encostado em um número coberto em parenteses
, exemplo: 4(3)=4x3=12, caso você leia algo anunciado de questão matemática, a palavra "de" está associada a multiplicação, outra dica qualquer número x 10 você acrescente um 0 no final
exemplo 2x10=20.', 'O símbolo de multiplicação × foi introduzido por William Oughtred em 1631, no livro Clavis Matematicae.');

insert into questao values
(default, 'Quanto é 8x10?', '80', '40', '88', '36', '54', 3),
(default, 'Quanto é 4x7?', '28', '6', '18', '08', '28', 3),
(default, 'Quanto é 8x15', '16', '13', '17', '6', '16', 3),
(default, 'João quer comprar 4 camisetas de 20 reais cada e 3 calças de 25 reais cada, quanto custa o total?', '155', '155', '170', '100', '123', 3),
(default, 'Lucas estuda 6 horas por dia 6 dias por semana, quantas horas ele estuda em um mês?', '144', '130', '170', '144', '200', 3);

insert into topico values
(default, 'Aritmética', 'Divisão', 'Do mesmo jeito que a subtração é o oposto da soma, a divisão é o oposto da multiplicação, uma maneira de se pensar é pensar como se eu estivesse dividindo algo entre pessoas, eu tenho 12 balas e vou dividir com meus 2 amigos, com quantas balas cada um ficará? Simples tenho o total de 12 e vou dividir para 3 pessoas, 12 dividido por 3 fica 4 balas para cada pessoa, 
tenho uma barra de chocolate de 16 quadradinhos e vou dividir para minha mãe, irmã, irmão e eu, são 16 quadradinhos para 4 pessoas, 16 dividido por 4 são 4 quadrados para cada pessoa, podemos dizer que divisão é sobre ser bondoso com seus amigos, deixar todos com a quantidade igual.
Os símbolos que representam a divisão são o "÷", o "/", e o ":", caso você leia algo anunciado de questão matemática, a palavra "por" está associada a divisão.<br>
<br>
O método mais usado para resolução de divisões é o metodo da da chave, consiste de deixar o número que deseja dividir na esquerda, e na sua direita uma chave em formato de L com o divisor, por exemplo ', 'O símbolo de divisão foi usado pela primeira vez em 1633 no livro Aritmética de Johnson.');

insert into questao values
(default, 'Quanto é 28/7?', '4', '6', '4', '8', '10', 4),
(default, 'Quanto é 800/4', '200', '198', '80', '200', '40', 4),
(default, 'Gabriel possui 3 barras de chocolate, cada barra possui 4 pedações, e ele quer dividir suas barras de chocolates com seu pai, com quantos pedaços cada
um ficará?', '6', '3', '4', '12', '6', 4);

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
Então no final a resposta correta era 10.<br>
Pontuando também os parenteses que podem mudar o resultado de uma expressão, exemplo: 2+3x4, seguindo o que vemos, o resultado seria 3x4=12+2=14, mas se tivesse um parenteses cobrindo o 2+3 a prioridade seria o 2+3
(2+3)*4=(5)*4=20', 'PEMDAS é um acrônimo mnemônico, ou seja, uma sigla que ajuda a lembrar a ordem das operações. Em alguns países, a ordem das operações é lembrada por outros acrônimos, como BODMAS, BIDMAS ou BEDMAS. ');

insert into questao values
(default, 'Quanto é 12/3(3+1)?', '16', '16', '1', '18', '3', 5),
(default, 'Quanto é (14*4/4+4)/2', '9', '10', '28', '9', '18', 5),
(default, 'Eduardo possui 10 coxinhas, comeu 2, dividiu por 2 + 4, qual expressão representa essa frase?', '(10-2)/(2+4)', '10-2/2+4', '(10-2)/2+4', '10-(2/2)+4', '(10-2)/(2+4)', 5);

insert into topico values
(default, 'Aritmética', 'Números Reais', 'O grupo de números que trabalhamos até agora pertence a um grupo muit maior chamado números reais, vamos passar sobre os conjuntos dos números:<br>
Números naturais: Possui esse nome por ser os números naturais que usamos para <u>contar</u> 0,1,2,3,4,5 e por ai vai até o infinito, numeros naturais são representados por um
N;<br>
Números inteiros: São números que não possuem partes decimais, "partes quebradas", e inclui números negativos e positivos -3,-2,-1,0,1,2,3 continuando infinitamente para o lado negativo e positivo, números inteiros são representados por Z,
esse grupo inclui o conjunto de numeros naturais;<br>
Subconjunto dos números inteiros, Números negativos: Você pode pensar neles como dividas, estou com -3 reais, estou devendo 3 reais se eu somar 3 reais eu vou ficar com -3+3=0 reais,
esse grupo inclui o conjunto de numeros naturais;<br>
Números racionais: São números que podem ser representados com frações (divisões), 2/2, 3/2, 100/1000, a/b, a e b sendo variáveis que representam qualquer número
inteiro e b sendo diferente de 0. Esse conjunto é mais abrangente incluindo números negativos,
positivos e racionais ou seja, o conjunto de números racionais inclui números inteiros e por isso consecutivamente inclui também números naturais;<br>
Números irracionais: São números que não são representados por números racionais, são carácterizados por partes decimais infinitas e sem padrão, como o famoso
PI (π), que representa 3,14159265359... e assim infinitamente, esse conjunto fica fora dos números racionais, ele é o estranho da família, mas gostamos dele;<br>
Números Reais: Cobre todos os conjuntos citados anteriormente.', 'O surgimento da expressão "número real" se deu com René Descartes (1596-1650) em 1637.');

insert into topico values
(default, 'Aritmética', 'Frações e números decimais', 'Frações como citadas brevemente no tópico anterior, nada mais são do que divisões, 2/2 é uma fração, 3/2 é uma fração, uma divisão
se você dividir o 3 por 2 você fica com o número decimal 1,5, a parte e cima é chamada de numerador e a parte de baixo é chamada de denomindador, se o numerador é maior que o denominador,
o número é maior que 1 caso seja igual o número é igual a 1 e caso seja menor o número é menor que 1, caso o número no numerador ou denominador seja negativo a fração como um todo
é negativa, vamos aprender sobre como realizar operações com frações:<br>
Para somar ou subtrair frações é necessário multiplicar uma fração pelo denominador da outra exemplo 2/3+4/5, multiplicamos 2/3 por 5 no numerador e denominador, ficando 10/15 e multiplicamos 4/5 por 3 no numerador de denominador
ficando 12/15, então somamos ambos numeradores 10/15+12/15=22/15, se fosse subtração mesmo processo só que subtraindo, um truque fácil para achar um multiplicador em comum é multiplicar
os numeradores;<br>
<br>
É uma convenção sempre simplificar a fração enquanto der, exemplo: a fração 4/8 tem como multiplicador comum o 4, então podemos dividir o numerador e o denominador por 4,
isso mantém a proporção (afinal o denominador nesse caso é o dobro do numerador) e simplifica a fração ficando 1/2;<br>
<br>
O inverso de um número é simplesmente inverter as suas bases, 3/2 vira 2/3, 4/2 vira 2/4;<br>
<br>
Multiplicação de frações é a parte mais simples, simplesmente multiplique os numeradores e os denominadores diretamente, (2/3) x (4/5) = 2x4=8, 3x5=15 então ficaria 8/15;<br>
<br>
Para a divisão de frações é necessário inverter a base da fração que está após a divisão, exemplo (2/3) ÷ (4/5), invertemos a base da fração após a divisão 4/5 vira 5/4,
então agora simplesmente multiplicamos (2/3)x(5/4), 2x5=10, 3x4=12 então 10/12, simplificando ambos termos tendo 2 em comum, ficando 5/6, como percebido dessa propriedade,
multiplicar pelo inverso da numero é a mesma coisa que dividir, e o oposto também vale, dividir pelo inverso da numero é o mesmo que multiplicar;<br>
<br>
Caso um numero não demonstre nenhum denominador específico, é assumido que o seu denominador é 1, afinal qualquer número divido por 1 é ele mesmo, 5=5/1;<br>
<br>
Caso o numerador de uma fração seja outra fração você trata ela como uma divisão, exemplo: 5/(5/4) = 5*4/5=20/5=4;<br>
<br>
Realizar operações com números fracionários costuma ser mais fácil do que realizar operações com números decimais, porque con frações é como se você estivesse mexendo com números inteiros
exemplo 4/5 x 3/8 em frações simplesmente multiplicamos 4x3=12, 5x8=40, então 12/40, simplificando 3/10, agora com números decimais ficaria 0,8 x 0,375.<br>'
, 'A ideia de fração foi inventada pelos egípcios há cerca de 3000 anos antes de Cristo, os egípcios usavam frações para representar os números fracionários, que surgiram para resolver o problema de medir terrenos às margens do rio Nilo, que inundavam entre junho e setembro.');

insert into questao values
(default, 'Quanto é 12/3(3+1)?', '16', '16', '1', '18', '3', 7),
(default, 'Quanto é (14*4/4+4)/2', '9', '10', '28', '9', '18', 7),
(default, 'Eduardo possui 10 coxinhas, comeu 2, dividiu por 2 + 4, qual expressão representa essa frase?', '(10-2)/(2+4)', '10-2/2+4', '(10-2)/2+4', '10-(2/2)+4', '(10-2)/(2+4)', 7);

insert into topico values
(default, 'Aritmética', 'Potenciação', 'Repetindo o mesmo processo de repetir a operação anterior nos podemos descobrir a próxima operação, se soma repetida da multiplicação, exemplo 
2+2+2=6 e 2x3 = 6, se repetirmos a multiplicação vamos obter o que? Vamos tentar, 2x2=4, 2x2x2=8, esse processo de multiplicação repetida se chama potenciação ou exponenciação, e usa como
notação os números pequenos chamados de expoente emcima do número base, exemplo: 2³ 2 é a base ³ é o expoente 2³ = 2x2x2 = 8.<br>
<br>
Percebe que o comportamento é muito parecido com a multiplicação? Nós usamos um número como base e repetimos ele a quantidade de vezes indicada pelo número menor, só que em vez de usarmos o +
usamos o x na potência, 2x3 = 2+2+2, 2³ = 2x2x2, só mudamos o operador, mas um ponto importante, diferente da multiplicação ou soma aqui a ordem <b>IMPORTA</b>, 2x3 é a mesma coisa que 3x2 mas 2³ e 3² são diferentes, como vimos
2³ é 8 3² seguindo a logica seria 3 repetido 2 vezes com um sinal de multiplicação no meio seria 3x3 = 9, só para fixar 3³ é 3x3x3 = 27, 8² = 8x8 = 64.<br>
<br>
Agora vamos falar das propriedades da potência que nos permitiram manipular potências em qualquer expressão:<br>
<br>
Ao multiplicar potências de mesma base somamos os expoentes exemplo: 2³x2²=2⁵. Demonstração 2³=8, 2²=4 8x4=32, 2⁵=32;<br>
No lado oposto ao dividir potências de mesma base subtraimos os expoentes exemplo: 2³/2² = 2¹. Demonstração 2³=8, 2²=4, 8/4=2, 2¹=2<br>
Qualquer base elevada a 1 é igual a própria base exemplo: 2¹ = 2, 3¹ = 3;<br>
Qualquer base exceto 0 elevado a 0 é igual a 1 exemplo: 2⁰ = 1, 3⁰ = 1. Raciocinio por trás dessa propriedade é a seguinte perceba o padrão 2³=8, 2²=4 2¹=2,
quando olhamos para a potência e comparamos com uma potência da mesma base só que com um expoente 1 unidade menor, o número é dividido pela base 2³=8, 2²=4 8/2 = 4, então 2¹ para 2⁰ seria 2/2=1, 
do mesmo jeito que aumentando o expoente multiplicamos pela base: 1,2,4,8 diminuindo o expoente estamos dividindo pela base: 8,4,2,1;<br>
Qualquer base elevado a um expoente negativo ocorre a inversão de bases e após isso o sinal do expoente vira positivo exemplo: 2⁻¹=1/2¹=1/2, 3⁻¹/2=2/3¹. Mesmo raciocinio mostrado acima se 2¹=2 e 2⁰=1 então 2⁻¹ dividiriamos pela base denovo, resultaria em 1/2;<br>
Ao elevarmos um produto por uma potência distribuimos o expoente para todos os fatores exemplo: (2x3)²=2²x3². Realizando o interior primeiro, (2x3)²=(6)²=36,realizando a distruibuição primeiro (2x3)²=2²x3²=4x9=36, realizar o interior primeiro é normalmente mais fácil,
uma observação que podemos fazer dessa propriedade é que se possuimos bases diferentes mas expoentes iguais nos multiplicamos as bases;<br>
Ao elevarmos uma divisão por uma potência distribuimos o expoente para todos os fatores exemplo: (2/3)²=2²/3²,
uma observação que podemos fazer dessa propriedade é que se possuimos bases diferentes mas expoentes iguais nos dividimos as bases;<br>
Qualquer base negativa elevado a um número par vira um número positivo, qualquer base negativa elevado a um número impar continua negativa exemplo: (-2)²=4, (-2)³=-8, isso ocore por conta da 
regra de sinais, sinais repetidos pares igual a positivo (-).(-) = + e sinais repetidos impar igual a negativo (-).(-).(-) = - OBSERVAÇÃO: se o sinal não estiver dentro
de um parenteses o sinal é desconsiderado na potência -2²=-(2x2)=-4;<br>
', 'A notação exponencial, que utiliza numerais indo-arábicos como expoentes, foi criada por volta de 1637 pelo matemático francês René Descartes.');

insert into questao values
(default, 'Quanto é (2³-2²)x4?', '2³', '2³', '2', '2²', '4', 8),
(default, 'Quanto é (14*4/4+4)/2', '9', '10', '28', '9', '18', 8),
(default, 'Eduardo possui 10 coxinhas, comeu 2, dividiu por 2 + 4, qual expressão representa essa frase?', '(10-2)/(2+4)', '10-2/2+4', '(10-2)/2+4', '10-(2/2)+4', '(10-2)/(2+4)', 8);

insert into topico values
(default, 'Aritmética', 'Porcentagem', 'Porcentagem significa divisão por cem, porcentagem é usada para encontrarmos valores proporcionais, como descontos, o símbolo da porcentagem é "%", como indicado anterior
já que porcentagem é dividido por 100 quando você lê desconto de 10% significa desconto de 10/100, vamos dar um exemplo de um produto de 60 reais que está com 10% de desconto, para calcular esses 10%
nos multiplicamos pelo preço do produto, 10/100 simplificando 1/10 então multiplicamos pelo preço do produto 1/10x60=6, após isso subtraimos o preço com o desconto, como o desconto de 10% o produtode 60 reais ficaria 54 porque 60-6 = 4,
caso fosse um aumento em vez de subtrair somariamos, 80 reais com 15% de aumento, 15/100 * 80 = 12, 80+12 = 92.', 'A origem da porcentagem está relacionada com o imposto centésimo, decretado pelo imperador romano César Augusto por volta do ano IX d.C.');

insert into questao values
(default, 'Quanto é 20% de 18', '18/5', '4', '8/4', '18/10', '18/5', 9),
(default, 'Quanto é 50% de 20%?', '10%', '100%', '10%', '50%', '20%', 9),
(default, 'Uma loja possui produtos que custam 30 reais e apresenta um desconto de 5% que aumenta com cada peça comprada,
Maria no dia das mães foi comprar 3 peças de roupa para sua mãe, quanto custou as peças de roupa considerando o desconto?', '76,5', '85,5', '76,5', '90', '80', 9);

insert into topico values
(default, 'Aritmética', 'Regra de Três', 'A regra de três é usada para descobrir um valor desconhecido quando ele tem relação de proporção com outro valor, por exemplo se 2 sorvetes são 6 reais quanto custam 3 sorvetes? Normalmente na matemática quando temos uma
incógnita, quando usamos a palavra quanto, usamos o simbolo x para representar um valor desconhecido, reescrevendo usando regra de três 2=6, 2 sorvetes = 6 reais então 3=x, 3 sorvetes igual a quanto?, multiplicamos cruzado e descobrimos o valor
da incógnita, 2x=18, como no caso queremos descobrir apenas x, devemos nos livrar do 2, executando uma divisão por 2 nos 2 lados, ficando x=18/2=9, então 3 sorvetes valem 9 reais.<br>
Caso os valores cresçam de maneira inversamente proporcional, então em vez de multiplicar cruzado se multiplica direto, exemplo se viajando a 10km/h eu demoro 2 horas para chegar ao destino, quanto demoraria se eu estivesse a 20km/h? 
Como quando a velocidade crescesse o tempo de viagem diminuiria, os dois valores estão mudando de maneira inversa, então multiplicamos direto: 10=2, 20=x, 20=20x, x=1, então demoraria apenas 1 hora para chegar ao destino.'
, 'A regra de três foi trazida para a Europa pelos árabes na Idade Média. No século XIII.');

insert into questao values
(default, 'Se 30 ovos são 18 reais, então 45 ovos são:', '24', '24', '20', '16', '19', 10),
(default, 'Um avião da classe b demora 8 dias para chegar ao destino, um avião da classe a viaja 50% mais rápido,
quanto tempo o avião da classe b vai demorar para a mesma viagem?', '5,33 dias', '6 dias', '5,33 dias', '6,2 dias', '7,1 dias', 10),
(default, '3 pintores pintam uma parede em 6 horas, 5 pintores pintariam a mesma parede em quanto tempo?', '3,60 horas', '4,20 horas', '5 horas', '3,60 horas', '4 horas', 10);