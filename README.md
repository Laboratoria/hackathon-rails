# < Shopping >

> Preparando el entorno d etrabajo.

1. Descargar de `https://rubyinstaller.org/downloads/` e instalar, la versión **2.4.3-2** de `ruby`.

![rubyInstall-0]

[rubyInstall-0]: ./assets/images/Screenshot_1.png

![rubyInstall-1]

[rubyInstall-1]: ./assets/images/Screenshot_2.png

![rubyInstall-2]

[rubyInstall-2]: ./assets/images/Screenshot_3.png

![rubyInstall-3]

[rubyInstall-3]: ./assets/images/Screenshot_4.png

![rubyInstall-4]

[rubyInstall-4]: ./assets/images/Screenshot_5.png

> Verificamos con el comando `ruby -v`.

![rubyInstall-5]

[rubyInstall-5]: ./assets/images/Screenshot_11.png

2. Descargar de `https://www.postgresql.org/download/windows/` e instalar la versión **9.4.17** de `PostgreSQL`.

![pgInstall-0]

[pgInstall-0]: ./assets/images/Screenshot_6.png

![pgInstall-1]

[pgInstall-1]: ./assets/images/Screenshot_7.png

![pgInstall-2]

[pgInstall-2]: ./assets/images/Screenshot_8.png

![pgInstall-3]

[pgInstall-3]: ./assets/images/Screenshot_9.png

![pgInstall-4]

[pgInstall-4]: ./assets/images/Screenshot_10.png

> Verificamos al ejecutar **pgAdmin III** que es nuestro administrador de base de datos.

![pgInstall-5]

[pgInstall-5]: ./assets/images/Screenshot_12.png

3. Instalamos la gema `rails` desde `https://rubygems.org/` con la instrucción `gem install rails -v 4.2.10 --no-ri --no-rdoc` en un **cmd**.

![railsInstall-0]

[railsInstall-0]: ./assets/images/Screenshot_13.png

![railsInstall-1]

[railsInstall-1]: ./assets/images/Screenshot_14.png

![railsInstall-2]

[railsInstall-2]: ./assets/images/Screenshot_15.png

![railsInstall-3]

[railsInstall-3]: ./assets/images/Screenshot_16.png

![railsInstall-4]

[railsInstall-4]: ./assets/images/Screenshot_17.png

![railsInstall-5]

[railsInstall-5]: ./assets/images/Screenshot_18.png

> Verificamos con la instrucción `rails -v`.

![railsInstall-6]

[railsInstall-6]: ./assets/images/Screenshot_19.png

4. En este punto crearemos un proyecto de `rails` con una configuración de base de datos para `PostgreSQL`. Para un proyecto existente puedes ir al siguiente paso.

> Con la instrucción `rails new my-app -d postgresql` en un **cmd**.

![railsApp-0]

[railsApp-0]: ./assets/images/Screenshot_20.png

5. Entramos al proyecto con la instruccion `cd my-app` y configuramos `./config/database.yml` con:

![railsApp-1]

[railsApp-1]: ./assets/images/Screenshot_21.png

> **postgres** es el usuario por defecto con permisos de **Admin**, es recomendable crear uno diferente. Y en `password` debe ir el que configuraste al instalar `PostgreSQL`.

6. Vamos a crear nuestra base de datos con la instrucción `rake db:create` dentro del directorio del proyecto.

7. Con la instrucción `rails s` podremos ver funcionando nuestro servidor en `localhost:3000`.

![railsApp-2]

[railsApp-2]: ./assets/images/Screenshot_22.png
