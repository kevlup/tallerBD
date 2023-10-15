/*
PROCEDIMIENTO PARA AGREGAR UN MEDIO DE PAGO EN LA TABLA MEDIO_PAGO
call agregar_medio_pago(DETALLE);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists agregar_medio_pago;
delimiter $$
CREATE PROCEDURE agregar_medio_pago(
	IN _DETALLE VARCHAR(20)
)
BEGIN
INSERT INTO MEDIO_PAGO (DETALLE)
VALUES  (_DETALLE);
END
$$

call agregar_medio_pago("Efectivo");
call agregar_medio_pago("Credito/Debito");