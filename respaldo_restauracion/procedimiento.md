# Respaldo y Restauración

### 1. Generar respaldo
pg_dump -U postgres -d bd_inventario -F c -b -v -f respaldo_inventario.dump

### 2. Restaurar respaldo
createdb -U postgres bd_restaurada
pg_restore -U postgres -d bd_restaurada -v respaldo_inventario.dump