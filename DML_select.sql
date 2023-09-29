use empresa;
describe clientes;
select*from clientes;
insert into clientes values (null,'Jose Carlos','m','SP','1995-12-03'),
						   (null,'Manuel Carlos','m','SP','1998-08-15'),
                           (null,'João Antonio','m','RJ','1997-05-23'),
                           (null,'Antonio Marcos','m','SP','1996-09-19'),
                           (null,'Nilvan','m','SC','2002-09-11'),
                           (null,'Anastacia','f','SP','2001-07-23'),
                           (null,'Manuela','f','SC','1998-09-18'),
                           (null,'Vania','f','SP','2001-08-14'),
                           (null,'Marian','f','MG','2007-10-28'),
                           (null,'João Firmino','m','PR','1998-01-07'),
                           (null,'Antonieta','f','MG','2007-06-30'),
                           (null,'Stevan','m','SP','1998-05-22'),
                           (null,'João Anisio','m','PR','2003-10-06'),
                           (null,'Juan','m','PR','2003-12-05'),
                           (null,'Mirian','f','MG','2003-12-05'),
                           (null,'Tania','f','RJ','200-07-12');
                           
update clientes set dataNascimento= '2000-07-12' where idCliente= 16;

-- DQL - Data Query Lenguage - SELECT

select*from clientes;
-- o * tem que ser sempre o primero na relação de campos

select nomeCliente,dataNascimento from clientes;

select dataNascimento,nomeCliente from clientes;

-- select com apelidos
select nomeCliente as 'Nome do Cliete',dataNascimento as 'Nascimento' from clientes;

-- select com colunas falsas
select nomeCliente as 'Nome do Cliete',
		dataNascimento as 'Nascimento', 
        idCliente *100 as 'Salario', 
        'Brasileiro' as 'Nacionalidade' 
        from clientes;

-- ordenação, rouba performance do sistema
select*from clientes order by ufNascimento;
select*from clientes order by ufNascimento, dataNascimento;
select*from clientes order by ufNascimento asc, dataNascimento desc;

select*from clientes order by 4 asc, 5 desc;

select nomeCliente as 'Nome do Cliete',
		dataNascimento as 'Nascimento', 
        idCliente *100 as 'Salario', 
        'Brasileiro' as 'Nacionalidade' 
        from clientes
        order by Nascimento;

-- 3 primeiras linhas 
select * from clientes limit 3;
-- retorna o 4,5,6
select * from clientes limit 3,3; 

-- WHERE
-- OPERADORES DE COMPARAÇÃO

select * from clientes where idCliente =3;
select * from clientes where ufNascimento ='rj';

select * from clientes where idCliente <> 3;
select * from clientes where ufNascimento != 'rj';

select * from clientes where idCliente > 10;
select * from clientes where idCliente >= 10;

select * from clientes where idCliente < 10;
select * from clientes where idCliente <= 10;

-- OPERADORES LÓGICOS and - or

select * from clientes where idCliente < 10 and ufNascimento != 'sp';
select * from clientes where idCliente < 10 or ufNascimento = 'sp';

-- BETWEEN (INTERVALO)

select * from clientes where idCliente >= 5 and idCliente <= 10;
select * from clientes where idCliente between 5 and 10; -- inclui o 5 e o 10 na resposta 

select * from clientes where idCliente < 5 or idCliente > 10;
select * from clientes where idCliente not between 5 and 10; -- exclui o 5 e o 10 da resposta        

-- IN    

select * from clientes where idCliente = 5 or idCliente = 10 or idCliente = 15;
select * from clientes where idCliente in (5,10,15); -- seleciona os id especificos entre ()

select * from clientes where idCliente <> 5 and idCliente <> 10 and idCliente <> 15;
select * from clientes where idCliente not in (5,10,15); -- não seleciona os id especificos entre ()

-- DISTINCT (tira a repetição da resposta)

select distinct ufNascimento from clientes;

-- LIKE (comparação)

select * from clientes where nomeCliente = 'nilvan';
select * from clientes where nomeCliente like 'nilvan';
select * from clientes where nomeCliente like 'an%'; -- começa com an
select * from clientes where nomeCliente like '%an'; -- termina com an
select * from clientes where nomeCliente like '%an%'; -- contem an
select * from clientes where nomeCliente not like '%an%'; -- não contem an

select * from clientes where nomeCliente like 'an%to%';
select * from clientes where nomeCliente like 'an%to%t%';
select * from clientes where nomeCliente like '%j%';
 

        