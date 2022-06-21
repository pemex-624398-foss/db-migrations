# DB Migrations
Migraciones de bases de datos PostgreSQL.


## Requerimientos
1. Crear base de datos foss_dbm
2. Crear esquemas
    * globalization
    * security
3. Crear tablas
    * globalization.country
    * security.user
4. Importar datos en las tablas creadas
5. Crear vista para consultar datos del usuario y el nombre del país al que pertenece: globalization.user_extended
6. Crear función para consulta de usuarios por país: fn_user_select


## Preparación

### Instalar [Docker](https://www.docker.com/get-started/) y herramientas cliente de PostgreSQL.

#### Windows
Descargar y ejecutar el [instalador para Windows](https://www.postgresql.org/download/windows/).

#### Linux
```
sudo apt-get update
sudo apt-get install postgresql-client
```

#### Mac
```shell
brew doctor
brew update
brew install libpq
brew link --force libpq ail
```

### Descargar imágenes
```shell
docker pull postgres:14.2
docker pull dpage/pgadmin4:6.10
```

### Iniciar servicios
```shell
docker-compose -f compose.yml up -d

# Abrir PgAdmin en http://localhost:5433/
```

### Interacción con PostgreSQL

#### Comando psql incluido en el contenedor
```shell
# Crear la base de datos
docker exec db-migrations_pg createdb -U postgres -E UTF8 foss_dbm

# Ejecutar un script (Linux & Mac)
docker exec -i db-migrations_pg psql -U postgres foss_dbm < "path/to/file.sql"

# Eliminar la base de datos
docker exec db-migrations_pg dropdb -U postgres foss_dbm
```

#### Comando psql instalado en un equipo cliente
```shell
# Crear la base de datos
createdb -h localhost -U postgres -E UTF8 foss_dbm

# Ejecutar un script
psql -h localhost -U postgres -f "path/to/file.sql" foss_dbm

# Eliminar la base de datos
dropdb -h localhost -U postgres foss_dbm
```


## Migraciones

* Versionadas: *Vn_n_n_n__Some_description_for_the_script.sql*
* Repetibles: *R__Some_description_for_the_script.sql*


### Ejecución Manual
```shell
# Ejemplo
# Opción 1:
docker exec -i db-migrations_pg psql -U postgres < "Migrations/2022/05/V2022_05_03_001__Crear_esquemas.sql"

# Opción 2:
psql -h localhost -U postgres -f "Migrations/2022/05/V2022_05_03_001__Crear_esquemas.sql" foss_dbm

# Optimizado
for SCRIPT in $(ls Migrations/2022/05 | sort); do psql -h localhost -U postgres -f "Migrations/2022/05/$SCRIPT" foss_dbm; done
for SCRIPT in $(ls Migrations/2022/06 | sort); do psql -h localhost -U postgres -f "Migrations/2022/06/$SCRIPT" foss_dbm; done
for SCRIPT in $(ls Migrations | grep -E ".*\.sql" | sort); do echo $SCRIPT; done
```


### Automatización de Migraciones con [Evolve](https://evolve-db.netlify.app/)

#### Instalación de Evolve
```shell
# Instalación local
dotnet new tool-manifest # permite invocar dotnet tool restore
dotnet tool install Evolve.Tool

# Instalación global
dotnet tool install --global Evolve.Tool
```

#### Ejecución de Migraciones
```shell
evolve migrate '@args.txt'
```
