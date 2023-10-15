/*
PROCEDIMIENTO MOSTRAR DATOS DE LA TABLA VENDEDORES
call mostrar_vendedores();

FECHA: 02/10/2023
AUTOR: MATIAS RIVAS
*/

USE tienda;

drop procedure if exists mostrar_vendedores;
delimiter $$
CREATE PROCEDURE mostrar_vendedores()
BEGIN
SELECT *
FROM VENDEDORES;
END$$