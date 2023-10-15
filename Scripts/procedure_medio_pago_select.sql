/*
PROCEDIMIENTO PARA MOSTRAR LOS MEDIOS DE PAGO DE LA TABLA MEDIO_PAGO
call mostrar_medio_pago();

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists mostrar_medio_pago;
delimiter $$
CREATE PROCEDURE mostrar_medio_pago()
BEGIN
SELECT * FROM MEDIO_PAGO;
END
$$