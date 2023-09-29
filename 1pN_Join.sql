create database relacionamentos;
use relacionamentos;

create table funcionarios(
						 fun_id int auto_increment,
                         fun_nome varchar(100) not null,
                         fun_sexo enum('M','F') not null default 'M',
                         fun_salario decimal(10,2),
						 car_id int,
                         primary key(fun_id),
                         foreign key(Car_id) references cargos(car_id)
                         );
                         
create table cargos(
					car_id int auto_increment,
                    car_nome varchar(100),
                    primary key(car_id)
					);

insert cargos(car_nome) values('Medico'),('Jornalista'),('Arquiteto'),('Radialista');

 select*from funcionarios;
 drop table funcionarios;
 
 insert funcionarios(fun_nome,fun_salario,car_id) values
					('Luis Melodia',6500.00,2),
                    ('Luis Airao',7850.00,3),
                    ('Luis Tatit',3268.00,2),
                    ('Marcos de Barros',9854.00,1),
                    ('Elton Soares',1234.00,2),
                    ('Milton Cruz',8521.00,3),
                    ('Sandro Bueno',3578.00,2),
                    ('Ivan Narciso',4415.00,1),
                    ('Luan Souza',4425.00,null),
                    ('Mari Mariana',4415.00,4),
                    ('Mauricio Soares',4415.00,1),
                    ('Luis Ricardo',4415.00,2),
                    ('Marilia Mendonça',4415.00,null),
                    ('Lia Mello',4415.00,4),
                    ('Alexandre Paixão',4415.00,1),
                    ('Lia Andrade',4415.00,2),
                    ('Walmir Belisario',4415.00,1),
                    ('Rodrigo Rodrigues',4415.00,2),
                    ('Ricardo Selmo',4415.00,2),
                    ('Berenice Merlin',4415.00,2);
                    
select *from funcionarios,cargos;

select * from funcionarios join cargos; -- cruza os dados das tabelas

-- INNER JOIN
-- RETORNARÁ OS REGISTROS (TUPLA) QUE OBEDEÇAM UMA REGRA DE RELACIONAMENTO DEFINIDA PELO USUÁRIO
select * from funcionarios inner join cargos on cargos.car_id = funcionarios.car_id order by fun_id;

-- inner pode ser omitido
select * from funcionarios join cargos on cargos.car_id = funcionaros.car_id order by fun_id;

-- APELIDOS. colocando as nas tabelas, e não pode estar em ''
select * from funcionarios as f join cargos as c on c.car_id = f.car_id order by fun_id;

-- palavra AS pode ser omitida
select * from funcionarios f join cargos c on c.car_id = f.car_id ;

select fun_nome as'Funcionarios',car_nome as 'Cargos' from funcionarios f join cargos c on c.car_id = f.car_id ;

select fun_nome as'Funcionarios',
	   car_nome as 'Cargos'
       from funcionarios f 
       join cargos c on c.car_id = f.car_id ;

select fun_nome as'Funcionarios',
	   car_nome as 'Cargos'
       from funcionarios f 
       join cargos c on c.car_id = f.car_id 
       where car_nome = 'Medico';
       
-- Query sem o JOIN
select fun_nome as'Funcionarios',
	   car_nome as 'Cargos'
       from funcionarios f, cargos c
       where c.car_id = f.car_id ;

select fun_nome as'Funcionarios',
	   car_nome as 'Cargos'
       from funcionarios f, cargos c
       where c.car_id = f.car_id 
       and car_nome = 'Medico';
       
-- LEFT OUTER JOIN
-- fora da condição de associação
-- RETORNARÁ OS REGISTROS (TUPLA) QUE OBEDEÇAM UMA REGRA DE RELACIONAMENTO DEFINIDA PELO USUÁRIO
-- e mais todos os registros da tabela a esquerda independente dos relacionamentos
select * from funcionarios left outer join cargos on cargos.car_id = funcionarios.car_id;

-- OUTER é opcional
select * from funcionarios left join cargos on cargos.car_id = funcionarios.car_id;

select * from funcionarios f left join cargos c on c.car_id = f.car_id;

select fun_nome as'Funcionarios',
	   fun_salario as 'Salário',
	   car_nome as 'Cargos'
       from funcionarios f 
       left join cargos c on c.car_id = f.car_id 
       where car_nome is null;

-- RIGHT OUTER JOIN
-- fora da condição de associação
-- RETORNARÁ OS REGISTROS (TUPLA) QUE OBEDEÇAM UMA REGRA DE RELACIONAMENTO DEFINIDA PELO USUÁRIO
-- e mais todos os registros da tabela a direita 

select * from funcionarios right outer join cargos on cargos.car_id = funcionarios.car_id;

-- OUTER é opcional

select * from funcionarios f right join cargos c on c.car_id = f.car_id;

select * from funcionarios f right join cargos c on c.car_id = f.car_id;

select fun_nome as'Funcionarios',
	   fun_salario as 'Salário',
	   car_nome as 'Cargos'
       from funcionarios f 
       right join cargos c on c.car_id = f.car_id 
       where car_nome = 'Jornalista';
       
/*
UNION
Mesmo numero de campos na consulta 
mesmo tipos de dados nos campos unidos
apelidos sempre na primeira consulta
where pode ser utilizada em qualquer consulta
order by aparece após a ultima consulta
não utilizar o nome da coluna para ordenação, utilizar apelido ou numero da coluna 
*/
select fun_nome as 'Funcionarios',
	   fun_salario as 'Salario',
       car_nome as 'Cargos'
	   from funcionarios f
       left join cargos c on c.car_id = f.car_id
UNION
select fun_nome as 'Funcionarios',
	   fun_salario as 'Salario',
       car_nome as 'Cargos'
	   from funcionarios f
       right join cargos c on c.car_id = f.car_id
       order by Cargos, Funcionarios;