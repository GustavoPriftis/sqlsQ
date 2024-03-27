/* 25) Escreva o comando que cria a tabela Carro com os seguintes atributos:
id int not null identity primary key,
marca varchar(50) not null,
modelo varchar(50) not null,
cor varchar(15) not null,
ano_fabricacao int not null,
ano_modelo int not null,
placa varchar(7) not null
26) Incluir as seguintes informações na tabela Carro:
marca modelo cor ano_fabricacao ano_modelo placa
Ford New Fiesta Branco 2014 2014 DDD0011
Ford Focus Preto 2014 2015 FFP0000
Ford Fusion Prata 2015 2015 FUP1212
Fiat 147 Branco 1983 1983 INU1313
Fiat Uno Vermelho 2001 2001 FUV1414
BMW 320I Prata 2015 2015 BMP1616
27) Selecionar os carros da marca Ford
28) Selecionar os carros da marca Fiat
29) Selecionar os carros com ano de fabricação menor que 2000
30) Selecionar os carros com ano_modelo 2015
31) Selecionar os carros de cor Prata
*/
--01)Criar a tabela Cargo conforme informações abaixo:
/*
idCargo INT, PK, AI
nomeCargo VARCHAR(50)
salarioBrutoDECIMAL(10,2)
descontoSalario DECIMAL(10,2)
*/
--02)Criar a tabela Colaborador conforme informações abaixo:
/*
idColaborador INT, PK, AI
nomeColaborador VARCHAR(50)
idCargo INT
*/
--03)Criar a tabela Colaborador_Ferias conforme informações abaixo:
/*
idColaborador INT, PK, AI
data_saida date
data_retorno date
*/
create table colaborador_ferias(
	idcolaborador serial,
	data_saida date,
	data_retorno date,
	
	constraint pk_cof_idcolaborador primary key (idcolaborador)
);
select * from cargo;
select * from colaborador;
select * from colaborador_ferias;
--05)Adicione os seguintes Colaboradores na tabela Colaborador:
insert into colaborador(nome_colaborador, idcargo) values
('Andréas Silver', 5),
('Juliana Ribeiro', 13),
('Amanda Schultz', 7),
('Cristiana Lobo', 10),
('Brenda Alvarez', 6),
('Carla Oliveira', 16),
('Orlando Pamplona', 19),
('Alex Marques', 18),
('Santhyago Alves', 20),
('Júlio César', 1),
('Diego de Lima', 20),
('Cleberson Kist', 6),
('Everton Duarte', 9),
('Vanessa Montres', 5),
('Bianca Vasconselos', 15),
('Daniel Silva', 11),
('Ellen Moreira', 17),
('Tatiana Holtrup', 3),
('Viviane de Souza',14),
('Paloma Oliveira', 20),
('Jéssica Mattos', 2),
('Óliver Duvivier', 4),
('Luana Silveira', 1),
('Jennifer Verciani', 5),
('Mariana Nascimento', 8),
('Mônica Silvestre', 11),
('Gabriela Novaes', 12),
('George Marcel', 15),
('Hélio Castro', 1),
('Emanuela Gonzales', 20),
('Priscila Medeiros', 12),
('Bruna Conceição', 4),
('Andriane Coelho', 7),
('Rebeca Bortolato',15),
('Hellen Cristiana',18),
('Gustavo Souza', 5),
('Élton Civieiro', 4),
(null,17),
('Ramon Duarte', 20),
('Fernando Duve', 3),
(null, 5),
('Patrícia Alves', 16),
('Larissa Torres', 7),
('Elisiane Peris', 13)

