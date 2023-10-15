/*
PROCEDIMIENTO PARA INGRESAR DATOS A LA TABLA VENDEDORES
call agregar_vendedor();

FECHA: 02/10/2023
AUTOR: MATIAS RIVAS
*/

USE tienda;

drop procedure if exists agregar_vendedor;
delimiter $$
CREATE PROCEDURE agregar_vendedor(
	IN _nombre 	VARCHAR(20),
    IN _apellido VARCHAR(20),
    IN _correo VARCHAR(20)
)
BEGIN
INSERT INTO vendedores (NOMBRE,APELLIDO,CORREO) 
	VALUES (_nombre,_apellido,_correo);
END$$

call agregar_vendedor("Martin", "Muñoz", "mmuñozz12@gmail.com");
call agregar_vendedor("Miguel", "Gonzalez", "gonzagonzam@gmail.com");
call agregar_vendedor("Antonio", "Soto","tonosoto7@gmail.com");