# Importación y Exportación

### 1. Exportar tabla a CSV
\copy productos TO 'productos_export.csv' WITH (FORMAT csv, HEADER);

### 2. Importar CSV a tabla
\copy productos FROM 'productos_import.csv' WITH (FORMAT csv, HEADER);