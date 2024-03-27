--11)Crie uma base de dados prodDatabase
CREATE DATABASE prodDatabase;
--12) Dentro da base de dados prodDatabase inclua a tabela Produto com as seguintes colunas id int, nome varchar(100), valor decimal(10,4)
CREATE TABLE produto (
	idproduto int,
	nome varchar(100),
	valor decimal(10,4)
);
--13) Dentro da base de dados prodDatabase inclua a tabela Pedido com as seguintes colunas: id int, codigo int, cliente varchar(255) dataCriacao datetime
CREATE TABLE pedido(
	idpedio int,
	codigo int,
	cliente varchar(255),
	data_criacao DATE NOT NULL DEFAULT CURRENT_DATE 
);
--14) Dentro da base de dados prodDatabase inclua a tabela PedidoItem com as seguintes colunas: idPedido int, idProduto int, quantidade int
CREATE TABLE PedidoItem(
	idpedido int,
	idproduto int, 
	quantidade int
);
--15)Dentro da base de dados prodDatabase inclua a tabela Entregas com as seguintes colunas: idPedido int , rua varchar(100), numero varchar(1000), bairro varchar(255) cidade varchar(255)
CREATE TABLE entregas(
	idpedido int,
	rua varchar(100),
	numero varchar(1000),
	bairro varchar(255),
	cidade varchar(255)
);
--16) Na Tabela Entregas altere a coluna rua para varchar(255)
ALTER TABLE entregas DROP COLUMN rua;
ALTER TABLE entregas ADD COLUMN rua varchar(255);

--17) Na tabela Entregas inclua a coluna complemento varchar(255)
ALTER TABLE entregas ADD COLUMN complemento varchar(255);
--18) Na tabela Entregas inclua a coluna cep varchar(8)
ALTER TABLE entregas ADD COLUMN cep varchar(8);
--19) Na tabela Entregas inclua a coluna Estado varchar(100)
ALTER TABLE entregas ADD COLUMN estado varchar(100);
--20) Remova a coluna Estado da tabela Entregas
ALTER TABLE entregas DROP COLUMN estado;
--21) apague a base de dados rhDatabase
DROP DATABASE rhDatabase;
--22) apague a base de dados prodDatabase
