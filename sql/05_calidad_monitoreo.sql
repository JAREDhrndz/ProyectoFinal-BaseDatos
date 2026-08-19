-- Monitoreo
SELECT pg_database_size(current_database()) / 1024 / 1024 AS mb;
SELECT count(*) FROM pg_stat_activity WHERE datname = current_database();

-- Analisis de consulta
EXPLAIN SELECT * FROM productos WHERE id_categoria = 1;

-- Validacion de integridad
SELECT * FROM productos WHERE id_categoria IS NULL OR precio <= 0;
SELECT id_producto, COUNT(*) FROM productos GROUP BY id_producto HAVING COUNT(*) > 1;