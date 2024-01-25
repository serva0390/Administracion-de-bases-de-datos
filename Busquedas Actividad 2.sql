/******Busqueda de clientes de 2021 en base a su fecha de factura******/

SELECT 
cliente.nombre AS nombre,
cliente.apellido AS apellido,
factura.fecha
FROM
cliente
INNER JOIN
factura ON cliente.id_cliente = factura.id_cliente
WHERE
YEAR(factura.fecha) = 2021
ORDER BY 
factura.fecha ASC;


/******Busqueda de clientes de 2022 en base a su fecha de factura******/

SELECT 
cliente.nombre AS nombre,
cliente.apellido AS apellido,
factura.fecha
FROM
cliente
INNER JOIN
factura ON cliente.id_cliente = factura.id_cliente
WHERE
YEAR(factura.fecha) = 2021
ORDER BY 
factura.fecha ASC;


/******Busqueda de clientes de 2021 con factura del mes de diciembre******/

SELECT 
cliente.nombre AS nombre,
cliente.apellido AS apellido,
factura.fecha
FROM
cliente
INNER JOIN
factura ON cliente.id_cliente = factura.id_cliente
WHERE
YEAR(factura.fecha) = 2021
AND MONTH(factura.fecha) = 12
ORDER BY 
factura.fecha ASC;


/******Busqueda de compras de clientes especificos******/

SELECT 
    cliente.nombre AS nombre_cliente,
    cliente.apellido AS apellido_cliente,
    factura.id_factura,
    factura.fecha,
    producto.nombre AS nombre_producto,
    detalle.cantidad,
    detalle.precio AS precio_unitario
FROM cliente AS cliente
JOIN factura AS factura ON cliente.id_cliente = factura.id_cliente
JOIN detalle AS detalle ON factura.id_detalle = detalle.id_detalle
JOIN producto AS producto ON detalle.id_producto = producto.id_producto
WHERE CAST (cliente.nombre AS varchar) = 'Valentina Anastasia' AND CAST(cliente.apellido AS varchar) = 'Huerta Corral';

SELECT 
    cliente.nombre AS nombre_cliente,
    cliente.apellido AS apellido_cliente,
    factura.id_factura,
    factura.fecha,
    producto.nombre AS nombre_producto,
    detalle.cantidad,
    detalle.precio AS precio_unitario
FROM cliente AS cliente
JOIN factura AS factura ON cliente.id_cliente = factura.id_cliente
JOIN detalle AS detalle ON factura.id_detalle = detalle.id_detalle
JOIN producto AS producto ON detalle.id_producto = producto.id_producto
WHERE CAST (cliente.nombre AS varchar) = 'Zayra Manuela' AND CAST(cliente.apellido AS varchar) = 'Gómez López ';

SELECT 
    cliente.nombre AS nombre_cliente,
    cliente.apellido AS apellido_cliente,
    factura.id_factura,
    factura.fecha,
    producto.nombre AS nombre_producto,
    detalle.cantidad,
    detalle.precio AS precio_unitario
FROM cliente AS cliente
JOIN factura AS factura ON cliente.id_cliente = factura.id_cliente
JOIN detalle AS detalle ON factura.id_detalle = detalle.id_detalle
JOIN producto AS producto ON detalle.id_producto = producto.id_producto
WHERE CAST (cliente.nombre AS varchar) = 'Dante Eduardo' AND CAST(cliente.apellido AS varchar) = 'Dolores Meza';

SELECT 
    cliente.nombre AS nombre_cliente,
    cliente.apellido AS apellido_cliente,
    factura.id_factura,
    factura.fecha,
    producto.nombre AS nombre_producto,
    detalle.cantidad,
    detalle.precio AS precio_unitario
