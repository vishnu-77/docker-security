echo " Test healthcheck for the webserver"
echo 
docker inspect --format='{{json .State.Health}}' container_name


sleep 10

echo 
echo " Test healthcheck for the database"
echo 

docker inspect --format='{{json .State.Health}}' container_name

