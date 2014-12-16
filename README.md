
---------

Deployment
----------
El deployment de esta aplicación se ha llevado acabo mediante [Heroku



Instrucciones para ejecutar en local
------------------------------------
1. Clona este repositorio:

        $ git clone https://github.com/jonathan1985/proyecto-padel.git

2. Realiza un bundle install sin el entorno de producción:

        $ bundle install --without production

3. Migra la base de datos:

        $ bundle exec rake db:migrate

4. Inicia el servidor de Rails:

        $ rails server

5. Abre el navegador y ve al puerto de la aplicación

        $ http://localhost:3000/

