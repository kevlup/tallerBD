/*
PROCEDIMIENTO PARA ACTUALIZAR DETALLE DE VENTAS EN LA TABLA DETALLE_VENTAS
call actualizar_detalle_ventas(IDDETALLEVENTAS, IDBOLETA, IDPRODUCTO, CANTIDAD);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists actualizar_detalle_ventas;
delimiter $$
CREATE PROCEDURE actualizar_detalle_ventas(
	IN _IDDETALLEVENTAS INT,
    IN _IDBOLETA INT,
    IN _IDPRODUCTO INT,
    IN _CANTIDAD INT
)
BEGIN
UPDATE DETALLE_VENTAS
SET IDBOLETA = _IDBOLETA,
	IDPRODUCTO = _IDPRODUCTO,
    CANTIDAD = _CANTIDAD
WHERE IDDETALLEVENTAS=_IDDETALLEVENTAS;
END
$$