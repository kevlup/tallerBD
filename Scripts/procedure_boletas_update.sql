/*
PROCEDIMIENTO PARA ACTUALIZAR BOLETAS EN LA TABLA BOLETAS 
call actualizar_boletas(IDBOLETA, IDVENDEDOR, IDMEDIOPAGO, FECHA);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists actualizar_boletas;
delimiter $$
CREATE PROCEDURE actualizar_boletas(
	IN _IDBOLETA INT,
    IN _IDVENDEDOR INT,
    IN _IDMEDIOPAGO INT,
    IN _FECHA DATETIME
)
BEGIN
UPDATE BOLETAS
SET IDVENDEDOR = _IDVENDEDOR,
	IDMEDIOPAGO = _IDMEDIOPAGO,
    FECHA = _FECHA
WHERE IDMEDIOPAGO=_IDMEDIOPAGO;
END
$$