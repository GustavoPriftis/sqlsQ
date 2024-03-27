--58, Crie uma base de dados com o nome db_teste1
create database db_teste1;
/*
59, Crie uma tabela com o nome Contatos dentro da base db_teste1 com as seguintes colunas:
codigo int not null identity(1,1) primary key,
nome varchar(100) not null,
email varchar(120)
*/
create table contatos(
	codigo int not null generated always as identity, 
	nome varchar(100) not null,
	email varchar(120),
	
	constraint pk_con_codigo primary key (codigo)
);
--60, Qual o comando utilizado para saber quantas tabelas existem em uma base de dados?
SELECT * FROM information_schema.tables WHERE table_type = 'BASE TABLE';

--61, Qual o comando utilizado para ver as informações das definições nas colunas da tabela Contatos?
SELECT 
  column_name, 
  data_type, 
  character_maximum_length, 
  is_nullable, 
  column_default 
FROM 
  information_schema.columns 
WHERE 
  table_name = 'contatos';
 
--62, Insira os dados abaixo na tabela Contatos
insert into contatos(nome, email) values ('Maria', 'maria@teste.com');
insert into contatos(nome, email) values ('Marcelo', 'marcelo@teste.com');
insert into contatos(nome, email) values ('Adriana', 'adriana@teste.com');
insert into contatos(nome, email) values ('Fernando', 'fernando@teste.com');
insert into contatos(nome, email) values ('Gregório', 'greg@teste.com');
insert into contatos(nome, email) values ('Anderson', ' anderson@teste.com');
insert into contatos(nome, email) values ('Fabiana', 'fabiana@teste.com');
insert into contatos(nome, email) values ('Deise', 'deise@teste.com');
insert into contatos(nome, email) values ('Damaris', 'damaris@teste.com');
insert into contatos(nome, email) values ('Daniel', 'daniel@teste.com');
insert into contatos(nome, email) values ('Claudia', 'claudia@teste.com');
insert into contatos(nome, email) values ('Claudenice', 'claudenice@teste.com');
insert into contatos(nome, email) values ('Rafael', 'rafael@hotmail.com');
insert into contatos(nome, email) values ('Rafaela', 'rafaela@terra.com');

--63, Escreva o comando utilizado para selecionar todas as contatos da tabela Contatos
select * from contatos;

--64, Escreva o comando utilizado para selecionar todos os nomes da tabela Contatos
select nome from contatos;

--65, Escreva o comando utilizado para selecionar todos os emails da tabela Contatos.
select email from contatos;

--66, Escreva o comando utilizado para selecionar todas os Contatos que o nome inicia com 'A'
select * from contatos where nome like 'A%';

--67, Escreva o comando utilizado para selecionar todas os Contatos que o nome inicia com 'C'
select * from contatos where nome like 'C%';

--68, Escreva o comando utilizado para selecionar todas os Contatos que o nome inicia com 'cl'
select * from contatos where nome like 'Cl%';

--69, Escreva o comando utilizado para selecionar todas os Contatos que possuem o código > 10
select * from contatos where codigo > 10;

--70, Escreva o comando utilizado para selecionar todas os Contatos que possuem o email @teste
select * from contatos where email like '%@teste%';

--71, Escreva o comando utilizado para selecionar todas os Contatos que possuem o email @hotmail
select * from contatos where email like '%@hotmail%';

--72, Escreva o comando utilizado para selecionar todas os Contatos que possuem o email @gmail
select * from contatos where email like '%@gmail%'

--73, Escreva o comando utilizado para selecionar todas os Contatos que possuem o email @terra
select * from contatos where email like '%@terra%'

--74, Escreva o comando utilizado para selecionar todas os Contatos que possuem o email @teste e código menor que 7
select * from contatos where email like '%@teste%' and codigo < 7;

--75, Escreva o comando utilizado para deletar o Contato que possui o email claudenice@gmail.com
delete from contatos where email like 'claudenice@gmail.com';

--76, Escreva o comando para excluir os Contatos que possuem o código > 10
delete from contatos where codigo < 10;

--77, Escreva o comando para apagar todos os dados da tabela Contatos
delete from contatos;

--78, Escreva o comando para excluir a tabela Contatos.
drop table contatos;

--79,  Escreva o comando para excluir a base de dados db_teste1
drop database db_teste1