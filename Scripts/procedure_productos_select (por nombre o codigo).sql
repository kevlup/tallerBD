/*
PROCEDIMIENTO PARA BUSCAR PRODUCTOS POR NOMBRE O CODIGO_SKU
call mostrar_producto(NOMBRE O CODIGO);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists mostrar_producto;
delimiter $$
create procedure mostrar_producto(
    in AUX VARCHAR(50)
)
begin
	select IDPRODUCTO, CODIGO_SKU, DESCRIPCION, CATEGORIA, PRECIO, STOCK
    from PRODUCTOS
    left join CATEGORIAS on PRODUCTOS.IDCATEGORIA = CATEGORIAS.IDCATEGORIA
    where CODIGO_SKU like concat("%",AUX,"%") OR DESCRIPCION like concat("%",AUX,"%");
end
$$