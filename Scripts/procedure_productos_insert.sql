/*
PROCEDIMIENTO PARA AGREGAR PRODUCTOS EN LA TABLA PRODUCTOS
call sp_agregarProducto(CODIGO_SKU, DESCRIPCION, IDCATEGORIA, PRECIO, STOCK);

FECHA: 02/10/2023
AUTOR: KEVIN FLORES
*/
use TIENDA;

drop procedure if exists sp_agregarProducto;
delimiter $$
create procedure sp_agregarProducto(
    in _CODIGO_SKU VARCHAR(50),
	in _DESCRIPCION VARCHAR(50),
	in _IDCATEGORIA INT,
	in _PRECIO INT ,
	in _STOCK INT
)
begin
	insert into PRODUCTOS (CODIGO_SKU, DESCRIPCION, IDCATEGORIA, PRECIO, STOCK)
    values (_CODIGO_SKU, _DESCRIPCION, _IDCATEGORIA, _PRECIO, _STOCK);
end
$$

#AGREGANDO PRODUCTOS 
call sp_agregarProducto('POK-BOS-9012','Sobre Scarlet & Violet ESP', '1', 4990, 24);
call sp_agregarProducto('POK-BOS-9021','Sobre Paldea Evolved ENG', '1', 4990, 45);
call sp_agregarProducto('POK-BOS-9022','Sobre Paldea Evolved ESP', '1', 4990, 10);
call sp_agregarProducto('POK-BOS-9031','Sobre Obsidian Flames ENG', '1', 4990, 50);
call sp_agregarProducto('POK-MCA-9012','Mini Carpeta Booster ESP', '1', 6990, 24);
call sp_agregarProducto('POK-BLI-9011','Blister Scarlet & Violet ENG', '1', 15490, 10);
call sp_agregarProducto('POK-BLI-9021','Blister Paldea Evolved ENG', '1', 15490, 0);
call sp_agregarProducto('POK-BLI-9031','Blister Obsidian Flames ENG', '1', 15490, 24);
call sp_agregarProducto('POK-MTI-9001','Mini Tin Booster Paldea Friends Collection ENG', '1', 12990, 36);
call sp_agregarProducto('POK-BTS-COL-011','Back To School Metal Case Booster ENG', '1', 12990, 12);
call sp_agregarProducto('POK-STA-COL-011','Stacking Tin Booster Pack 2022 ENG ', '1', 17990, 16);
call sp_agregarProducto('POK-BAL-COL-011','PokeBall Booster Pack 2023 ENG', '1', 18990, 24);
call sp_agregarProducto('POK-TIN-PAL-012','Metal Tin Paldea Friends Collection ESP', '1', 24990, 8);
call sp_agregarProducto('POK-BUN-1511','Booster Bundle Pokemon 151 ENG', '1', 31990, 0);
call sp_agregarProducto('POK-ETB-9021','Elite Trainer Box Paldea Evolved ENG', '1', 54990, 3);
call sp_agregarProducto('POK-ETB-9031','Elite Trainer Box Obsidian Flames ENG', '1', 54990, 4);
call sp_agregarProducto('POK-ETB-1511','Elite Trainer Box Pokemon 151 ENG', '1', 59990, 0);
call sp_agregarProducto('POK-ACA-COL-011','Academia de Combate ESP', '1', 29990, 5);

