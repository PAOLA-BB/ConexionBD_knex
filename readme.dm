
# Knex 
##(Manual de uso en un nuevo proyecto con Node y una base de datos relacional [postgres])
knex es un constructos de **consultas SQL** para JavaScript, es una abtracción delgada en la parte superior del controlador. se utiliza en las bases de datosrelacionales (PG, MYSQL, SQL).

#iNSTALACIÓN
Se puede instalar de dos maneras Knex cuando voy a utilizarlo en un proyecto:

1. Global : 'npm i knex -g'
    - Recordando que '-g' es un modificado para instalar de forma global (o sea en toda la computadora, no solo para el proyecto en que se crre el comando).

2. Local: 'npm i knex'
    -Lo que permitirá instalrlo solo para el proyecto en que corras el comando.

    se recomienda la instalación local  para los proyectos, para evitar problemas de versionamiento con knex.

###Scripts

si optas por la opciónn 2, todos los comandos que mencionemos mas adelante se deberán agregar en un script dentro de nuestro package.json y   la instacion se hará despupes de inicializar un proyecto.

##Iniciar un proyecto

1. inicializamos el  pryecto dentro de una carperta destinada para el mismo.
-'npm init -y'

2. instalar los recursos necesarios:
    -express: Biblioteca para creacion de API.
    -knex: Cosntructor de consultas (query Builder).
    -pg: Driver de Postgres, puedes cambiarlo dependiendo de la base de datos que ocupes.

3. crear mi .gitignore:
    -node_modules/

##Configuración de knex

1. Iniciar laconfiguracion de knex para el CRUD de las operaciones por medio de 'migrations' en Knex.
    - 'knex init' : Esto nos autogenerara un archivo llamado knexfile.js.
        -nota: si tu hiciste una instalación local para poder correer el comando requieres agregarlo a un script en el package.json:
            -vamos a Packege.json
            -Agregamos un Scripts:
            -```
             "scripts": {
                "test": "echo \"Error: no test specified\" && exit 1"
                "knex": "knex init"
                "knex_migrations": "knex migrate: make cliente && knex migrate : make producto"
                },
            ```
            -y para ejecutarlo en la terminal corremos:
                -'npm run nombreDelScript' => 'npm run knex'

```
Migraciones

    Es un controkl de versiones de nestra base de daros, y nos permite crear tablas, establecer relaciones, modificarlas  y por supuesto eliminarlas, y todo esto con comandos y de manera programacional en vez de directamente hacerlo en la base de datos.

2. Ejecutar en la terminal el comando knex init nos ayudará a inicializar un archivo de configuración de knex para nuestro proyecto.Este creará el archivo knexfile.js en la raíz de nuestro proyecto, donde tendremos que configurar manualmente la conexión y configuración de la base de datos para los diferentes entornos.

    -Desarrollo: Development.
    -En preparación: Staging.
    -Producción: Production.

3. Agregar laconfiguracion para Desarrollo porque es lo que estamos haciendo ahora:

```

```
 4. crear Migraciones

 -  se crena migracione tanto entidades queramos agregar a nuestras bases de datos.

 por ejemplo, yo quiero crear la entidad cliente,
    -'knex migrate: make nombreTabla'
    -'knex migrate: make


