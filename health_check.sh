echo " Test healthcheck for the webserver"
echo 
docker inspect --format='{{json .State.Health}}' u5569451_csvs_webserver_c

sleep 10

echo 
echo " Test healthcheck for the database"
echo 

docker inspect --format='{{json .State.Health}}' u5569451_csvs_dbserver_c