call sp_agregarProducto('MC-MCU-222','2x2 Magic Cube', '2', 3990, 24);
call sp_agregarProducto('MC-QYI-333','3x3 QiYi Warrior Cube', '2', 4990, 36);
call sp_agregarProducto('MC-CUB-444','4x4 Cubing Classroom Cube', '2', 9990, 0);
call sp_agregarProducto('MC-CUB-555','5x5 Cubing Classroom Cube', '2', 11990, 8);
call sp_agregarProducto('MC-CUB-666','6x6 Cubing Classroom Cube', '2', 16990, 0);
call sp_agregarProducto('MC-CUB-777','7x7 Cubing Classroom Cube', '2', 24990, 0);
call sp_agregarProducto('MC-SEN-888','8x8 Sengshou TANK Cube', 2, 34990, 2);
call sp_agregarProducto('MC-QYI-MIR-222','2x2 QiYi Mirror Cube', '2', 4990, 0);
call sp_agregarProducto('MC-QYI-MIR-333','3x3 QiYi Mirror Cube', '2', 6990, 14);
call sp_agregarProducto('MC-FAN-MEG-434','Megaminx FanXin', '2', 11990, 5);
call sp_agregarProducto('MC-CUB-MEG-765','Megaminx Cubing Classroom Magnetic', '2', 19990, 5);
call sp_agregarProducto('MC-QYI-FIS-021','Fischer QiYi Cube', '2', 6990, 3);
call sp_agregarProducto('MC-QYI-FLU-021','Fluffy QiYi Cube', '2', 6990, 8);
call sp_agregarProducto('MC-QYI-PAC-2345','Pack 2x2 3x3 4x4 5x5 QiYi', '2', 23990, 2);
call sp_agregarProducto('PZ-WDN-SUD-4305','Wooden Sudoku', '2', 19990, 1);

call sp_agregarProducto('GR-CUA-3348','ESTANDAR Cuadro 33x48 cm', '3', 6000, 75);
call sp_agregarProducto('GR-POS-3348','ESTANDAR Poster A3+', '3', 1500, 0);
call sp_agregarProducto('GR-HCU-3348','HOLO Cuadro 33x48', '3', 8000, 0);

call sp_agregarProducto('PPL-LIB-601','Libreta Estándar 60 pgs', '4', 3000, 5);
call sp_agregarProducto('PPL-LAP-543','Lápiz Pasta Especial Sanrio Variedades', '4', 2000, 25);
call sp_agregarProducto('PPL-LAP-345','Lápiz Gel Borrable Negro', '4', 1500, 4);
call sp_agregarProducto('PPL-LAP-013','Lápiz Gel Figuras Variedades', '4', 1500, 25);
call sp_agregarProducto('PPL-GOM-001','Goma Sorpresa Sanrio Variedades', '4', 2000, 36);
call sp_agregarProducto('PPL-POR-012','Portaminas Sanrio Variedades', '4', 3000, 12);

call sp_agregarProducto('JAC-LLA-688','LLavero Mediano Variedades', '5', 3000, 18);
call sp_agregarProducto('JAC-LLA-850','Llavero Grande Figuras Variedades', '5', 4500, 36);
call sp_agregarProducto('JAC-MIN-487','Mini Peluche Sanrio Variedades', '5', 8500, 12);
call sp_agregarProducto('JAC-MIN-652','Mini Peluche Pokemon Variedades', '5', 7000, 10);
call sp_agregarProducto('JAC-ANI-732','Anime CSM 20 cm Plush', '5', 15000, 8);
call sp_agregarProducto('JAC-ANI-254','Anime CSM Pochita Plush', '5', 15000, 3);
call sp_agregarProducto('JAC-ANI-228','Anime Naruto 20 cm Plush', '5', 15000, 1);
call sp_agregarProducto('JAC-ANI-559','Anime SXF Anya 20 cm Plush', '5', 12000, 1);
call sp_agregarProducto('JAC-ANI-322','Anime Pokemon 20 cm Plush', '5', 15000, 12);
call sp_agregarProducto('JAC-GEN-325','Genshin Impact 20 cm Plush', '5', 15000, 3);
call sp_agregarProducto('JAC-ROB-783','Roblox Rainbow Friends 25 cm Plush', '5', 15000, 8);
call sp_agregarProducto('JAC-ROB-874','Roblox Garten of Banban 25 cm Plush', '5', 15000, 12);
call sp_agregarProducto('JAC-CAP-542','Capybara 12 cm Plush', '5', 4000, 24);
call sp_agregarProducto('JAC-CAP-920','Capybara 20 cm Plush', '5', 8000, 12);
call sp_agregarProducto('JAC-CAP-111','Capybara 35 cm Plush', '5', 15000, 6);



