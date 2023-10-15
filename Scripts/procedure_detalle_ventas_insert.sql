/*
PROCEDIMIENTO PARA AGREGAR DETALLE DE VENTA EN LA TABLA DETALLE_VENTAS
call agregar_detalle_ventas(IDBOLETA, PRODUCTO, CANTIDAD);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists agregar_detalle_ventas;
delimiter $$
create procedure agregar_detalle_ventas(
    in _IDBOLETA INT,
    in _IDPRODUCTO INT,
    in _CANTIDAD INT
)
begin
	insert into DETALLE_VENTAS (IDBOLETA, IDPRODUCTO, CANTIDAD)
    values (_IDBOLETA, _IDPRODUCTO, _CANTIDAD);
end
$$