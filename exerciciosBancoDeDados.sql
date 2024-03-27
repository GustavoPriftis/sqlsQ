--23)Crie uma base de dados prodDatabase
CREATE DATABASE proddatabase

--24) Dentro da base de dados prodDatabase inclua a tabela Produto com as seguintes colunas id int primary key identity, nome varchar(100), valor decimal(10,4)
CREATE TABLE produto(
	idproduto integer not null,
	nome varchar(100),
	valor decimal(10,4),
	
	CONSTRAINT pk_pdd_idproduto primary key (idproduto)
);

--25) Dentro da base de dados prodDatabase inclua a tabela Pedido com as seguintes colunas: id int primary key, codigo int, cliente varchar(255) dataCriacao datetime.
CREATE TABLE pedido(
	idpedido integer not null,
	codigo integer,
	cliente varchar(255),
	data_criacao DATE NOT NULL DEFAULT CURRENT_DATE,
	
	CONSTRAINT pk_pdd_idpedido PRIMARY KEY (idpedido)
);

--26) Dentro da base de dados prodDatabase inclua a tabela PedidoItem com as seguintes colunas: idPedido int foreign key references pedido(id), idProduto int foreign key references  produto(id), quantidade int default 0
CREATE TABLE pedido_item(
	idpedido integer,
	idproduto integer,
	quantidade integer,
	
	CONSTRAINT fk_pdd_idpedido FOREIGN KEY (idpedido) REFERENCES pedido (idpedido),
	CONSTRAINT fk_pdp_idproduto FOREIGN KEY (idproduto) REFERENCES produto (idproduto)
);

--27)Dentro da base de dados prodDatabase inclua a tabela Entregas com as seguintes colunas: id not null primary key identity, idPedido int , rua varchar(100), numero varchar(1000), bairro varchar(255) cidade varchar(255).
CREATE TABLE entregas(
	identregas integer not null,
	idpedido int,
	rua varchar(100),
	numero varchar(1000),
	bairro varchar(255),
	cidade varchar(255),
	
	CONSTRAINT pk_ent_identregas PRIMARY KEY (identregas)
);

--28) altere a tabela Entregas para que o idPedido seja uma chave estrangeira apontando para a coluna id da tabela Pedido.
ALTER TABLE entregas DROP COLUMN idpedido;
ALTER TABLE entregas ADD COLUMN idpedido int CONSTRAINT fk_pdd_idpedido REFERENCES pedido(idpedido)

--29) Crie uma tabela Cargo com os campos id int primary key, nome varchar
CREATE TABLE cargo(
	idcargo int NOT null,
	nome varchar,
	
	CONSTRAINT pk_crg_idcargo PRIMARY KEY (idcargo)
);

--30) Crie uma tabela Colaborador com os campos id int, nome varchar, sobrenome varchar, cargo int
CREATE TABLE colaborador (
	idcolaborador int NOT null,
	nome varchar,
	sobrenome varchar,
	cargo int
);

--31) altere a tabela Colaborador para que a coluna id seja primary key
ALTER TABLE colaborador ADD COLUMN idcolaborador int NOT NULL;
ALTER TABLE colaborador ADD CONSTRAINT pk_clb_idcolaborador PRIMARY KEY (idcolaborador);

--32) altere a tabela Colaborador para que a coluna cargo seja uma foreign key ligando a tabela Cargos com o campo id.
ALTER TABLE colaborador ADD CONSTRAINT fk_crg_cargo FOREIGN KEY (cargo) REFERENCES cargo (idcargo);

--33) Crie uma tabela Marcas com os campos id INT primary key identity, nome varchar;
CREATE TABLE marcas(
	idmarcas integer,
	nome varchar,
	
	CONSTRAINT pk_mar_idmarcas PRIMARY KEY (idmarcas)
);

--34) Crie uma tabela Modelos com os campos id int identity, idMarca int, nome varchar;
CREATE TABLE modelos(
	idmodelos  integer UNIQUE GENERATED ALWAYS AS IDENTITY,
	idmarca integer,
	nome varchar
);

