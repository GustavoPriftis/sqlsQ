CREATE TABLE cliente(
	idcliente integer not null,
	nome varchar(50) not null, -- Gustavo 7, 43
	cpf char(11), -- Pode ser inserido um cliente sem o CPF, caracteres caso tiver hífen, na aplicação antes de chegar ao banco precisa ser tratado
	rg varchar(15),
	data_nascimento date, 
	genero char(1), -- Somente uma letra (M - F)
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),-- Número pode conter letras (1A e assim em diante)
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,
	
	-- pk = primary key (Chave primária)
	constraint pk_cln_idcliente primary key (idcliente)
);

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (1,'Manoel', '88828383821','32323','2001-01-30','M','Estudante', 'Brasileira', 'Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (2,'Geraldo', '12343299929','56565','1987-01-04','M','Engenheiro', 'Brasileira', 'Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');

select * from cliente;

select nome, data_nascimento from cliente;

select nome, data_nascimento as "Data de nascimento" from cliente;

select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente;

select * from cliente limit 3;

select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%c%';

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg from cliente where rg is null;

select nome from cliente order by nome asc;

select nome from cliente order by nome desc;
-- Exercícios
-- 1:
select nome, genero, profissao from cliente order by nome desc; 
-- 2:
select nome from cliente where nome like '%r%'; 
-- 3:
select nome from cliente where nome like 'C%';
-- 4:
select nome from cliente where nome like '%a';
-- 5:
select nome, bairro from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.';
-- 6:
select nome, complemento from cliente where complemento like 'A%';
-- 7:
select nome, genero from cliente where genero like 'F';
-- 8: 
select nome, cpf from cliente where cpf is null;
-- 9:
select nome, profissao from cliente order by profissao;
--10:
select nome from cliente where nacionalidade like 'Brasil%';
--11:
select nome, numero from cliente where numero is not null;
--12:
select nome, uf from cliente where uf like 'SC';
--13:
select nome, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';
--14:
select 'Nome: ' || nome || ' Logradouro: ' || logradouro || ' Numero: ' ||  numero || ' Complemento: ' || complemento || ' Bairro: ' || bairro || ' Municipio: ' || municipio  || ' UF: ' || uf  as "Informações do cliente" from cliente;

select * from cliente;

update cliente set nome = 'Teste' where idcliente  = 1;

update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;

insert into cliente (idcliente, nome) values (16, 'João');

delete from cliente where idcliente = 16;

-- Exercícios 2
-- 1:

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (16, 'Maicon', '12349596421','1234', '1964-10-10', 'F', 'Empresario', null, null, null, null,null,  'Florianopolis', 'PR');

insert into cliente (idcliente, nome, rg, genero, profissao, nacionalidade, logradouro , numero , complemento, bairro,  municipio, uf)
values (17, 'Getúlio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343','Apartamento', 'Centro', 'Curitiba', 'SC');

insert into cliente (idcliente, nome, genero, profissao, nacionalidade, numero, complemento)
values (18, 'Sandra', 'M', 'Professor', 'Italiana', '12', 'Bloco A');

-- 2:

update cliente set cpf = '45390569432', genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = 16;

-- 3:

update cliente set data_nascimento = '1978-04-01', genero = 'M' where idcliente = 17;

-- 4:

update cliente set  genero = 'F', profissao = 'Professora', numero  = '123' where idcliente = 18;

-- 5:

delete from cliente where idcliente = 17;

-- 6:

delete from cliente where idcliente = 18;

create table profissao(
	idprofissao integer not null,
	nome varchar (30) not null, 
	
	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

insert into profissao (idprofissao, nome) values (1,'Estudantes');
insert into profissao (idprofissao, nome) values (2,'Engenheiro');
insert into profissao (idprofissao, nome) values (3,'Pedreiro');
insert into profissao (idprofissao, nome) values (4,'Jornalista');
insert into profissao (idprofissao, nome) values (5,'Professor');

select * from profissao;

select profissao from cliente;

create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar(30) not null, 
	
	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');


select * from nacionalidade;

create table complemento(
	idcomplemento integer not null, 
	nome varchar(30) not null,
	
	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento;

create table bairro (
	idbairro integer not null,
	nome varchar(30) not null,
	
	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique(nome)
);

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São Pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

select * from bairro;

select * from cliente;

alter table cliente rename column profissao to idprofissao; 
alter table cliente add idprofissao integer;
alter table cliente drop idprofissao;
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6,7, 8, 13);

select * from profissao;
delete from profissao where idprofissao = 10;
insert into profissao (idprofissao, nome) values (10, 'Teste');

alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer; 
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);
update cliente set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idcliente in (5,7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9,13);

alter table cliente drop complemento


select * from cliente;

alter table cliente drop complemento;

alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento(idcomplemento);

select * from cliente;
alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer;
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);
select * from nacionalidade
update cliente set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idcliente in (5,7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9,13);

select * from cliente;
alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);
select * from complemento
update cliente set idcomplemento = 1 where idcliente in (1,4,9,13);
update cliente set idcomplemento = 2 where idcliente in (2,3,7);

select * from cliente
alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);

select * from bairro
update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4,5);
update cliente set idbairro = 4 where idcliente = 7;

select * from cliente
create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,
	
	constraint pk_ufd_idunidade_federecao primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);

insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');
select * from uf

create table municipio (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,
	
	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);
select * from municipio

select * from cliente
alter table cliente drop municipio;
alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente set idmunicipio = 2 where idcliente in (3, 12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente in (5);
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente in (7);
update cliente set idmunicipio = 7 where idcliente in (8);
update cliente set idmunicipio = 8 where idcliente in (9);
update cliente set idmunicipio = 9 where idcliente in (14, 15);
select * from cliente

create table fornecedor (
	idfornecedor integer not null,
	nome varchar(50) not null,
	
	constraint pk_frn_idfornecedor primary key (idfornecedor),
	constraint un_frn_nome unique (nome)
);

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB Máquinas');
select * from fornecedor

create table vendedor (
	idvendedor integer not null,
	nome varchar(50) not null,
	
	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint un_vnd_nome unique (nome)
);

insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');
select * from vendedor

create table transportadora (
	idtransportadora integer not null,
	idmunicipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(10),
	
	constraint pk_trn_idtransportadora primary key (idtransportadora),
	constraint fk_trn_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_trn_nome unique (nome)
);

select * from municipio

insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero)
values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');
insert into transportadora (idtransportadora, idmunicipio, nome)
values (2, 5, 'União Transportes');
select * from transportadora

