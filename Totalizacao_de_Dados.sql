-- QUANTOS TITULOS POSSUI CADA ARTISTA NO CATALAGO??
select nome_art as 'Artista',
	   count(nome_cd) as 'Qtd Titulos',
       group_concat(nome_cd) as 'titulos'
		from artistas a 
        left join titulos_artistas ta on a.cod_art = ta.cod_art
        left join titulos t on ta.cod_tit = t.cod_tit
        group by nome_art order by count(nome_cd);
        -- ou pode-se usar pelo apelido da coluna, porem só pode ser 1 nome, ex 'Qtd_Titulos' (order by Qtd_Titulos);
		-- HAVING serve como um where para campos agrregados, ex having count(nome_cd) < 2

-- =============================================================================================== 

-- QUANTOS ARTISTAS POSSUI CADA GRAVADORA EM NOSSO CATALOGO?
select nome_grav as 'Gravadora',
	   count(nome_art) as 'Qtd_Artista',
       group_concat(nome_art) as 'Artista'
		from gravadoras g 
        join titulos t on g.cod_grav = t.cod_grav
        join titulos_artistas ta on t.cod_tit = ta.cod_tit
        join artistas a on ta.cod_art = a.cod_art
        group by nome_grav;
 
-- =============================================================================================== 
 
-- QUANTOS ARTISTAS POSSUI CADA GRAVADORA EM NOSSO CATALOGO E QUAL O TOTAL? 
select nome_grav as 'Gravadora',
	   count(nome_art) as 'Qtd_Artista',
       group_concat(nome_art) as 'Artista'
		from gravadoras g 
        join titulos t on g.cod_grav = t.cod_grav
        join titulos_artistas ta on t.cod_tit = ta.cod_tit
        join artistas a on ta.cod_art = a.cod_art
        group by nome_grav
        with rollup;

-- =============================================================================================== 

-- LISTE TODOS OS PEDIDOS FEITOS NO ANO DE 2013 E QUAL O TOTAL FATURADO NO ANO ?
select p.num_ped as 'Pedido',
	   qtd_cd * val_cd as 'Valor Pedido'
		from pedidos p
        join titulos_pedidos tp on p.num_ped = tp.num_ped
        where year(data_ped) = 2013;

select case 
		when p.num_ped is not null then p.num_ped
	    else'Total Faturado no Ano'
	   end as 'Pedido',
	     sum(qtd_cd * val_cd) as 'Valor Pedido'
		 from pedidos p
         join titulos_pedidos tp on p.num_ped = tp.num_ped
         where year(data_ped) = 2013
         group by p.num_ped
         with rollup;

-- ===============================================================================================        
        
-- LISTE TODOS OS FUNCIONARIOS E QUANTOS DEPENDENTES CADA UM DELES POSSUI.
select nome_func as 'Funcionarios',
       count(nome_dep) as  'Dependentes',
       group_concat(nome_dep) as 'Nome_Dependentes'
		from funcionarios f 
        join dependentes d on f.cod_func = d.cod_func
        group by nome_func
        order by Dependentes;
 