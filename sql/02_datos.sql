-- Insercion categorias
INSERT INTO categorias (nombre, descripcion) VALUES
('Electronica', 'Dispositivos y accesorios'),
('Papeleria', 'Articulos de oficina'),
('Hogar', 'Productos generales');

-- Insercion productos
INSERT INTO productos (nombre, precio, stock, id_categoria) VALUES
('Mouse Inalambrico', 250.00, 15, 1),
('Teclado Mecanico', 850.00, 10, 1),
('Monitor 24"', 3200.00, 5, 1),
('Cable HDMI', 120.00, 30, 1),
('Audifonos Bluetooth', 450.00, 20, 1),
('Cuaderno Profesional', 45.00, 100, 2),
('Plumas Azules', 60.00, 50, 2),
('Grapadora', 180.00, 12, 2),
('Hojas Carta', 750.00, 8, 2),
('Lampara Escritorio', 290.00, 14, 2),
('Silla Ergonomica', 2100.00, 4, 3),
('Organizador', 150.00, 25, 3),
('Cafetera', 650.00, 6, 3),
('Termo 1L', 220.00, 18, 3),
('Ventilador USB', 130.00, 15, 3);

-- Insercion ventas
INSERT INTO ventas (id_producto, cantidad) VALUES
(1, 2), (2, 1), (6, 5), (7, 2), (3, 1),
(4, 3), (8, 1), (11, 1), (14, 2), (5, 1),
(6, 10), (12, 3), (1, 1), (13, 1), (9, 2);