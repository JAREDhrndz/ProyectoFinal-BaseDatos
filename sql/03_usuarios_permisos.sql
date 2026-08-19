-- Usuario lectura
CREATE USER usr_consulta WITH PASSWORD 'pwd_consulta_123';
GRANT CONNECT ON DATABASE bd_inventario TO usr_consulta;
GRANT USAGE ON SCHEMA public TO usr_consulta;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO usr_consulta;

-- Usuario captura
CREATE USER usr_captura WITH PASSWORD 'pwd_captura_123';
GRANT CONNECT ON DATABASE bd_inventario TO usr_captura;
GRANT USAGE ON SCHEMA public TO usr_captura;
GRANT SELECT, INSERT, UPDATE ON ALL TABLES IN SCHEMA public TO usr_captura;