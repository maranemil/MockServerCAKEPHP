URL=http://localhost:8082/echo/get-status
URL=http://localhost:8082/
URL=http://localhost:8082/echo
URL=http://localhost:8082/echo/index
URL=http://localhost:8082/echo/get-status
URL=http://localhost:8081/index.php/echo

#curl  $URL
curl  -X POST --header "Content-Type: application/json"  $URL