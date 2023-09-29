-- TODOS OS PEDIDOS COM FUNCIONARIOS E CLIENTES, TRAZER CONJUGES E DEPENDENTES SE EXISTIREM. TRAZER FUNCIONÁRIOS E CLIENTES QUE NUNCA FIZERAM UM PEDIDO.
select num_ped as 'Pedido_Num',
	   nome_func as 'Funcionário',
       nome_dep 'Dependentes',
       nome_cli as 'Clientes',
       nome_conj as 'Conjuge'
		from pedidos p
        right join funcionarios f on p.cod_func = f.cod_func
        left join dependentes d on f.cod_func = d.cod_func
        left join clientes c on p.cod_cli = c.cod_cli -- LEF JOIN -retorna o olavo linhares-funcionário que nunca fez pedido, mas não retorna os clientes que nunca fizeram pedidos
        left join conjuges cj on c.cod_cli = cj.cod_cli ;
        
select num_ped as 'Pedido_Num',
	   nome_func as 'Funcionário',
       nome_dep 'Dependentes',
       nome_cli as 'Clientes',
       nome_conj as 'Conjuge'
		from pedidos p
        right join funcionarios f on p.cod_func = f.cod_func
        left join dependentes d on f.cod_func = d.cod_func
        right join clientes c on p.cod_cli = c.cod_cli -- RIGHT JOIN -não retorna o olavo linhares-funcionário que nunca fez pedido, mas retorna os clientes que nunca fizeram pedidos
        left join conjuges cj on c.cod_cli = cj.cod_cli ;
		
        
--  =============================================================================================================================================================================================

select num_ped as 'Pedido_Num',
	   nome_func as 'Funcionário',
       nome_dep 'Dependentes',
       nome_cli as 'Clientes',
       nome_conj as 'Conjuge'
		from pedidos p
        right join funcionarios f on p.cod_func = f.cod_func
        left join dependentes d on f.cod_func = d.cod_func
        left join clientes c on p.cod_cli = c.cod_cli -- LEF JOIN -retorna o olavo linhares-funcionário que nunca fez pedido, mas não retorna os clientes que nunca fizeram pedidos
        left join conjuges cj on c.cod_cli = cj.cod_cli 
union       
select num_ped as 'Pedido_Num',
	   nome_func as 'Funcionário',
       nome_dep 'Dependentes',
       nome_cli as 'Clientes',
       nome_conj as 'Conjuge'
		from pedidos p
        right join funcionarios f on p.cod_func = f.cod_func
        left join dependentes d on f.cod_func = d.cod_func
        right join clientes c on p.cod_cli = c.cod_cli -- RIGHT JOIN -não retorna o olavo linhares-funcionário que nunca fez pedido, mas retorna os clientes que nunca fizeram pedidos
        left join conjuges cj on c.cod_cli = cj.cod_cli ;
        
-- ===============================================================================================================================================================================================

-- CRIAR UMA VIEW COM  A CONSULTA  ANTERIOR  
create or replace view Mostra_Tudo as 
	select num_ped as 'Pedido_Num',
		   nome_func as 'Funcionário',
		   nome_dep 'Dependentes',
		   nome_cli as 'Clientes',
		   nome_conj as 'Conjuge'
			from pedidos p
			right join funcionarios f on p.cod_func = f.cod_func
			left join dependentes d on f.cod_func = d.cod_func
			left join clientes c on p.cod_cli = c.cod_cli -- LEF JOIN -retorna o olavo linhares-funcionário que nunca fez pedido, mas não retorna os clientes que nunca fizeram pedidos
			left join conjuges cj on c.cod_cli = cj.cod_cli 
	union       
	select num_ped as 'Pedido_Num',
		   nome_func as 'Funcionário',
		   nome_dep 'Dependentes',
		   nome_cli as 'Clientes',
		   nome_conj as 'Conjuge'
			from pedidos p
			right join funcionarios f on p.cod_func = f.cod_func
			left join dependentes d on f.cod_func = d.cod_func
			right join clientes c on p.cod_cli = c.cod_cli -- RIGHT JOIN -não retorna o olavo linhares-funcionário que nunca fez pedido, mas retorna os clientes que nunca fizeram pedidos
			left join conjuges cj on c.cod_cli = cj.cod_cli ; 
            
select * from mostra_tudo;

select * from mostra_tudo where pedido_num is null and conjuge is not null;

show databases;
use mysql;
show tables;

use information_schema;
show tables;
select * from views;

-- =================================================================================================================================================================================================

-- CRIAR TABELA TEMPORARIA VIEW COM O RESULTADO DA CONSULTA UTILIZANDO A VIEW 

use db_cds;
show tables;

create temporary table temp_mostra_tudo as select * from mostra_tudo;
desc temp_mostra_tudo;
select * from temp_mostra_tudo;

select * from temp_mostra_tudo where pedido_num is null and conjuge is not null;
 





            