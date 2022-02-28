# Containerized services offer Linux administrators flexible options and often increased performance.  Perform the following tasks with docker containers.
#
# 1. Stop the docker container 'docker1'
# 2. Delete the docker container 'docker2'
# 3. Create a docker container 'docker3' ensuring it automatically restarts when the system reboots
# 4.map port 80 on the container to 8080 on the local machine and use the latest version of nginx
#
# ***NOTE: you will need to install, start, and run docker to do this live
#               1. yum install docker
#               2. docker container create --name docker1 -p 80:8080 --restart unless-stopped nginx
#               3. docker container start docker01 
#               4. docker container create --name docker2 -p 80:8080 --restart unless-stopped nginx
# ---------------------------------------------------------------------------------------------------------------------------------------------------

docker container ls 

# lists all docker containers

docker container stop docker1 

# this will stop docker1 which will have been listed in the ls command

docker container rm docker2

# this will remove the docker2 container

docker container create --name docker3 -p 80:8080 --restart unless-stopped nginx

# this creates the container with the correct name, -p maps the ports and unless-stopped will restart the container unless manually stopped