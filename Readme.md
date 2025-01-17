# MockServerCAKEPHP


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