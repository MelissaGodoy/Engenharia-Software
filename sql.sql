	--Criando um novo banco de dados--
	Create Database EngenhariaSoftware
	Go


	--Conectando-se ao banco de dados--
	Use EngenhariaSoftware
	Go

	create table CadastroAmigo
	(IdAmigo int Not Null Identity(1,1),
	Endereco varchar(100) null,
	Telefone int null,
	NomeResponsavel varchar(100) not null,
	NomeAmigo varchar(100) not null)

	alter table CadastroAmigo 
	Add Constraint Pk_CadastroAmigo_IdAmigo Primary key(IdAmigo)
	
	--Criando a tabela Revistas--
	Create Table Revistas
	(CodigoRevista Int identity (1,1) Not Null,
	TipoDeColeção Varchar(60) Not Null,
	NumeroDaEdicao Int Not Null,
	AnoDaRevista Int Not Null,
	IdCaixa Int Not Null)
	Go

--Adicionando a chave primaria da tabela Revistas--
	Alter Table Revistas
	Add Constraint PK_Revista_CodigoRevista Primary Key
	(CodigoRevista)
	Go

	CREATE TABLE emprestimo(
		IdEmprestimo int Identity(1,1), 
		IdAmigo int,
		CodigoDaRevista Int,
		DataEmprestimo date Not Null,
		DataDevolucao date Not Null,
	)

	alter table emprestimo
		add constraint PK_emprestimo_IdEmprestimo Primary Key(IdEmprestimo)