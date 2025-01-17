# MockServerCAKEPHP

## Simple Mock Server made with CakePHP


### install
~~~
Run in container:

composer install

chmod -R 777 logs/
chmod -R 777 tmp/
~~~

### Start docker
~~~sh
/usr/bin/docker compose -f ~/Git/MockServerCAKEPHP/docker-compose.yml -p mockservercakephp up -d
~~~


### endpoints 

~~~text
http://localhost:8082/echo/get-status
http://localhost:8082/
http://localhost:8082/echo
http://localhost:8082/echo/index
http://localhost:8082/echo/get-status
http://localhost:8082/index.php/echo/get-status
http://localhost:8081/index.php/echo
~~~


### call endpoint with browser

~~~bash
open http://localhost:8082/
~~~

### call endpoint with curl

~~~bash
curl  -X POST --header "Content-Type: application/json"  http://localhost:8082/echo
~~~

### Clear cache
 
~~~bash
cd html && bin/cake cache clear_all
~~~