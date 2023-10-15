/*
PROCEDIMIENTO PARA MOSTRAR PRODUCTOS POR SU CATEGORIA
call mostrar_producto_porCategoria(CATEGORIA);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists mostrar_producto_porCategoria;
delimiter $$
create procedure mostrar_producto_porCategoria(
    in AUX VARCHAR(50)
)
begin
	select IDPRODUCTO, CODIGO_SKU, DESCRIPCION, CATEGORIA, PRECIO, STOCK
    from PRODUCTOS
    left join CATEGORIAS on PRODUCTOS.IDCATEGORIA = CATEGORIAS.IDCATEGORIA
    where CATEGORIAS.CATEGORIA like concat("%",AUX,"%");
end
$$