--36) Altere a tabela Modelos para que a coluna idMarca seja uma foreign key relacionada com a tabela marcas.
ALTER TABLE modelos ADD CONSTRAINT fk_mar_idmarca FOREIGN KEY (idmarca) REFERENCES marcas(idmarcas);

--37) Crie uma tabela veiculos com as colunas id int primary key identity, idModelo int foreign key references modelos(id), codigo int not null, placa varchar not null unique, cor varchar not null
CREATE TABLE veiculos(
	idveiculos INT GENERATED ALWAYS AS IDENTITY,
	idmodelo INT,
	codigo INT NOT NULL, 
	placa VARCHAR NOT NULL,
	cor VARCHAR UNIQUE NOT NULL,
	
	CONSTRAINT pk_vei_idveiculos PRIMARY KEY (idveiculos),
	CONSTRAINT fk_mod_idmodelo FOREIGN KEY (idmodelo) REFERENCES modelos(idmodelos)
);

--38) Crie uma Tabela Empresas com os campos id not null primary key, nome varchar not null
CREATE TABLE empresas(
	idempresa INTEGER NOT NULL, 
	nome VARCHAR NOT NULL,
	
	CONSTRAINT pk_emp_idempresa PRIMARY KEY (idempresa)
);

--39) Crie uma tabela Filiais com os campos id int pk identity, nome varchar not null, matriz int foreign key relacionando a tabela Empresas (id)
CREATE TABLE filiais(
	idfiliais INTEGER GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR NOT NULL,
	matriz INTEGER,
	
	CONSTRAINT pk_fil_idfiliais PRIMARY KEY (idfiliais),
	CONSTRAINT fk_emp_matriz FOREIGN KEY (matriz) REFERENCES empresas(idempresa)
);

--40) Crie uma tabela Setores com os campos id pk, nome varchar not null, idFilial FK filiais(id)
CREATE TABLE setores (
	idsetores INTEGER GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR NOT NULL,
	idfilial INTEGER,
	
	CONSTRAINT pk_set_idsetores PRIMARY KEY (idsetores),
	CONSTRAINT fk_fil_idfilial FOREIGN KEY (idfilial) REFERENCES filiais(idfiliais)
);

--41) Crie uma tabela Funcionarios com os campos id not null primary key, nome varchar, setor fk Setores(id), idFilial fk Filiais(id)
CREATE TABLE funcionarios (
	idfuncionarios INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR,
	setor INTEGER,
	idfilial INTEGER,
	
	CONSTRAINT pk_fun_idfuncionarios PRIMARY KEY (idfuncionarios),
	CONSTRAINT fk_fil_idfilial FOREIGN KEY (idfilial) REFERENCES filiais(idfiliais),
	CONSTRAINT fk_set_setor FOREIGN KEY (setor) REFERENCES setores(idsetores)
);

--42) Crie uma tabela Dependentes com os campos id int pk identity, nome varchar not null, filiacao fk functionarios(id)
CREATE TABLE dependentes(
	iddependentes INTEGER GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR NOT NULL,
	filiacao INTEGER,
	
	CONSTRAINT pk_dep_iddependentes PRIMARY KEY (iddependentes),
	CONSTRAINT fk_fun_filiacao FOREIGN KEY (filiacao) REFERENCES funcionarios(idfuncionarios)
);