create table produto (
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,
	
	constraint pk_prd_idproduto primary key (idproduto),
	constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)	
);

select * from fornecedor

insert into produto (idproduto, idfornecedor, nome, valor) 
values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (3, 2, 'Placa mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (7, 1, 'Gabinete', 35);

select * from produto

create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,
	
	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)	
);

select * from cliente
select * from transportadora
select * from vendedor
update cliente set nome = 'Manoel' where idcliente = 1

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 11, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (4,'2008-04-05',1000,8,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (5,'2008-04-06',200,9,2,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (6,'2008-04-06',1985,10,1,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (7,'2008-04-06',800,3,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (8,'2008-04-06',175,3,null,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (9,'2008-04-07',1300,12,null,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (10,'2008-04-10',200,6,1,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (11,'2008-04-15',300,15,2,1);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (12,'2008-04-20',300,15,2,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (13,'2008-04-20',350,9,1 ,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (14,'2008-04-23',300,2,1,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (15,'2008-04-25',200,11,null,5);

select * from pedido

create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,
	
	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

select * from produto
select * from pedido_produto

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(2, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3,4,2,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,1,2,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,7,1,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8,7,5,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,6,1,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14,6,3,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15,3,1,200);

-- Exercícios:
-- 1. Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedor order by nome asc

--2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
select nome, valor from produto where valor > 200 order by valor

--3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor,  valor + (valor * 10) / 100 as Reajuste from produto order by nome
--4. Os municípios do Rio Grande do Sul.
select * from uf
select * from municipio where iduf = 5

--5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select * from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor

--6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select * from pedido where valor between 100 and 500

--7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select * from pedido where valor not between 100 and 500

--8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
select * from vendedor
select * from pedido where idvendedor = 1 order by valor desc

--9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select * from cliente
select * from pedido where idcliente = 1 order by valor

--10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
select * from pedido where idcliente = 15 and idvendedor = 1

--11. Os pedidos que foram transportados pela transportadora União Transportes.
select * from transportadora
select * from pedido where idtransportadora = 2

--12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select * from vendedor
select idpedido from pedido where idvendedor = 5 or idvendedor = 7
--13. Os clientes que moram em União da Vitória ou Porto União.
select * from cliente
select * from municipio
select * from cliente where idmunicipio = 1 or idmunicipio = 9
--14. Os clientes que não moram em União da Vitória e nem em Porto União.
select * from cliente where idmunicipio <> 1 and idmunicipio <> 9
--15. Os clientes que não informaram o logradouro.
select * from cliente where logradouro is null
--16. Os clientes que moram em avenidas.
select * from cliente where logradouro like 'Av%'
--17. Os vendedores que o nome começa com a letra S.
select * from vendedor where nome like 'S%'
--18. Os vendedores que o nome termina com a letra A.
select * from vendedor where nome like '%a'
--19. Os vendedores que o nome não começa com a letra A.
select * from vendedor where nome not like 'A%'
--20. Os municípios que começam com a letra P e são de Santa Catarina.
select * from municipio where nome like 'P%' and iduf = 1
--21. As transportadoras que informaram o endereço.
select * from transportadora where logradouro is not null 
--22. Os itens do pedido 01.
select * from pedido_produto where idpedido = 1
--23. Os itens do pedido 06 ou do pedido 10.
select * from pedido_produto where idpedido = 6 or idpedido = 10

-- Funções agregadas

select avg(valor) from pedido

select count(*) from municipio

select count(logradouro) from transportadora
select count(idtransportadora) from transportadora

select * from municipio
select count(idmunicipio) from municipio where iduf = 2

select max(valor) from pedido, select min(valor) from pedido;

select min(valor) from pedido

select sum(valor) from pedido

select idcliente, sum(valor) from pedido group by idcliente order by idcliente

select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500 order by sum(valor)

-- Exercícios Funções Agregadas
-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200

-- 2. Os vendedores que venderam mais que R$ 1500,00.
select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500

--3. O somatório das vendas de cada vendedor.
select * from pedido
select idvendedor, sum(valor) from pedido group by idvendedor order by idvendedor

--4. A quantidade de municípios.
select count(*) from municipio

--5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
select count(*) from municipio where iduf = 1 or iduf = 2

--6. A quantidade de municípios por estado.
select iduf, count(municipio) from municipio group by iduf

--7. A quantidade de clientes que informaram o logradouro.
select * from cliente where logradouro is not null

--8. A quantidade de clientes por município.
select idmunicipio, count(nome) from cliente group by idmunicipio

--9. A quantidade de fornecedores.
select count(idfornecedor) from fornecedor

--10. A quantidade de produtos por fornecedor.
select idfornecedor, count(produto) from produto group by idfornecedor order by idfornecedor

--11. A média de preços dos produtos do fornecedor Cap. Computadores.
select avg(valor) from produto where idfornecedor = 1

--12. O somatório dos preços de todos os produtos.
select sum(valor) from produto

--13. O nome do produto e o preço somente do produto mais caro.
select nome, valor from produto order by valor desc limit 1

--14. O nome do produto e o preço somente do produto mais barato.
select nome, valor from produto order by valor limit 1

--15. A média de preço de todos os produtos.
select avg(valor) from produto

--16. A quantidade de transportadoras.
select count(idtransportadora) from transportadora

--17. A média do valor de todos os pedidos.
select avg(valor) from pedido

--18. O somatório do valor do pedido agrupado por cliente.
select idcliente, sum(valor) from pedido group by idcliente 

--19. O somatório do valor do pedido agrupado por vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor 

--20. O somatório do valor do pedido agrupado por transportadora.
select idtransportadora, sum(valor) from pedido group by idtransportadora

--21. O somatório do valor do pedido agrupado pela data.
select * from pedido
select data_pedido, sum(valor) from pedido group by data_pedido

--22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
select idcliente, idvendedor, idtransportadora, sum (valor) from pedido group by idcliente, idvendedor, idtransportadora

--23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200

--24. A média do valor do pedido do vendedor André.
select * from pedido
select avg(valor) from pedido where idvendedor = 1

--25. A média do valor do pedido da cliente Jéssica.
select avg(valor) from pedido where idcliente = 15

--26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
select count(idpedido) from pedido where idtransportadora = 1

--27. A quantidade de pedidos agrupados por vendedor.
select * from pedido
select idvendedor, count(idpedido) from pedido group by idvendedor

--28. A quantidade de pedidos agrupados por cliente.
select idcliente, count(idpedido) from pedido group by idcliente

--29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
select count(idpedido) from pedido where data_pedido between '2008-04-15' and '2008-04-15'

--30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
select count(idpedido) from pedido where valor > 1000

--31. A quantidade de microcomputadores vendida.
select sum(quantidade) from pedido_produto where idproduto = 1

--32. A quantidade de produtos vendida agrupado por produto.
select idproduto, sum(quantidade) from pedido_produto group by idproduto

--33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
select idpedido, sum(valor_unitario) from pedido_produto group by idpedido

--34. A quantidade de produtos agrupados por pedido.
select idproduto, sum(quantidade) from pedido_produto group by idproduto 

--35. O somatório do valor total de todos os produtos do pedido.
select sum(valor_unitario) from pedido_produto

--36. A média dos produtos do pedido 6.
select avg(idproduto) from pedido_produto where idpedido = 6 

--37. O valor do maior produto do pedido.
select valor_unitario from pedido_produto order by valor_unitario desc limit 1
select max(valor_unitario) from pedido_produto

--38. O valor do menor produto do pedido.
select valor_unitario from pedido_produto order by valor_unitario asc limit 1
select min(valor_unitario) from pedido_produto

--39. O somatório da quantidade de produtos por pedido.
select idpedido, sum(quantidade) from pedido_produto group by idpedido

--40. O somatório da quantidade de todos os produtos do pedido.
select sum(valor_unitario) from pedido_produto

--Relacionamento com JOIN
select 
	cln.nome as cliente,
	prf.nome as profissao
from 
	cliente as cln
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao
--------------------------------------------------------------
select 
	cln.nome as cliente,
	prf.nome as profissao
from 
	cliente as cln
inner join
	profissao as prf on cln.idprofissao = prf.idprofissao
--------------------------------------------------------------	
select 
	cln.nome as cliente,
	prf.nome as profissao
from 
	cliente as cln
right outer join
	profissao as prf on cln.idprofissao = prf.idprofissao  
	
-- Exercício - Joins
--1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
select
	cln.nome as cliente,
	prf.nome as profissão,
	ncn.nome as nacionalidade,
	cln.logradouro,
	cln.numero,
	cmp.nome as complemento,
	bai.nome as bairro,
	mun.nome as municipio,
	uf.sigla as unididade_federação
from
	cliente as cln
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao
left outer join
	nacionalidade as ncn on cln.idnacionalidade = ncn.idnacionalidade
left outer join
	complemento as cmp on cln.idcomplemento = cmp.idcomplemento
left outer join
	bairro as bai on cln.idbairro = bai.idbairro
left outer join
	municipio as mun on cln.idmunicipio = mun.idmunicipio
left outer join
	uf on mun.iduf = uf.iduf

--2. O nome do produto, o valor e o nome do fornecedor.
select * from produto
select 
	ptd.nome as produto,
	ptd.valor,
	fcd.nome as fornecedor
from 
	produto ptd
left outer join
	fornecedor fcd on ptd.idfornecedor = fcd.idfornecedor

--3. O nome da transportadora e o município.
select * from transportadora
select * from municipio
select 
	trn.nome as transportadora,
	mun.nome as municipio
from 
	transportadora trn
inner join
	municipio mun on mun.idmunicipio = trn.idmunicipio

--4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
select 
	ped.data_pedido,
	ped.valor,
	cln.nome as cliente,
	trs.nome as transportadora,
	ven.nome as vendedor
from 
	pedido ped
inner join
	cliente cln on cln.idcliente = ped.idcliente
left outer join
	transportadora trs on trs.idtransportadora = ped.idtransportadora
inner join
	vendedor ven on ven.idvendedor = ped.idvendedor
	
--5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
select * from pedido_produto
select * from pedido
select * from produto
select 
	pdd.nome as nome,
	ptd.quantidade,
	ptd.valor_unitario as valor
from
	pedido_produto ptd
left outer join
	produto as pdd on pdd.idproduto = ptd.idproduto
	
--6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select * from pedido_produto
select * from pedido
select * from produto
select
	cln.nome,
	ptd.data_pedido
from 
	pedido ptd
inner join
	cliente cln on cln.idcliente = ptd.idcliente
order by cln.nome

--7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
select
	cln.nome,
	ptd.data_pedido
from 
	pedido ptd
right outer join
	cliente cln on cln.idcliente = ptd.idcliente
order by nome

--8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select * from municipio
select * from cliente
select 
	mun.nome as Municipio,
	count(cln.nome) as Cliente
	
from
	cliente cln
inner join
	municipio as mun on mun.idmunicipio = cln.idmunicipio
group by mun.nome
	
--9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
select * from fornecedor
select * from produto
select
	fnd.nome as fornecedor,
	count(pdd.nome) as quantidade_produtos
from
	produto pdd
inner join
	fornecedor fnd on pdd.idfornecedor = fnd.idfornecedor
group by fnd.nome
--10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select
	cln.nome as cliente,
	sum(ptd.valor) as total
from 
	pedido ptd
inner join
	cliente cln on cln.idcliente = ptd.idcliente
group by cln.nome

--11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select * from pedido
select 
	ven.nome as vendedor,
	sum(pdd.valor) as total
from
	pedido pdd
left outer join
	vendedor ven on ven.idvendedor = pdd.idvendedor
group by ven.nome

--12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select * from pedido
select 
	trs.nome as transportadora,
	sum(pdd.valor) as total
from
	pedido pdd
inner join
	transportadora trs on trs.idtransportadora = pdd.idtransportadora
group by trs.nome

--13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select * from pedido
select
	cln.nome as nome,
	count(pdd.idpedido) as quantidade
from
	pedido pdd
inner join
	cliente cln on cln.idcliente = pdd.idcliente
group by cln.nome

--14.O nome do produto e a quantidade vendida (agrupado por produto).
select * from pedido
select * from pedido_produto
select
	pdd.nome as produto,
	sum(ptd.quantidade) as total
from 
	pedido_produto ptd
inner join
	produto pdd on pdd.idproduto = ptd.idproduto
group by pdd.nome

--15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select * from pedido_produto
select * from pedido
select
	pdd.data_pedido as data_do_pedido,
	sum (pdp.valor_unitario) as total
from
	pedido_produto pdp
left outer join
	pedido pdd on pdp.idpedido = pdd.idpedido
group by pdd.data_pedido
	
--16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select * from pedido_produto
select * from pedido
select
	pdd.data_pedido as data_do_pedido,
	sum (pdp.quantidade) as quantidade
from
	pedido_produto pdp
left outer join
	pedido pdd on pdp.idpedido = pdd.idpedido
group by pdd.data_pedido

-- Comando adicionais
select
	data_pedido,
	extract(day from data_pedido),
	extract(month from data_pedidoo),
	extract(year from data_pedido)
from 
	pedido

select nome, substring(nome from 1 for 5), substring(nome, 2) from cliente

select nome, upper(nome) from cliente

select nome, cpf, coalesce(cpf, 'Não informado') from cliente

select 
	case sigla 
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
	else 'Outros'
	end as uf
from 
	uf

-- Exercícios dos comandos adicionais
--1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select * from cliente
select 
	nome,
	coalesce(extract(month from data_nascimento), 0)
from 
	cliente 
--2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select 
	nome,
	case extract(month from data_nascimento)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	else 
		'Não informado'
	end as mes
from
	cliente

--3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select 
	nome, 
	coalesce (extract(year from data_nascimento), 0)
from 
	cliente
	
--4. O caractere 5 até o caractere 10 de todos os municípios.
select substring(nome from 1 for 5) as municipios from municipio
	
--5. O nome de todos os municípios em letras maiúsculas.
select upper(nome) from municipio

--6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
select * from cliente
select
	nome,
	case genero
		when 'M' then 'Masculino'
	else 'Feminino'
	end as generos
from 
	cliente

--7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
select * from produto
select
	nome,
	case 
		when valor >= 500 then 'Acima ou igual a 500'
	
	else 
		'Abaixo de 500'
	end as faixa_de_preco
from
	produto
	
-- Subconsunltas
-- Valores de todos os pedidos
select 
	data_pedido,
	valor
from 
	pedido
where
	valor > (select avg(valor) from pedido)
-- Exemplo com count
select
	pdd.data_pedido,
	pdd.valor,
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido)
from
	pedido pdd

-- Exemplo com update
select * from pedido

update pedido set valor = valor + ((valor * 5) / 100)
where valor > (select avg(valor) from pedido)

--Exercícios - subconsultas
--1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
select * from municipio
select 
	nome,
	idmunicipio
from 
	cliente
where
	idmunicipio = (select idmunicipio from cliente where nome = 'Manoel')
and 
	idcliente <> 1

--2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
select 
	data_pedido,
	valor
from 
	pedido
where 
	valor < (select avg(valor) from pedido)

--3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.]
select * from pedido_produto
select * from pedido
select 
	pdd.data_pedido,
	pdd.valor,
	cln.nome as cliente, 
	vnd.nome as vendedor,
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido)
from
	pedido pdd
inner join
	cliente cln on cln.idcliente = pdd.idcliente
inner join
	vendedor vnd on vnd.idvendedor = pdd.idvendedor
	where
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido) >= 2

--4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
select 
	nome,
	idmunicipio
from 
	cliente
where 
	idmunicipio = (select idmunicipio  from transportadora  where idtransportadora = 1) 
	
--5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.
select 
	nome,
	idmunicipio

from
	cliente
where
	idmunicipio in (select distinct (idmunicipio) from transportadora)

select distinct(idmunicipio) from cliente

--6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do
--valor total dos produtos daquele pedido seja maior que a média do valor total
--de todos os produtos de todos os pedidos.
update
	pedido
set
	valor = valor + ((valor * 5) / 100)

where
	(select sum(pdp.valor_unitario) from pedido_produto pdp where pdp.idpedido = pdd.idpedido)

select avg(valor_unitario) from pedido_produto

select 
	pdd.idpedido
	(select sum(valor_unitario) from pedido_produto pdp where pdp.idpedido = pdd.idpedido
from
	 pedido pdd
select avg(valor_unitario) from pedido_produto

--7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.
select * from pedido_produto 
select 
	 cln.nome,
	 (select count(idpedido) from pedido pdd where pdd.idcliente = cln.idcliente) as total

from
	cliente cln
	 
--8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.
select 
	 cln.nome as cliente,
	 count(pdd.idpedido) as total
from
	pedido pdd
left outer join
	 cliente cln on pdd.idcliente = cln.idcliente
group by
	cln.nome
	 
-- Views
drop view cliente_profissao
create view cliente_profissao as
select
	 cln.nome as cliente,
	 cln.cpf,
	 prf.nome as profissao
from
	 cliente cln
left outer join
	 profissao prf on cln.idprofissao = prf.idprofissao
	 
select * from cliente_profissao

-- Exercícios views
--1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.
drop view cliente_informacoes
create view cliente_informacoes as
select 
	 cln.nome,
	 prf.nome as profissao,
	 nac.nome as nacionalidade,
	 com.nome as complemento,
	 mun.nome as municipio,
	 bai.nome as bairro,
	 cln.cpf,
	 cln.rg,
	 cln.data_nascimento,
	 cln.logradouro,
	 cln.numero,
	 cln.observacoes,
	 uf.sigla as unidade_de_federacao,
	 case cln.genero
	 	when  'M' then 'Masculino'
	 	when 'F' then 'Feminino'
	 end as genero
from
	 cliente cln
left outer join
	municipio mun on mun.idmunicipio = cln.idmunicipio
left outer join
	nacionalidade nac on nac.idnacionalidade = cln.idnacionalidade
left outer join
	profissao prf on prf.idprofissao = cln.idprofissao
left outer join
	complemento com on com.idcomplemento = cln.idcomplemento
left outer join
	bairro bai on bai.idbairro = cln.idbairro
left outer join
	uf on mun.iduf = uf.iduf
select * from cliente_informacoes
--2. O nome do município e o nome e a sigla da unidade da federação.
create view estados_municipio as	 
select 
	 mun.nome,
	 uf.nome,
	 uf.sigla
from
	 municipio mun
inner join
	 uf on mun.iduf = uf.iduf
	 
--3. O nome do produto, o valor e o nome do fornecedor dos produtos.
create view produto_fornecedor as
select
	 pdd.nome as produto,
	 pdd.valor,
	 fnd.nome as fornecedor
from 
	produto pdd
inner join
	 fornecedor fnd on fnd.idfornecedor = pdd.idfornecedor
	 
--4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
create view transportadora_regiao as
select
	 trn.nome as transportadora,
	 trn.logradouro,
	 trn.numero,
	 uf.nome as unidade_federacao,
	 uf.sigla
from	
	 transportadora trn
left outer join
	 municipio mnc on trn.idmunicipio = mnc.idmunicipio
left outer join
	 uf on mnc.iduf = uf.iduf
	 
--5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
drop view pedido_informacoes
	 
create view pedido_informacoes as 
select
	 pdd.data_pedido,
	 pdd.valor,
	 trn.nome as transportadora,
	 cln.nome as cliente,
	 vnd.nome as vendedor
from
	 pedido pdd
left outer join
	 cliente cln on pdd.idcliente = cln.idcliente
left outer join
	 transportadora trn on pdd.idtransportadora = trn.idtransportadora
left outer join
	 vendedor vnd on pdd.idvendedor = vnd.idvendedor

--6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
create view produto_pedido as
select 
	 prd.nome as produto,
	 pdp.quantidade,
	 pdp.valor_unitario
from
	 pedido_produto pdp
left outer join
	 produto prd on pdp.idproduto = prd.idproduto

--Exercícios sequences – auto incremento
--1. Criar sequências para todas as outras tabelas da base de dados
--a. Cliente
select * from cliente
select max(idcliente) + 1 from cliente
create sequence cliente_id_seq minvalue 17
alter table cliente alter idcliente set default nextval('cliente_id_seq')
alter sequence cliente_id_seq owned by cliente.idcliente
insert into cliente (nome) values ('teste sequenceia')
select * from cliente
--b. Complemento
select * from complemento
select max(idcomplemento) + 1 from complemento
create sequence complemento_id_seq minvalue 3
alter table complemento alter idcomplemento set default nextval('complemento_id_seq')
alter sequence complemento_id_seq owned by complemento.idcomplemento
insert into complemento (nome) values ('teste sequenceia')
select * from complemento
--c. Fornecedor
select * from fornecedor
select max(idfornecedor) + 1 from fornecedor
create sequence fornecedor_id_seq minvalue 4
alter table fornecedor alter idfornecedor set default nextval('fornecedor_id_seq')
alter sequence fornecedor_id_seq owned by fornecedor.idfornecedor
	 
--d. Município
select * from municipio
select max(idmunicipio) + 1 from municipio
create sequence municipio_id_seq minvalue 10
alter table municipio alter idmunicipio set default nextval('municipio_id_seq')
alter sequence municipio_id_seq owned by municipio.idmunicipio
	 
--e. Nacionalidade
select * from nacionalidade
select max(idnacionalidade) + 1 from nacionalidade
create sequence nacionalidade_id_seq minvalue 5
alter table nacionalidade alter idnacionalidade set default nextval('nacionalidade_id_seq')
alter sequence nacionalidade_id_seq owned by nacionalidade.idnacionalidade
	 
--f. Pedido
select * from pedido
select max(idpedido) + 1 from pedido	 
create sequence pedido_id_seq minvalue 16
alter table pedido alter idpedido set default nextval('pedido_id_seq')
alter sequence pedido_id_seq owned by pedido.idpedido
	 
--g. Pedido produto (verificar se é necessário)
select * from pedido_produto
--h. Profissão
select * from profissao
select max(idprofissao) + 1	from profissao 
create sequence profissao_id_seq minvalue 6
alter table profissao alter idprofissao set default nextval('profissao_id_seq')	 
alter sequence profissao_id_seq owned by profissao.idprofissao
	 
--i. Transportadora
select * from transportadora
select max(idtransportadora) + 1 from transportadora
create sequence transportadora_id_seq minvalue 3
alter table transportadora alter idtransportadora set default nextval('transportadora_id_seq')
alter sequence transportadora_id_seq owned by transportadora.idtransportadora
	 
--j. UF
select * from uf
select max(iduf) + 1 from uf
create sequence uf_id_seq minvalue 7
alter table uf alter iduf set default nextval('uf_id_seq')
alter sequence uf_id_seq owned by uf.iduf
	 
--k. Vendedor
select * from vendedor
select max(idvendedor) + 1 from vendedor
create sequence vendedor_id_seq minvalue 9
alter table vendedor alter idvendedor set default nextval('vendedor_id_seq')
alter sequence vendedor_id_seq owned by vendedor.idvendedor

--l. Produto
select * from produto
select max(idproduto) + 1 from produto
create sequence produto_id_seq minvalue 8
alter table produto alter idproduto set default nextval('produto_id_seq')
alter sequence produto_id_seq owned by produto.idproduto

--m. Bairro
select * from bairro
select max(idbairro) + 1 from bairro	 
create sequence bairro_id_seq minvalue 5
alter table bairro alter idbairro set default nextval('bairro_id_seq')
alter sequence bairro_id_seq owned by bairro.idbairro

-- Campos default
alter table pedido alter column data_pedido set default current_date;
alter table pedido alter column valor set default 0;

--Exercícios valores default


--1. Adicione valores default na tabela de produtos do pedido
--a. Quantidade com o valor 1
select * from pedido_produto
alter table pedido_produto alter column quantidade set default 1;

--b. Valor unitário com o valor 0
alter table pedido_produto alter column valor_unitario set default 0;

insert into pedido_produto (idpedido, idproduto) values (1, 3);

--2. Adicione valor default na tabela de produtos
--a. Valor com o valor 0
alter table produto alter column valor set default 0;
insert into produto (nome, idfornecedor) values ('Teste default 1', 1)
select * from produto

-- Índices
create index idx_cln_nome on cliente(nome);

--Exercícios índices

--1. Adicione índices nas seguintes tabelas e campos
	--a. Pedido – data do pedido
	--b. Produto – nome
	select * from pedido
	create index idx_pdd_data_pedido on pedido(data_pedido);
	select * from produto
	create index idx_prd_nome on produto(nome);
	 
-- Funções
select valor from pedido;
select valor, concat('R$', round(cast(valor as numeric),2))from pedido

create function formata_moeda(valor float) returns varchar(20) language plpgsql as
$$
begin 
	 return concat('R$', round(cast(valor as numeric ), 2));
end;
$$;

select valor, formata_moeda(valor) from pedido
	
-- 	Exercícios funções
--1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido
select * from pedido
drop function get_valor_pedido
create or replace function get_valor_pedido(idpdd integer) returns varchar(20) language plpgsql as 
$$
begin 
	 return (select formata_moeda(pdd.valor) from pedido pdd where pdd.idpedido = idpdd);
end;
$$;
	 
select get_valor_pedido(idpedido) from pedido
	 
--2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor
select idpedido where valor = (select max(valor) from pedido)
create or replace function get_maior_pedido() returns integer language plpgsql as
$$
begin
	 return (select idpedido from pedido where valor = (select max (valor) from pedido));
end;
$$;
select get_maior_pedido()

-- Stored procedures
create procedure insere_bairro(nome_bairro varchar(30)) language sql as
$$
	 insert into bairro(nome) values (nome_bairro);
$$;
	 
call insere_bairro('Marechal Rondon')
select * from bairro
	 
--Exercícios procedures
--1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento, e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro
select * from pedido
create procedure ajustar_valor(idpdd integer, reajuste numeric) language sql as
$$
	 update pedido set valor = reajuste where idpedido = idpdd;  
$$;
	 
call ajustar_valor(1, 300)
--2. Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de dados somente o produto com o ID correspondente
select * from produto
create procedure deletar_produto(produtoid integer) language sql as
$$
	 delete from produto where idproduto = produtoid; 
$$;
call deletar_produto(8)
	 
-- Triggers
	 
create table bairro_auditoria(
	idbairro integer not null,
	data_criacao timestamp not null
)

create or replace function bairro_log() returns trigger language plpgsql as
$$
begin
	 insert into bairro_auditoria(idbairro, data_criacao) values (new.idbairro, current_timestamp);
	 return new;
end;
$$;
	 
create or replace trigger log_bairro_trigger after insert on bairro for each row execute procedure bairro_log();

call insere_bairro('Teste 1');
call insere_bairro('Teste 2');
call insere_bairro('Teste 3');

select * from bairro
select * from bairro_auditoria	 

--Exercícios triggers
--1. Crie uma tabela chamada PEDIDOS_APAGADOS
drop table pedidos_apagados
create table pedidos_apagados(
	idpedido integer,
	idcliente integer,
	idtransportadora integer,
	idvendedor integer,
	data_apagado date,
	valor numeric
);
--2. Faça uma trigger que quando um pedido for apagado, todos os seus dados devem ser copiados para a tabela PEDIDOS_APAGADOS
drop function pedido_log()
create or replace function pedido_log() returns trigger language plpgsql as
$$
begin
	 insert into pedidos_apagados(idpedido, idcliente, idtransportadora, idvendedor, data_apagado, valor) 
	 values (old.idpedido,old.idcliente, old.idtransportadora, old.idvendedor, current_timestamp, old.valor);
	 return old;
end;
$$;

drop trigger log_pedidos_apagados_trigger on pedido;
create or replace trigger log_pedidos_apagados_trigger before delete on pedido for each row execute procedure pedido_log();
select * from pedido
select idpedido from pedido where idpedido not in( select idpedido from pedido_produto)
delete from pedido where idpedido in (select idpedido from pedido where idpedido not in( select idpedido from pedido_produto))
select * from pedidos_apagados
	 
-- Domínios
-- Ids
create domain idcurto as smallint;
create domain idmedio as integer;
create domain idlongo as bigint;
	 
-- Caracteres
create domain sigla as char (3);
create domain codigo as varchar (10);
create domain nome_curto as varchar(15);
create domain nome_medio as varchar(50);
create domain nome_longo as varchar(70);
create domain documento as varchar(15);
create domain tipo as char(1);
create domain texto as text;

-- Data e hora
create domain data as date;
create domain hora as time;
create domain data_hora timestamp;

-- Numéricos
create domain moeda as numeric(10, 2);
create domain float_curto as numeric(6,2);
create domain float_medio as numeric(10, 2);
create domain float_longo as numeric(15,2);
create domain quantidade as smallint;
	
alter table bairro alter column nome type nome_medio;

create view cliente_informacoes as
select 
	 cln.nome,
	 prf.nome as profissao,
	 nac.nome as nacionalidade,
	 com.nome as complemento,
	 mun.nome as municipio,
	 bai.nome as bairro,
	 cln.cpf,
	 cln.rg,
	 cln.data_nascimento,
	 cln.logradouro,
	 cln.numero,
	 cln.observacoes,
	 uf.sigla as unidade_de_federacao,
	 case cln.genero
	 	when  'M' then 'Masculino'
	 	when 'F' then 'Feminino'
	 end as genero
from
	 cliente cln
left outer join
	municipio mun on mun.idmunicipio = cln.idmunicipio
left outer join
	nacionalidade nac on nac.idnacionalidade = cln.idnacionalidade
left outer join
	profissao prf on prf.idprofissao = cln.idprofissao
left outer join
	complemento com on com.idcomplemento = cln.idcomplemento
left outer join
	bairro bai on bai.idbairro = cln.idbairro
left outer join
	uf on mun.iduf = uf.iduf
	 
select * from cliente_informacoes
	 
alter table bairro_auditoria alter column data_criacao type data_hora;

drop view cliente_profissao
drop view pedidos_informacoes
	 
alter table cliente alter column nome type nome_longo;
alter table cliente alter column cpf type documento;
alter table cliente alter column rg type documento;
alter table cliente alter column data_nascimento type data;
alter table cliente alter column genero type tipo;
alter table cliente alter column logradouro type nome_longo;
alter table cliente alter column numero type nome_curto;
alter table cliente alter column idprofissao type idmedio;
alter table cliente alter column idnacionalidade type idmedio;
alter table cliente alter column idbairro type idmedio;
alter table cliente alter column idmunicipio type idmedio;
alter table cliente alter column idcomplemento type idmedio;

alter table complemento alter column nome type nome_medio;

drop view produto_fornecedor
drop view municipio_estados
drop view transportadora_regiao

alter table fornecedor alter column nome type nome_medio;

alter table municipio alter column nome type nome_medio;
alter table municipio alter column iduf type idmedio;

alter table nacionalidade alter column nome type nome_medio;

alter table pedido alter column idpedido type bigint;
alter table pedido alter column idcliente type idmedio;
alter table pedido alter column idtransportadora type idmedio;
alter table pedido alter column idvendedor type idmedio;
alter table pedido alter column data_pedido type data;
alter table pedido alter column valor type moeda;

drop view produto_pedido

alter table pedido_produto alter column idpedido type idlongo;
alter table pedido_produto alter column idproduto type idmedio;
alter table pedido_produto alter column quantidade type quantidade;
alter table pedido_produto alter column valor_unitario type moeda;

alter table pedidos_apagados alter column idpedido type idlongo;
alter table pedidos_apagados alter column idcliente type idmedio;
alter table pedidos_apagados alter column idtransportadora type idmedio;
alter table pedidos_apagados alter column idvendedor type idmedio;
alter table pedidos_apagados alter column valor type moeda;

alter table produto alter column idfornecedor type idmedio;
alter table produto alter column nome type nome_medio;
alter table produto alter column valor type moeda;

alter table profissao alter column nome type nome_medio;

alter table transportadora alter column idmunicipio type idmedio;
alter table transportadora alter column nome type nome_medio;
alter table transportadora alter column logradouro type nome_longo;
alter table transportadora alter column numero type nome_curto;

alter table uf alter column nome type nome_medio;
alter table uf alter column sigla type sigla;

alter table vendedor alter column nome type nome_medio;

-- Usuários e permissões

create role gerente;
create role estagiario;

grant select, insert on bairro, cliente, complemento, fornecedor, municipio, nacionalidade, pedido, pedido_produto, transportadora, uf, vendedor to gerente with grant option;
grant select on cliente_informacoes, pedido_informacoes to estagiario;

create role maria login password '123' in role gerente;
create role pedro login password '321' in role estagiario;
	 
--Exercícios usuários e permissões

--1. Crie um novo papel chamado “atendente”
create role atendente;
	 
--2. Defina somente permissões para o novo papel poder selecionar e incluir novos pedidos (tabelas pedido e pedido_produto). O restante do acesso deve estar bloqueado
grant select, insert on pedido, pedido_produto to atendente
grant all on all sequences in schema public to atendente;
--3. Crie um novo usuário associado ao novo papel
create user gustavo with password '5442' in role atendente
--4. Realize testes para verificar se as permissões foram aplicadas corretamente
select * from pedido;
insert into pedido(idcliente, idtransportadora, idvendedor, data_pedido, valor)
values (1, 2, 4, '2008-04-01', 5000);

	 
-----------------------------------------------------------------------------------
-- Avaliação
create table editora(
	ideditora serial not null,
	nome varchar(50) not null,
	
	constraint pk_edt_ideditora primary key (ideditora),
	constraint un_edt_nome unique (nome)
);

insert into editora (nome) values
('Bookman'),
('Edgard Bushler'),
('Nova Terra'),
('Brasport');
select * from editora
	 
create table categoria(
	idcategoria serial not null,
	nome varchar(50) not null,
	
	constraint pk_ctg_idcategoria primary key (idcategoria),
	constraint un_ctg_nome unique (nome)
);

insert into categoria (nome) values
('Banco de Dados'),
('HTML'),
('Java'),
('PHP')
select * from categoria

create table autor(
	idautor serial not null,
	nome varchar(50) not null,
	
	constraint pk_atr_idautor primary key (idautor),
	constraint un_atr_nome unique (nome)
);

insert into autor(nome) values
('Waldemar Setzer'),
('Flávio Soares'),
('Jhon Watson'),
('Rui Rossi dos Santos'),
('Antonio Pereira de Resende'),
('Cladiney Calixto Lima'),
('Ian Graham'),
('Frabrício Xavier'),
('Pablo Dalloglio')
select * from autor
	 
create table livro(
	idlivro serial not null,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(50) not null,
	
	constraint pk_lvr_idlivro primary key (idlivro),
	constraint fk_lvr_ideditora foreign key (ideditora) references editora(ideditora),
	constraint fk_lvr_idcategoria foreign key (idcategoria) references categoria(idcategoria),
	constraint un_lvr_nome unique (nome)
);

alter table livro alter column nome type varchar(70)
	 
insert into livro(ideditora, idcategoria, nome) values
(2, 1, 'Banco de Dados - 1 Edição'),
(1, 1, 'Oracle Database 11G Administração'),
(3, 3, 'Programação de Computadores em Java'),
(4, 3, 'Programação Orientada a Aspectos em Java'),
(4, 2, 'HTML5 - Guia Prático'),
(3, 2, 'XHTML: Guia de Referência para Desenvolvimento Web'),
(1, 4, 'PHP para Desenvolvimento Profissional'),
(2, 4, 'PHP com Programação Orientada a Objetos')
select * from livro
	 
create table livro_autor(
	idlivro integer not null,
	idautor integer not null,
	
	constraint pk_ltr_idlivroautor primary key (idlivro, idautor),
	constraint fk_ltr_idlivro foreign key (idlivro) references livro(idlivro),
	constraint fk_ltr_idautor foreign key (idautor) references autor(idautor)
);
	
insert into livro_autor (idlivro, idautor) values (6, 1);
insert into livro_autor (idlivro, idautor) values (6, 2);
insert into livro_autor (idlivro, idautor) values (7, 3);
insert into livro_autor (idlivro, idautor) values (8, 4);
insert into livro_autor (idlivro, idautor) values (9, 5);
insert into livro_autor (idlivro, idautor) values (9, 6);
insert into livro_autor (idlivro, idautor) values (10, 7);
insert into livro_autor (idlivro, idautor) values (11, 8);
insert into livro_autor (idlivro, idautor) values (12, 9);
insert into livro_autor (idlivro, idautor) values (13, 10);
	 
select * from livro_autor
	 
create table aluno(
	idaluno serial not null,
	nome varchar(50) not null,
	
	constraint pk_aln_idaluno primary key (idaluno),
	constraint un_aln_nome unique (nome)
);
	 
insert into aluno (nome) values 
('Mario'),
('João'),
('Paulo'),
('Pedro'),
('Maria')
select * from aluno

drop table emprestimo
create table emprestimo(
	idemprestimo serial not null,
	idaluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor float default 0,
	devolvido char(1),

	constraint pk_emp_idemprestimo primary key (idemprestimo),
	constraint fk_emp_idaluno foreign key (idaluno) references aluno(idaluno)
);

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-05-02', '2012-05-12', 10, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-04-23', '2012-05-03', 5, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (2, '2012-05-10', '2012-05-20', 12, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (3, '2012-05-10', '2012-05-20', 8, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-05', '2012-05-15', 15, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-07', '2012-05-17', 20, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-08', '2012-05-18', 5, 'S');
	 
create table emprestimo_livro (
	idemprestimo integer not null,
	idlivro integer not null,
	
	constraint pk_elv_idemprestimolivro primary key (idemprestimo, idlivro),
	constraint fk_elv_idemprestimo foreign key (idemprestimo) references emprestimo (idemprestimo),
	constraint fk_elv_idlivro foreign key (idlivro) references livro (idlivro)
);
	 
insert into emprestimo_livro (idemprestimo, idlivro) values (1, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 8);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 7);

create index idx_emp_data_emprestimo on emprestimo (data_emprestimo);
create index idx_emp_data_devolucao on emprestimo (data_devolucao);
	 
-- CONSULTAS SIMPLES

-- O nome dos autores em ordem alfabética.
select nome from autor order by nome

-- O nome dos alunos que começam com a letra P.
select nome from aluno where nome like 'P%'

-- O nome dos livros da categoria Banco de Dados ou Java.
select * from categoria
select nome from livro where idcategoria = 1 or idcategoria = 3

-- O nome dos livros da editora Bookman.
select * from editora
select nome from livro where ideditora = 1

-- Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
select * from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10'

-- Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
select * from emprestimo where data_emprestimo not between '2012-05-05' and '2012-05-10'

-- Os empréstimos que os livros já foram devolvidos.
select * from emprestimo where devolvido = 'S'

-- CONSULTAS COM AGRUPAMENTO SIMPLES

-- A quantidade de livros.
select count(idlivro) from livro

-- O somatório do valor dos empréstimos.
select sum(valor) from emprestimo

-- A média do valor dos empréstimos.
select avg(valor) from emprestimo

-- O maior valor dos empréstimos.
select max(valor) from emprestimo

-- O menor valor dos empréstimos.
select min(valor) from emprestimo

-- O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
select sum(valor) from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10'

-- A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.
select count(idemprestimo) from emprestimo where data_emprestimo between '2012-05-01' and '2012-05-05'

-- CONSULTAS COM JOIN

-- O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
create view dados_livros as
select
	lvr.nome as livro,
	ctg.nome as categoria,
	edt.nome as editora
from
	livro lvr
left outer join
	categoria ctg on lvr.idcategoria = ctg.idcategoria
left outer join
	editora edt on lvr.ideditora = edt.ideditora
	
select * from dados_livros	 

-- O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.
create view livro_autor_view as
select
	lvr.nome as livro,
	atr.nome as autor
from
	livro_autor lva
left outer join 
	livro lvr on lva.idlivro = lvr.idlivro
left outer join
	autor atr on lva.idautor = atr.idautor

select * from livro_autor_view

-- O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
select * from autor
select * from livro_autor where idautor = 8

select
	lvr.nome as livro	
from
	livro_autor ltr
left outer join
	livro lvr on ltr.idlivro = lvr.idlivro
where
	ltr.idautor = 8
	 
-- O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
select
	aln.nome as aluno,
	emp.data_emprestimo,
	emp.data_devolucao
from
	emprestimo emp
left outer join
	aluno aln on emp.idaluno = aln.idaluno
	 
-- O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).
select
	distinct(lvr.nome) as livro
from
	emprestimo_livro elv
left outer join
	livro lvr on elv.idlivro = lvr.idlivro

-- CONSULTAS COM AGRUPAMENTO + JOIN

-- O nome da editora e a quantidade de livros de cada editora (LIVRO).
select
	edt.nome as editora,
	count(lvr.idlivro) as quantidade
from
	livro lvr
left outer join
	editora edt on lvr.ideditora = edt.ideditora
group by
	edt.nome

-- O nome da categoria e a quantidade de livros de cada categoria (LIVRO).
select
	ctg.nome as categoria,
	count(lvr.idlivro) as quantidade
from
	livro lvr
left outer join
	categoria ctg on lvr.idcategoria = ctg.idcategoria
group by
	ctg.nome

-- O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).
select
	atr.nome as autor,
	count(lva.idlivro) as quantidade
from
	livro_autor lva
left outer join
	autor atr on lva.idautor = atr.idautor
group by
	atr.nome

-- O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).
select
	aln.nome as aluno,
	count(emp.idemprestimo) as quantidade
from
	emprestimo emp
left outer join
	aluno aln on emp.idaluno = aln.idaluno
group by
	aln.nome
	 
-- O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).
select
	aln.nome as aluno,
	sum(emp.valor) as valor
from
	emprestimo emp
left outer join
	aluno aln on emp.idaluno = aln.idaluno
group by
	aln.nome
	 
-- O nome do aluno e o somatório do valor total dos empréstimos de 
-- cada aluno somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).
select
	aln.nome as aluno,
	sum(emp.valor) as valor
from
	emprestimo emp
left outer join
	aluno aln on emp.idaluno = aln.idaluno
group by
	aln.nome
having
	sum(emp.valor) > 12

-- CONSULTAS COMANDOS DIVERSOS

-- O nome de todos os alunos em ordem decrescente e em letra maiúscula.
select upper(nome) from aluno order by nome desc

-- Os empréstimos que foram feitos no mês 04 de 2012.
select * from emprestimo
where extract(year from data_emprestimo) = 2012 and extract(month from data_emprestimo) = 4

-- Todos os campos do empréstimo. Caso já tenha sido devolvido, mostrar a mensagem “Devolução completa”, senão “Em atraso”.
select
	*,
	case devolvido
		when 'S' then 'Devolução completa'
		when 'N' then 'Em atraso'
	end as status
from
	emprestimo

-- Somente o caractere 5 até o caractere 10 do nome dos autores.
select substring(nome from 5 for 10) from autor

-- O valor do empréstimo e somente o mês da data de empréstimo. 
-- Escreva “Janeiro”, “Fevereiro”, etc
select
	valor,
	data_emprestimo,
	case extract(month from data_emprestimo)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
	end as mes
from
	emprestimo

-- SUBCONSULTAS

-- A data do empréstimo e o valor dos empréstimos que o valor seja maior que 
-- a média de todos os empréstimos.
select
	data_emprestimo,
	valor
from
	emprestimo
where
	valor > (select avg(valor) from emprestimo)

-- A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.
select
	emp.data_emprestimo,
	emp.valor,
	(select count(elv.idemprestimo) from emprestimo_livro elv where elv.idemprestimo = emp.idemprestimo)
from
	emprestimo emp
where
	(select 
	 	count(elv.idemprestimo) 
	 from 
	 	emprestimo_livro elv 
	  where elv.idemprestimo = emp.idemprestimo) > 1

select * from emprestimo_livro

-- A data do empréstimo e o valor dos empréstimos que o valor seja menor
-- que a soma de todos os empréstimos.
select
	data_emprestimo,
	valor
from
	emprestimo
where
	valor < (select sum(valor) from emprestimo)
