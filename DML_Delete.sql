use empresa;
describe clientes;
select*from clientes;

delete from clientes where idCliente = 2;

delete from clientes where idCliente = 9;

-- EXCLUIR todos os registros 
-- delete from clientes;
-- truncate table; apaga todos os arquivos e cria novamente

truncate table clientes;
