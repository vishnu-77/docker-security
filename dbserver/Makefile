# Change your SID to your own one
SID=u1234567
NAME=csvs_dbserver
ALL:
	docker build --build-arg USERNS_REMAP=default -t $(SID)/$(NAME)_i .
run:
	docker network create --subnet=203.0.113.0/24 $(SID)/$(NAME)_net
	docker run -d --userns=host --net $(SID)/$(NAME)_net --ip 203.0.113.201 --hostname db.cyber23.test -e MYSQL_ROOT_PASSWORD="CorrectHorseBatteryStaple" -e MYSQL_DATABASE="csvs23db" --name $(SID)_$(NAME)_c $(SID)/$(NAME)_i
	echo "Waiting for the database server to spin up..."
	sleep 30  
	docker exec -i $(SID)_$(NAME)_c mysql -uroot -pCorrectHorseBatteryStaple < sqlconfig/csvs23db.sql
clean:
	-docker kill $(SID)_$(NAME)_c
	-docker rm $(SID)_$(NAME)_c
	-docker network rm $(SID)/$(NAME)_net

