drop table conjuges;

create table cargos(
					car_id int auto_increment,
                    car_nome varchar(100),
                    primary key(car_id)
					);

insert cargos(car_nome) values('Medico'),('Jornalista'),('Arquiteto'),('Radialista');
desc cargos;
select*from cargos;

create table funcionarios(
						 car_id int not null,
						 fun_id int auto_increment,
                         fun_nome varchar(60) not null,
                         fun_sexo enum('M','F') not null default 'M',
                         fun_salario decimal(10,2),
                         
                         primary key(fun_id),
                         foreign key(Car_id) references cargos(car_id)
                         );
                         
desc funcionarios;
drop table funcionarios;
drop table cargos;

insert funcionarios(fun_nome,fun_salario,car_id) values
					('Luis Melodia',6500.00,2),
                    ('Luis Airao',7850.00,3),
                    ('Luis Tatit',3268.00,2),
                    ('Marcos de Barros',9854.00,1),
                    ('Elton Soares',1234.00,2),
                    ('Milton Cruz',8521.00,3),
                    ('Sandro Bueno',3578.00,2),
                    ('Ivan Narciso',4415.00,1);
                    
select*from funcionarios;
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    