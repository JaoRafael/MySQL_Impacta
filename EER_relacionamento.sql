create database ralacionamentos;
use relacionamentos;
create table funcionarios(
						 fun_id int auto_increment,
                         fun_nome varchar(60) not null,
                         fun_sexo enum('M','F') not null default 'M',
                         fun_salario decimal(10,2),
                         primary key(fun_id)
                         );
                         
desc funcionarios;
insert funcionarios values(null,'Itamar Assunção','M',2000.69);
insert funcionarios(fun_nome, fun_salario) values('Luis Melodia',3000.00);

select * from funcionarios;


create table conjuges(
					fun_id int,
                    conj_nome varchar(100),
                    conj_nasc date,
                    primary key(fun_id),
                    foreign key(fun_id) references funcionarios(fun_id)
					);
                    
insert conjuges values(1,'Tete Spinola','1990-03-25');
insert conjuges values(3,'Zeze Motta','1980-06-11');
select*from conjuges;

-- desc conjuge;
-- drop table conjuge;

delete from conjuge where fun_id = 2;
delete from funcionarios where fun_id = 2;
