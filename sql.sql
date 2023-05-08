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


--Criando a tabela "Caixa" --

	Create Table Caixa 
	(IdCaixa Int identity (1,1) Not Null,
	PesoCaixa Int Not Null,
	EtiquetaCaixa Varchar(70) Not Null,
	Cor Varchar (50) Not Null)
	Go

	--Adicionando a chave primaria da tabela Caixa--
	Alter table Caixa
	Add Constraint PK_Caixa_IdCaixa Primary Key
	(IdCaixa)
	Go


--Criando a tabela Notificação--

	Create Table Notificacao
	(IdEmprestimo Int Not Null,
	HorarioMensagem Datetime Not Null,
	Mensagem Varchar (20) Not Null,)
	Go

	--Adicionando a chave primaria da tabela Notificação--

	Alter table Notificacao 
	Add Constraint PK_Notificacao_IdEmprestimo Primary Key
	(IdEmprestimo)
	Go
	
	--Adicionando um relacionamento entre a tabela revistas e a tabela caixa--
	Alter Table Revistas
	Add Constraint [FK_Revistas_Caixa_IdCaixa] Foreign Key (IdCaixa)
	References Caixa (IdCaixa)
	Go	

--Adicionando o Relacionamento entre Emprestimo e a Notificação --
	Alter table Notificacao
	Add Constraint [FK_Notificacao_emprestimo_IdEmprestimo] Foreign Key (IdEmprestimo)
	References Emprestimo (IdEmprestimo)
	Go	

	Alter table Revistas
	Add Constraint [FK_Revistas_Caixa_IdCaixa] Foreign Key (IdCaixa)
  	References Caixa (IdCaixa)
	Go

