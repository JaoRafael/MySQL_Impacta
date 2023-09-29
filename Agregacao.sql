select * from funcionarios;

-- max, min, sum, goup_concat
select max(fun_salario)from funcionarios;

select min(fun_salario) from funcionarios;

select sum(fun_salario) from funcionarios;

select group_concat(car_nome) from cargos;

-- COUNT(faz a contagem dos registros), AVG(faz a media dos registros)
select count(fun_nome),sum(fun_salario) from funcionarios;
select count(car_id) from funcionarios;
select count(*) from funcionarios;
select count(fun_id) from funcionarios;

select count(fun_salario), sum(fun_salario), avg(fun_salario) from funcionarios;
select avg(fun_salario) from funcionarios;