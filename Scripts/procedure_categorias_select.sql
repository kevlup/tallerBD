/*
PROCEDIMIENTO PARA MOSTRAR LAS CATEGORIAS DE LA TABLA CATEGORIA
call mostrar_categorias();

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists mostrar_categorias;
delimiter $$
CREATE PROCEDURE mostrar_categorias()
BEGIN
SELECT * FROM CATEGORIAS;
END
$$