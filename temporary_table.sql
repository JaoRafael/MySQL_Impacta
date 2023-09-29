desc funcionarios;

create temporary table cargos_temp like funcionarios;
desc cargos_temp;
show tables;

select*from cargos_temp;

create temporary table temp as select*from v_funcionarios;
select * from temp;
select * from temp where cargo = 'Radialista';
drop temporary table temp;

