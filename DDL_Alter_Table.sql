use cursos;
describe cursos;

create table cursosVerao like cursos;
describe cursosverao;

alter table cursosverao rename to cursosFerias;
describe cursosferias;

alter table cursosferias add column estacao varchar(20);
alter table cursosferias add column teste varchar(20) after descricao;
alter table cursosferias add column teste2 varchar(20) first;
desc cursosferias;

alter table cursosferias modify teste2 int(5) unsigned zerofill not null;
alter table cursosferias change teste2 testando int(5) unsigned zerofill not null;

alter table cursosferias drop column testando;

show tables;
drop table cursosferias;
drop database cursos;
