-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
create database tombRaider;

use tombRaider;

create table usuario(
idUser int primary key auto_increment,
username varchar(45),
email varchar(100),
senha varchar(80));

create table game(
idGame int primary key,
nomeGame varchar(45));

create table voto(
idVoto int,
fkUser int,
fkGame int,
foreign key(fkUser) references usuario(idUser),
foreign key (fkGame) references game (idGame),
primary key(idVoto, fkUser, fkGame));
