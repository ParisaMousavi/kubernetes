# build container image
docker build -t kubia .


# run container image
docker run --name kubia-container -p 8080:8080 -d kubia

# run application
http://localhost:8080
# or
curl localhost:8080
# output
# Host name is the ID of the Docker container

docker inspect kubia-container