--06, Adicione os seguintes dados na tabela Colaborador_Ferias:
insert into colaborador_ferias(data_saida, data_retorno) values
('03-01-2014','03-02-2014'),
('03/01/2014','03/01/2014'),
('03/01/2014','03/01/2014'),
('03/01/2014','03/01/2014'),
('03/01/2014','03/01/2014'),
('03/01/2014','03/01/2014'),
('03/01/2014','03/01/2014'),
('04/02/2014','07/03/2014'),
('04/02/2014','07/03/2014'),
('04/02/2014','07/03/2014'),
('04/02/2014','07/03/2014'),
('04/02/2014','07/03/2014'),
('04/02/2014','07/03/2014'),
('04/02/2014','07/03/2014'),
('08/03/2014','08/04/2014'),
('08/03/2014','08/04/2014'),
('08/03/2014','08/04/2014'),
('08/03/2014','08/04/2014'),
('08/03/2014','08/04/2014'),
('08/03/2014','08/04/2014'),
('03/10/2014','03/11/2014'),
('03/10/2014','21/03/2014'),
('03/10/2014','03/11/2014'),
('03/10/2014','03/11/2014'),
('03/10/2014','03/11/2014')
--07) Exclua os colaboradores que não possuem nome.
delete from colaborador where nome_colaborador = ' ';
--08) Crie uma consulta que busque os Colaboradores que possuem salario > 1500
select 
	col.nome_colaborador as nome, 
	car.salario_bruto as salario
from
	colaborador col
inner join
	cargo car on car.idcargo = col.idcargo
where 
	salario_bruto > 1500
select * from cargo
--09) Crie uma consulta que busque os Colaboradores que possuem salario < 1300
select 
	col.nome_colaborador as nome, 
	car.salario_bruto as salario
from
	colaborador col
inner join
	cargo car on car.idcargo = col.idcargo
where 
	salario_bruto < 1300
--10)Crie uma consulta que busque os Colaboradores que possuem desconto de salario > 500
select 
	col.nome_colaborador as nome, 
	car.desconto_salario as desconto
from
	colaborador col
inner join
	cargo car on car.idcargo = col.idcargo
where 
	desconto_salario > 500
--11) Crie uma consulta que busque o nome dos colaboradores juntamente com seus cargos
select 
	col.nome_colaborador as nome, 
	car.nome_cargo as cargo
from
	colaborador col
inner join
	cargo car on car.idcargo = col.idcargo

--12) Crie uma consulta que busque os colaboradores que possuem a "Java" na descrição de seu cargo. Utilize like
select 
	col.nome_colaborador as nome, 
	car.nome_cargo as cargo
from
	colaborador col
inner join
	cargo car on car.idcargo = col.idcargo
where
	car.nome_cargo like '%Java%'
--13) Crie uma consulta dos Colaboradores que não tiveram férias
select 
	col.nome_colaborador as nome
from
	colaborador col
inner join
	colaborador_ferias cof on cof.idcolaborador = col.idcolaborador
where 
	cof.data_saida = cof.data_retorno 
--14) Crie uma consulta que busque os colaboradores que tiraram férias no mês de Janeiro de 2014
select 
	col.nome_colaborador as nome,
	cof.data_saida as entrada
from
	colaborador col
inner join
	colaborador_ferias cof on cof.idcolaborador = col.idcolaborador
where 
	extract(month from cof.data_saida) = 1  
--15) Crie uma consulta que busque os colaboradores que tiraram férias no mês de Março de 2014
select 
	col.nome_colaborador as nome,
	cof.data_saida as entrada
from
	colaborador col
inner join
	colaborador_ferias cof on cof.idcolaborador = col.idcolaborador
where 
	extract(month from cof.data_saida) = 3 
--16) Crie uma consulta que busque os colaboradores que tiraram férias no mês de outubro de 2014
select 
	col.nome_colaborador as nome,
	cof.data_saida as entrada
from
	colaborador col
inner join
	colaborador_ferias cof on cof.idcolaborador = col.idcolaborador
where 
	extract(month from cof.data_saida) = 10
--17) Crie uma consulta que busque os colaboradores que tiraram férias em 2014
select 
	col.nome_colaborador as nome,
	cof.data_saida as entrada
from
	colaborador col
inner join
	colaborador_ferias cof on cof.idcolaborador = col.idcolaborador
where 
	extract(year from cof.data_saida) = 2014
--18) Crie uma consulta que busque o cargo dos colaboradores que tiraram férias no mês de Março de 2014
select 
	col.nome_colaborador as nome,
	crg.nome_cargo as cargo,
	cof.data_saida as entrada
from
	colaborador col
inner join
	colaborador_ferias cof on cof.idcolaborador = col.idcolaborador
inner join 
	cargo crg on crg.idcargo = col.idcargo
where 
	extract(month from cof.data_saida) = 3 and extract(year from cof.data_saida) = 2014