---------------------------------------------------------------------------------------------------------------------------------------
-- 1 crie uma tabela Produtos com os campos id, nome, valor insira os seguintes produtos
CREATE TABLE produtos (
	idprodutos INTEGER GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR,
	valor NUMERIC,
	
	CONSTRAINT pk_pdd_idprodutos PRIMARY KEY (idprodutos)
);
	--1, 'Televisao LED 42', 1400.40
	INSERT INTO produtos (nome, valor) values ('Televisao LED 42', 1400.40);
	
	--2, 'Televisao LED 32', 1250.30
	INSERT INTO produtos (nome, valor) values ('Televisao LED 32', 1250.30);
	
	--3, 'Aparelho de Jantar Tramontina', 800.0
	INSERT INTO produtos (nome, valor) values ('Aparelho de Jantar Tramontina', 800.0);
	
	--4, 'Playstation 4', 2400.40
	INSERT INTO produtos (nome, valor) values ('Playstation 4', 2400.40);
	
	--5, 'Playstation 3', 720.99
	INSERT INTO produtos (nome, valor) values ('Playstation 3', 720.99);
	
	--6, 'Sofa ', 2400.60
	INSERT INTO produtos (nome, valor) values ('Sofa', 2400.60);
	
	--7, 'Fritadeira elétrica', 200
	INSERT INTO produtos (nome, valor) values ('Fritadeira elétrica', 200);
	
	--8, 'Forno Microondas 20l', 630.90
	INSERT INTO produtos (nome, valor) values ('Forno Microondas 20l', 630.90);
	
	--9, 'Banheira Hidromassagem G', 19999.90
	INSERT INTO produtos (nome, valor) values ('Banheira Hidromassagem G', 19999.90);
	
	--10, 'Roupeiro 6 portas', 1110.10
	INSERT INTO produtos (nome, valor) values ('Roupeiro 6 portas', 1110.10);
	
	--11, 'Notebook Del vostro', 2200.40
	INSERT INTO produtos (nome, valor) values ('Notebook Del vostro', 2200.40);
	
	--12, 'IPhone 6S', 3500.23
	INSERT INTO produtos (nome, valor) values ('IPhone 6S', 3500.23);

--2, selecione os produtos com preço entre 1000 e 2000
select nome from produtos where valor between 1000 and 2000; 

--3, selecione os produtos ordenados de forma ascendente
select nome from produtos order by nome asc;

--4, selecione os produtos ordenados de forma descendente
select nome from produtos order by nome desc;

--5, selecione os produtos cujo nome tenha Televisao
select nome from produtos where nome like '%Televisao%';

--6, selecione os produtos cujo nome tenha Playstation
select nome from produtos where nome like '%Playstation%';

--7, selecione os produtos cujo nome tenha G
select nome from produtos where nome like '%G%';

--8, selecione os produtos ordenados pelo preço de forma ascendente
select nome, valor from produtos order by valor asc;

--9, selecione os produtos ordenados pelo preço de forma descendente
select nome, valor from produtos order by valor desc;

---------------------------------------------------------------------------
--10, selecione os 5 produtos mais caros
select nome, valor from produtos order by valor desc limit 5;

--11, selecione os 5 produtos mais baratos
select nome, valor from produtos order by valor asc limit 5;

--12, selecione a média de preços dos produtos
select avg(valor) from produtos;

--13, selecione o preço do produto mais caro
select max(valor) from produtos;

--14, selecione o preço do produto mais barato
select min(valor) from produtos;

--15, selecione a soma do preço de todos os produtos
select sum(valor) from produtos;

--16, selecione o nome de todos os produtos em caixa alta
select upper(nome) from produtos;

--17, selecione o nome de todos os produtos em caixa baixa
select lower(nome) from produtos;

--18, selecione a data atual
select NOW();

--19, selecione a data atual formatada com o padrão brasileiro (dd/MM/yyyy)
SELECT TO_CHAR(current_date, 'DD-MM-YYYY');

--20, selecione a quantidade de caracteres do nome de cada produto
select char_length(nome) from produtos group by nome

--21, selecione os primeiros 7 caracteres dos nomes de cada produto
select substring(nome from 1 for 7) from produtos;

--22, selecione os 5 caracteres a partir da 3ª posição dos nomes de cada produto
select substring(nome from 3 for 8) from produtos;

--23, selecione a quantidade de produtos cadastrados
select count(nome) from produtos;

--24, selecione a quantidade de produtos cadastrados que possuem valor maior que 1000
select count(nome) from produtos where valor > 1000;

--25, selecione a quantidade de produtos cadastrados que possuem valor menor que 1000
select count(nome) from produtos where valor < 1000;

--26, selecione a soma dos produtos que possuem valor maior que 1300
select sum(valor) from produtos where valor > 1300;

--27, selecione o maior valor dos produtos que possuem valor < 1500
select max(valor) from produtos where valor < 1500;

