# Fundamentos de MongoDB

### ¿Qué es una base de datos no relacional y qué es MongoDB?
Una base de datos no relacional (NoSQL) no utiliza tablas ni esquemas rígidos. MongoDB es una base de datos orientada a documentos que almacena la información en estructuras flexibles de tipo JSON (BSON).

### ¿Qué son una colección, un documento y un campo?
- **Colección:** Equivalente a una tabla en bases relacionales.
- **Documento:** Equivalente a un registro o fila.
- **Campo:** Equivalente a una columna o atributo.

### Diferencias principales
Las bases relacionales exigen un esquema estricto y relaciones mediante llaves foráneas. Las bases de documentos permiten esquemas dinámicos, anidamiento de datos y evitan la necesidad de múltiples uniones (JOINs).

### Ventajas y limitaciones
- **Ventajas:** Flexibilidad en los datos y alta escalabilidad horizontal.
- **Limitaciones:** Menor soporte para transacciones complejas ACID y mayor consumo de espacio.

### PostgreSQL vs MongoDB
PostgreSQL se utiliza para datos altamente estructurados y transacciones críticas. MongoDB se prefiere para catálogos dinámicos, registros de auditoría o datos semiestructurados.

### Aplicación en el proyecto
PostgreSQL maneja el inventario central y las ventas. MongoDB se usaría para almacenar la bitácora de eventos y cambios de precios de los productos.

### Ejemplo en JSON
```json
{
  "_id": "60d5ec49f1a2c81234567890",
  "producto_id": 1,
  "evento": "CAMBIO_PRECIO",
  "precio_anterior": 220.00,
  "precio_nuevo": 250.00,
  "fecha": "2026-08-18T12:00:00Z"
}