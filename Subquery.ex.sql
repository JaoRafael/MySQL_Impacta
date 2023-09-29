-- APRESENTE TODOS OS CLIENTES SOLTEIROS
select * from clientes where cod_cli not in (select cod_cli from conjuges);

-- =============================================================================================== 

-- APRESENTE TODOS OS CLIENTES CASADOS 
select * from clientes where cod_cli in (select cod_cli from conjuges);

-- =============================================================================================== 

-- APRESENTE TODOS OS CLIENTES SOLTEIROS E CASADOS 
select nome_cli as 'Cliente', 'Solteiro' as 'Estado Civil' 
		from clientes where cod_cli not in (select cod_cli from conjuges)
        union
select nome_cli, 'Casado'
		from clientes where cod_cli in (select cod_cli from conjuges)
        order by Cliente;

-- =============================================================================================== 

-- APRESENTE TODAS AS CATEGORIAS QUE ESTÃO SEM CD
select * from categorias where cod_cat not in(select distinct cod_cat from titulos);

-- =============================================================================================== 

-- APRESENTE APENAS OS FUNCIONÁRIOS QUE TEM DEPENDENTES E QUE NUNCA ATENDERAM A NENHUM PEDIDO
select * 
		from funcionarios
        where cod_func in (select distinct cod_func from dependentes)
        and cod_func not in (select distinct cod_func from pedidos);

-- ===============================================================================================         

-- MOSTRE TODOS OS FUNCIONÁRIOS QUE ATENDERAM A PEDIDOS DE CLIENTES CASADOS
select * from funcionarios 
	where cod_func in (select distinct cod_func from pedidos 
		where cod_cli in (select cod_cli from conjuges));

-- =============================================================================================== 

-- APRESENTE OS DADOS DOS CDS MAIS CAROS 
select * from titulos where val_cd = (select max(val_cd) from titulos);