--28, selecione a média do valor dos produtos que possuem valor menor que 1200
select avg(valor) from produtos where valor < 1200;

--29, selecione a média do valor dos produtos que possuem valor maior que 1000
select avg(valor) from produtos where valor > 1000;

--30, selecione a média dos produtos que possuem valor entre 10000 e 20000
select avg(valor) from produtos where valor between 10000 and 20000;

--31, criar uma tabela categoria com os campos id int pk, nome varchar(100)
CREATE TABLE categoria(
	idcategoria integer,
	nome varchar (100),
	
	constraint pk_cat_idcategoria primary key (idcategoria)
);

--32, insira os seguintes valores na tabela categoria
	--1, 1 Categoria01
	insert into categoria (idcategoria, nome) values (1, 'Categoria01');
	
	--2, 2 Categoria02
	insert into categoria (idcategoria, nome) values (2, 'Categoria02');
	
	--3, 3 Categoria03
	insert into categoria (idcategoria, nome) values (3, 'Categoria03');

	--4, 4 Categoria04
	insert into categoria (idcategoria, nome) values (4, 'Categoria04');

	--5, 5 Categoria05
	insert into categoria (idcategoria, nome) values (5, 'Categoria05');

	--6, 6 Categoria06
	insert into categoria (idcategoria, nome) values (6, 'Categoria06');

--33, criar uma tabela Veiculo com os campos id pk, placa varchar(7), categoria int
create table veiculo(
	idveiculo integer,
	placa varchar(7),
	categoria integer,
	
	constraint pk_vei_veiculo primary key (idveiculo)
);

--34, insira os seguintes valores na tabela Veiculo
	--id placa categoria
	--1 AAA1234 1
	insert into veiculo (idveiculo, placa, categoria) values (1, 'AAA1234', 1);
	
	--2 BBB1234 1	
	insert into veiculo (idveiculo, placa, categoria) values (2, 'BBB1234', 1);
	
	--3 CCC1234 1
	insert into veiculo (idveiculo, placa, categoria) values (3, 'CCC1234', 1);

	--4 DDD1234 2
	insert into veiculo (idveiculo, placa, categoria) values (4, 'DDD1234', 2);
	
	--5 EEE1234 2
	insert into veiculo (idveiculo, placa, categoria) values (5, 'EEE1234', 2);

	--6 FFF1234 2
	insert into veiculo (idveiculo, placa, categoria) values (6, 'FFF1234', 2);

	--7 GGG1234 3
	insert into veiculo (idveiculo, placa, categoria) values (7, 'GGG1234', 3);

	--8 HHH1234 3
	insert into veiculo (idveiculo, placa, categoria) values (8, 'HHH1234', 3);

	--9 III1234 3
	insert into veiculo (idveiculo, placa, categoria) values (9, 'III1234', 3);

	--10 JJJ1234 4
	insert into veiculo (idveiculo, placa, categoria) values (10, 'JJJ1234', 4);
	
	--11 KKK1234 4
	insert into veiculo (idveiculo, placa, categoria) values (11, 'KKK1234', 4);
	
	--12 LLL1234 4
	insert into veiculo (idveiculo, placa, categoria) values (12, 'LLL1234', 4);
	
	--13 MMM1234 5
	insert into veiculo (idveiculo, placa, categoria) values (13, 'MMM1234', 5);

	--14 NNN1234 5
	insert into veiculo (idveiculo, placa, categoria) values (14, 'NNN1234', 5);

	--15 OOO1234 5
	insert into veiculo (idveiculo, placa, categoria) values (15, 'OOO1234', 5);
	
	--16 PPP1234
	insert into veiculo (idveiculo, placa, categoria) values (16, 'PPP1234', null);

	--17 QQQ1234 OK
	insert into veiculo (idveiculo, placa, categoria) values (17, 'QQQ1234', null);

--35, SELECIONE TODOS OS VEÍCULOS COM SUAS CATEGORIAS
select placa, categoria from veiculo where categoria order by categoria;

--36, SELECIONE TODOS OS VEÍCULOS QUE POSSUAM OU NÃO CATEGORIA
select placa, categoria from veiculo where categoria order by categoria;

