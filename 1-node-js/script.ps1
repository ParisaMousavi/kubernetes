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

#RUNNING A SHELL INSIDE AN EXISTING CONTAINER
docker exec -it kubia-container bash
# options:
#  -i, which makes sure STDIN is kept open. You need this for entering commands
# into the shell.
#  -t, which allocates a pseudo terminal (TTY).
# You need both if you want the use the shell like you’re used to.


# Listing processes from inside a container
ps aux

# Stopping and removing a container
docker stop kubia-container
docker rm kubia-container

