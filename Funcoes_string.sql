select round(12354.528); 
/*
9+1=10
'9'+'1'='91'

https://dev.mysql.com/doc/refman/5.7/en/cast-functions.html#function_convert <-- Manual 
*/
select concat('10',' e ','20');

select concat(10,' e ','20');

select concat(cast(10 as char),' e ','20');

select concat(
              cast(10 as char),
              ' e ','20');
              
select concat('10'+'20');

-- Replace
select replace('MySQL não é legal','não é','é muito');

select concat('R$ ',replace(cast(round(23456.6847,2)as char),'.',',')) as 'Preço';
-- operações sempre de fora pra dentro, ex: round,cast,replace,concat

-- substrings
select ('Impacta Online');
select right('Impacta Online',6);
select left('Impacta Online',7);

select substring('Impacta Online',8);
select substring('Impacta Online',9,2);
select substring('Impacta Online',-6);
select substring('Impacta Online',1,7);

-- trim, tira todos os espaços em branco
select trim('                       impacta               ') as 'oi';
select ltrim('                       impacta               ') as 'oi'; -- tira espaços em branco da esquerda
select rtrim('                       impacta               ') as 'oi'; -- tira espaços em branco da direita

select upper('ImpACta'); -- ucase
select lower('ImpACta'); -- lcase

select ucase(fun_nome),lcase(fun_sexo) from funcionarios;

-- data
select date_format(now(),'%d/%m/%Y');
select date_format(now(),'%d/%m/%Y') as 'Data';

select * from clientes where year(dataNascimento) >= 2000 and month(dataNascimento)= 10;



