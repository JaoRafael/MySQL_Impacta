create database if not exists empresa;
use empresa;
create table if not exists clientes(
                           idCliente int not null primary key auto_increment,
                           nomeCliente varchar(100) not null,
                           sexoCliente enum('m','f'),
                           ufNascimento char(2),
                           dataNascimento date
					       );
                           
desc clientes;

-- DATA MANIPULATION LANGUAGE
-- INSERT, UPDATE, DELETE

-- INSERT DECLARATÓRIO, CAMPOS QUE RECEBERÁ OS DADOS 

insert into clientes(nomeCliente, sexoCliente, ufNascimento, dataNascimento)
values ('João Rafael Guazelli','m','SP','1986-04-30');

insert into clientes(nomeCliente, sexoCliente, ufNascimento, dataNascimento)
values ('Camila Padilha','F','SP','1993-09-19');

-- INSERT POSICIONAL

insert into clientes values(null,'Guilherme Padilha','m','SP','1994-08-24');

insert into clientes values(null,'Clarck Guazelli','m',null,'2015-01-17');


insert into clientes values(null,'Maria Das Graças Guazelli','f','MG','1947-12-27'),
						   (null,'Carlos Tadeu Guazelli','m','SP','1970-07-19');

insert into clientes values(null,'Mayara Guazelli','f','SP','1994-06-13'),
						   (null,'Gabriel Guazelli Alencar','m','SP','1996-07-03'),
                           (null,'Jose Carlos da Silva','m',null,'1988-06-12'),
                           (null,'Gleice Tais Guazelli','f','SP','1973-03-21'),
						   (null,'Alvaro Soares','m','RJ','1989-11-05');
select*from clientes;


