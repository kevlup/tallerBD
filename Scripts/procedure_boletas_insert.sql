/*
PROCEDIMIENTO PARA AGREGAR BOLETA EN LA TABLA BOLETAS 
call sp_ingresarBoleta(IDVENDEDOR, IDMEDIOPAGO, FECHA);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists sp_ingresarBoleta;
delimiter $$
create procedure sp_ingresarBoleta(
    in _IDVENDEDOR INT,
    in _IDMEDIOPAGO INT,
    in _FECHA DATETIME
)
begin
	insert into BOLETAS (IDVENDEDOR, IDMEDIOPAGO, FECHA)
    values (_IDVENDEDOR, _IDMEDIOPAGO, _FECHA);
end
$$