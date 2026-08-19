# Proyecto Final - Administración de Base de Datos

**Integrantes:** [Hernandez Ortega Jared Alonso - Aleman Avalos Christian Oswaldo]  
**Caso de Estudio:** Control de Inventario y Ventas. El objetivo es administrar productos, categorías y registrar salidas de mercancía.

### Modelo Relacional
![Diagrama del Modelo](evidencias/diagrama.png)

### Requisitos para ejecutar
- PostgreSQL
- Terminal psql o pgAdmin

### Orden de ejecución de scripts
Los scripts ubicados en la carpeta `sql/` deben ejecutarse en el siguiente orden:
1. `01_creacion.sql`
2. `02_datos.sql`
3. `03_usuarios_permisos.sql`
4. `04_consultas.sql`
5. `05_calidad_monitoreo.sql`

### Procedimientos
- **Respaldo y Restauración:** Detallado en `respaldo_restauracion/procedimiento.md`.
- **Importación/Exportación:** Detallado en `importacion_exportacion/procedimiento.md`.
- **Automatización:** Script en `automatizacion/respaldo_auto.bat`.
- **Usuarios y Monitoreo:** Se crearon dos roles (consulta y captura) limitando los privilegios mediante GRANT. El monitoreo se realiza mediante `pg_database_size` y `EXPLAIN`.

### Teoría de MongoDB
[Ver Fundamentos de MongoDB](teoria_mongodb/fundamentos.md)

### Conclusiones y Fuentes
- **Conclusión:** [Escribe un párrafo corto sobre lo que aprendiste administrando esta base].
- **Uso de IA:** Se utilizó IA como asistente para la estructuración base de los scripts SQL y el formato Markdown.