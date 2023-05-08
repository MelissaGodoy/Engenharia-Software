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
Add Constraint Pk_IdAmigo Primary key(IdAmigo)
