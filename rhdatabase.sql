-- 1) Crie uma base de dados com o nome rhDatabase
-- 2) Dentro da base de dados rhDatabase inclua uma tabela com o nome funcionarios e que possua as colunas id, nome
create table funcionarios(
	idfuncionario serial not null,
	nome varchar(50) not null,
	
	constraint pk_func_idfuncionario  primary key (idfuncionario) 
);

-- 3)Inclua a coluna idade com o tipo varchar(100)
alter table funcionarios add idade varchar(100);

--4) inclua a coluna setor com o tipo int
alter table funcionarios add setor int;

--5) altere a coluna setor para o tipo varchar(100)
alter table funcionarios drop column setor;
alter table funcionarios add column setor varchar(100);

--6) crie a coluna dependentes com o tipo int
alter table funcionarios add column dependentes int;

--7) remova a coluna dependentes
alter table funcionarios drop column dependentes;
--8) crie a Tabela Cargos com os campos id int, nome varchar(10), descricao varchar(1000)
CREATE TABLE cargos(
	idcargos int,
	nome varchar(10),
	descricao varchar(1000)
);
--9) altere a coluna nome para varchar(255)
ALTER TABLE cargos DROP COLUMN nome;
ALTER TABLE cargos ADD COLUMN nome varchar(255);
--10) Crie a tabela Setores com os campos id int e nome varchar(100)
CREATE TABLE setores(
	id int,
	nome varchar(100)
);