FROM cliente AS cliente
JOIN factura AS factura ON cliente.id_cliente = factura.id_cliente
JOIN detalle AS detalle ON factura.id_detalle = detalle.id_detalle
JOIN producto AS producto ON detalle.id_producto = producto.id_producto
WHERE CAST (cliente.nombre AS varchar) = 'Ana Maribel' AND CAST(cliente.apellido AS varchar) = 'Cedillo Núñez';

SELECT 
    cliente.nombre AS nombre_cliente,
    cliente.apellido AS apellido_cliente,
    factura.id_factura,
    factura.fecha,
    producto.nombre AS nombre_producto,
    detalle.cantidad,
    detalle.precio AS precio_unitario
FROM cliente AS cliente
JOIN factura AS factura ON cliente.id_cliente = factura.id_cliente
JOIN detalle AS detalle ON factura.id_detalle = detalle.id_detalle
JOIN producto AS producto ON detalle.id_producto = producto.id_producto
WHERE cliente.nombre LIKE'Rodrigo Ismael';


/******Producto con mas ventas******/

SELECT 
producto.nombre AS nombre_producto,
detalle.cantidad AS cantidad_producto
FROM
detalle detalle
JOIN 
producto producto ON producto.id_producto = detalle.id_producto
ORDER BY detalle.cantidad DESC;

/******Producto con mas Stock******/

SELECT 
    producto.id_producto,
    producto.nombre AS nombre_producto,
    producto.stock AS cantidad_en_stock
FROM producto AS producto
ORDER BY cantidad_en_stock DESC;

SELECT TOP 1
    producto.id_producto,
    producto.nombre AS nombre_producto,
    producto.stock AS cantidad_en_stock
FROM producto AS producto
ORDER BY cantidad_en_stock DESC;


/******Ordenar las compras de antiguas a recientes******/

SELECT 
    cliente.nombre AS nombre_cliente,
    cliente.apellido AS apellido_cliente,
    factura.id_factura,
    factura.fecha,
    producto.nombre AS nombre_producto,
    detalle.cantidad,
    detalle.precio AS precio_unitario
FROM cliente AS cliente
JOIN factura AS factura ON cliente.id_cliente = factura.id_cliente
JOIN detalle AS detalle ON factura.id_detalle = detalle.id_detalle
JOIN producto AS producto ON detalle.id_producto = producto.id_producto
ORDER BY factura.fecha ASC;

/******Clientes ordenados en orden alfabetico******/

SELECT 
    id_cliente,
    nombre,
    apellido,
    fec_nac,
    telefono,
    email,
    direccion
FROM Cliente
ORDER BY CAST(apellido AS varchar) ASC, CAST(nombre AS varchar) ASC;


/******Identificar productos y categorias******/

SELECT 
    producto.id_producto,
    producto.nombre AS nombre_producto,
    producto.precio,
    producto.stock,
    categoria.nombre AS nombre_categoria
FROM producto AS producto
JOIN categoria AS categoria ON producto.id_categoria = categoria.id_categoria;


/******Encargados de sucursales******/

SELECT 
    NombreSucursal,
    NombreEncargado AS encargado_sucursal,
    DireccionSucursal,
    TelefonoSucursal,
    Ciudad,
    Estado
FROM Sucursales;


/******Empleados de sucursal Constitucion******/

SELECT 
    Empleados.NombreEmpleado,
    Empleados.DireccionEmpleado,
    Empleados.NumeroTelefono,
    Empleados.EdadEmpleado,
    Empleados.CorreoElectronico
FROM Empleados AS Empleados
JOIN Sucursales AS Sucursales ON Empleados.NumeroSucursal = Sucursales.NumeroSucursal
WHERE Sucursales.NombreSucursal = 'Akiras Boutique Constitucion';


/******Clientes mayores de 30 años******/
SELECT 
    id_cliente,
    nombre,
    apellido,
    fec_nac,
    telefono,
    email
FROM Cliente
WHERE DATEDIFF(YEAR, fec_nac, GETDATE()) > 30;




