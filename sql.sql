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

CREATE TABLE emprestimo(
	IdEmprestimo int Identity(1,1), 
	IdAmigo int,
	CodigoDaRevista Int,
	DataEmprestimo date Not Null,
	DataDevolucao date Not Null,
)

alter table emprestimo
	add constraint PK_emprestimo_IdEmprestimo Primary Key(IdEmprestimo)