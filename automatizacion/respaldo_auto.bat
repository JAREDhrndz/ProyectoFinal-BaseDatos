@echo off
set PGPASSWORD=pwd_inventario
pg_dump -U postgres -d bd_inventario -f "C:\respaldos\backup_%date:~-4,4%%date:~-7,2%%date:~-10,2%.sql"