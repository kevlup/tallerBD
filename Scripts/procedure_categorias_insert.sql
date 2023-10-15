/*
PROCEDIMIENTO PARA AGREGAR UNA CATEGORIA EN LA TABLA CATEGORIA
call agregar_categoria(CATEGORIA);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists agregar_categoria;
delimiter $$
CREATE PROCEDURE agregar_categoria(
	IN _CATEGORIA VARCHAR(50)
)
BEGIN
INSERT INTO CATEGORIAS (CATEGORIA)
VALUES  (_CATEGORIA);
END
$$

call agregar_categoria("Cartas Pokemon TCG");
call agregar_categoria("Pluzzes y juegos didácticos");
call agregar_categoria("Gráfica");
call agregar_categoria("Papelería");
call agregar_categoria("Juguetería y Accesorios");




