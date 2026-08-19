-- Detalle ventas
SELECT v.id_venta, p.nombre, c.nombre AS categoria, v.cantidad, (v.cantidad * p.precio) AS total
FROM ventas v
JOIN productos p ON v.id_producto = p.id_producto
JOIN categorias c ON p.id_categoria = c.id_categoria;

-- Ingresos por producto
SELECT p.nombre, SUM(v.cantidad) AS unidades, SUM(v.cantidad * p.precio) AS ingresos
FROM ventas v JOIN productos p ON v.id_producto = p.id_producto
GROUP BY p.nombre;

-- Stock bajo
SELECT nombre, stock FROM productos WHERE stock < 10;

-- Productos por categoria
SELECT c.nombre, COUNT(p.id_producto) AS total_prod
FROM categorias c LEFT JOIN productos p ON c.id_categoria = p.id_categoria
GROUP BY c.nombre;

-- Precio promedio
SELECT c.nombre, ROUND(AVG(p.precio), 2) AS promedio
FROM categorias c JOIN productos p ON c.id_categoria = p.id_categoria
GROUP BY c.nombre;