use ralacionamentos;
create table recursiva(rec_id int primary key auto_increment,
					   rec_nome varchar(100) not null,
                       rec_desc varchar(6000) not null,
                       rec_date timestamp not null default current_timestamp ON UPDATE current_timestamp,
                       rec_sementes int,
                       rec_anterior int,
                       foreign key(rec_anterior) references recursiva(rec_id));

desc recursiva;

insert into recursiva (rec_nome, rec_desc, rec_sementes) 
	values ('Perobas', 'no no no no no no', 100),
		   ('Ipe', 'bla bla bla', 200),
           ('Rosas', 'hue hue hue hue', 300);      

select*from recursiva;
           
insert into recursiva (rec_nome, rec_desc, rec_sementes, rec_anterior) 
	values ('Perobas 02', 'no no no no no no', 25,1),
		   ('Perobas 03', 'no no no no no no', 25,1),
           ('Perobas 04', 'no no no no no no', 25,1);
		                
                        
insert into recursiva (rec_nome, rec_desc, rec_sementes, rec_anterior) 
	values ('Perobas 2.1', 'no no no no no no', 12,4);   
    
    
    
    
    
    
    
    
    
    
    