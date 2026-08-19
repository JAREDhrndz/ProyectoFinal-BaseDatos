-- Tablas principales
CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT
);

CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio NUMERIC(10, 2) NOT NULL CONSTRAINT chk_precio CHECK (precio > 0),
    stock INT NOT NULL CONSTRAINT chk_stock CHECK (stock >= 0),
    id_categoria INT REFERENCES categorias(id_categoria) ON DELETE CASCADE
);

CREATE TABLE ventas (
    id_venta SERIAL PRIMARY KEY,
    id_producto INT REFERENCES productos(id_producto),
    cantidad INT NOT NULL CONSTRAINT chk_cantidad CHECK (cantidad > 0),
    fecha_venta TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Indices
CREATE INDEX idx_productos_categoria ON productos(id_categoria);