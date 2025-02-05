# Run docker ps

echo "Checking container is up or not "
docker ps

wait

# Run docker stats

echo " Checking container statuses "
docker stats --no-stream