--37, SELECIONE TODAS AS CATEGORIAS QUE POSSUAM OU NÃO VEÍCULOS
select categoria from veiculo
--38, SELECIONE OS VEÍCULOS QUE NÃO POSSUEM CATEGORIA OK
select placa, categoria from veiculo;

--39, SELECIONE AS CATEGORIAS QUE NÃO POSSUEM VEICULO
select nome from categoria where idcategoria = 6;

--40, CRIE A TABELA PRECO_CATEGORIAS COM OS CAMPO ID INT PK IDCATEGORIA INT, VALOR DECIMAL(10,2)
create table preco_categoria(
	idpreco_categoria int not null, 
	idcategoria int,
	valor decimal(10,2),

	constraint pk_pre_idpreco_categoria primary key (idpreco_categoria),
	constraint fk_cat_idcategoria foreign key (idcategoria) references categoria(idcategoria)
);

insert into preco_categoria(idpreco_categoria, idcategoria, valor) values (1, 1, 20000.0);
insert into preco_categoria(idpreco_categoria, idcategoria, valor) values (2, 2, 40000.0);
insert into preco_categoria(idpreco_categoria, idcategoria, valor) values (3, 3, 60000.0);
insert into preco_categoria(idpreco_categoria, idcategoria, valor) values (4, 4, 90000.0);
insert into preco_categoria(idpreco_categoria, idcategoria, valor) values (5, 5, 120000.0);
insert into preco_categoria(idpreco_categoria, idcategoria, valor) values (6, 6, 200000.0);

select * from preco_categoria;
--41, SELECIONE OS NOMES DAS CATEGORIAS COM SEUS VALORES 
select 
	cat.nome as categoria,
	pre.valor
from 
	preco_categoria pre
left outer join
	categoria cat on cat.idcategoria = pre.idcategoria


--42, SELECIONE A PLACA E O VALOR DOS VEÍCULOS COM BASE EM SUAS CATEGORIAS
select 
	vei.placa,
	cat.categoria,
	pre.valor
from 
	veiculo vei
left outer join
	preco_categoria pre on pre.idcategoria = cat.idcategoria
left outer join 
	categoria cat on cat.idcategoria = pre.idcategoria	
order by 
	cat.categoria

--43, SELECIONE OS 5 PRIMEIROS VEICULOS DE MAIOR VALOR
select valor from preco_categoria order by valor desc limit 5;
--44, SELECIONE OS 4 VEÍCULOS DE MENOR VALOR
select valor from preco_categoria order by valor asc limit 4;

--45, crie a tabela Cliente com as seguintes colunas: id int pk, nome varchar(100)
create table cliente(
	idcliente int,
	nome varchar(100),
	
	constraint pk_cln_cliente primary key (idcliente)
);

--46, insira os registros abaixo na tabela
insert into cliente(idcliente, nome) values (1, 'Joao');
insert into cliente(idcliente, nome) values (2, 'Maria');
insert into cliente(idcliente, nome) values (3, 'Jose');
insert into cliente(idcliente, nome) values (4, 'Ana');
insert into cliente(idcliente, nome) values (5, 'Kamila');
insert into cliente(idcliente, nome) values (6, 'Joana');
insert into cliente(idcliente, nome) values (7, 'Fabio');
insert into cliente(idcliente, nome) values (8, 'Fernando');
insert into cliente(idcliente, nome) values (9, 'Maiara');
select * from cliente;

--47, Crie a tabela Pedido com as seguintes coluna id int pk idCliente int fk
-- codigo varchar(100) not null dt_criacao date not null
create table pedido_novo(idpedido_novo, icliente, codigo, dt_criacao) values (1, 1, 'ZAQ11', 2015-01-01)(
	idpedido_novo int,
	idcliente int,
	codigo varchar(100) not null,
	dt_criacao date not null,
	
	constraint pk_pdd_idpedido_novo primary key (idpedido_novo),
	constraint fk_cln_idcliente foreign key (idcliente) references cliente(idcliente)
);
--48, insira os seguintes registros na tabela Pedido

insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (1, 1, 'ZAQ11', '2015-01-01');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (2, 2, 'xsw22', '2015-01-01');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (3, 3, 'CDE33', '2015-01-20');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (4, 4, 'VFR44', '2015-02-19');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (5, 5, 'BGT55', '2015-02-18');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (6, 6, 'NHT66', '2015-03-17');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (7, 7, 'MJU77', '2015-03-16');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (8, 8, 'QWE10', '2015-04-15');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (9, 1, 'ASD34', '2015-04-14');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (10, 2, 'ZAQ12', '2015-05-13');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (11, 3, 'ZAQ11', '2015-05-12');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (12, 4, 'ZAQ13', '2015-06-11');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (13, 5, 'ZAQ41', '2015-06-10');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (14, 6, 'ZAQ15', '2015-07-09');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (15, 7, 'ZAQ16', '2015-07-08');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (16, 1, 'ZAQ17', '2015-08-07');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (17, 2, 'ZAQ18', '2015-08-06');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (18, 3, 'ZAQ19', '2015-09-05');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (19, 4, 'ZAM11', '2015-09-04');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (20, 5, 'ZLQ28', '2015-10-03');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (21, 6, 'LSK27', '2015-11-02');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (22, 7, 'DTZ71', '2015-12-21');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (23, 1, 'CCC41', '2015-10-01');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (24, 1, 'DDD99', '2015-11-11');
insert into pedido_novo(idpedido_novo, idcliente, codigo, dt_criacao) values (25, 2, 'CCC12', '2015-12-20');

--49,selecione o nome dos clientes com o código de seus pedidos 
select 
	cln.nome as cliente,
	pdd.codigo
from 
	cliente cln
left outer join
	pedido_novo pdd on pdd.idcliente = cln.idcliente
--50, selecione os clientes que não possuem pedidos
select 
	cln.nome as cliente,
	pdd.codigo
from 
	cliente cln
inner join
	pedido_novo pdd on pdd.idcliente = cln.idcliente

--51, selecione o nome dos clientes que fizeram algum pedido entre janeiro e fevereiro de 2015
select 
	cln.nome,
	case extract(month from pdd.dt_criacao)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
	else
		'Outro mês'
	end as mes
from 
	cliente cln
inner join
	pedido_novo pdd on pdd.idcliente = cln.idcliente
where 
	extract(month from pdd.dt_criacao) = 1 or extract(month from pdd.dt_criacao) = 2

--52, selecione os cliente que fizeram algum pedido em dezembro de 2015
select 
	cln.nome,
	case extract(month from pdd.dt_criacao)
		when 12 then 'Dezembro'
	else 
		'outro mês'
	end as mes
from 
	cliente cln
inner join
	pedido_novo pdd on pdd.idcliente = cln.idcliente
where 
	extract(month from pdd.dt_criacao) = 12
--53, selecione o código dos pedidos realizados pelo cliente de id 1
select
	cln.nome,
	pdd.codigo
from 
	cliente cln
left outer join
	pedido_novo pdd on pdd.idcliente = cln.idcliente
where 
	pdd.idcliente = '1'
--54, selecione o código dos pedidos realizados pelos clientes de id 4, 5 e 6
select
	cln.nome,
	pdd.codigo
from 
	cliente cln
left outer join
	pedido_novo pdd on pdd.idcliente = cln.idcliente
where 
	pdd.idcliente = '4' or pdd.idcliente = '5' or pdd.idcliente = '6'
--55, selecione apenas as 3 primeiras letras do código de todos os pedidos
select 
	substring(codigo from 1 for 3 ) 
from 
	pedido_novo
--56, selecione o nome do cliente que fez o pedido de código DDD99
select
	cln.nome,
	pdd.codigo as pedido
from 
	cliente cln
left outer join
	pedido_novo pdd on pdd.idcliente = cln.idcliente
where 
	pdd.codigo = 'DDD99'
--57, selecione a quantidade de pedidos de cada cliente
select 
	cln.nome,
	count(pdd.codigo)
from
	cliente cln
left outer join
	pedido_novo pdd on pdd.idcliente = cln.idcliente
group by
	cln.nome

--------------------------------------------------------------------------------
