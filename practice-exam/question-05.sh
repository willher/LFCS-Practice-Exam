# Containerized services offer Linux administrators flexible options and often increased performance.  Perform the following tasks with docker containers.
#
# 1. Stop the docker container 'docker1'
# 2. Delete the docker container 'docker2'
# 3. Create a docker container 'docker3' ensuring it automatically restarts when the system reboots
# 4.map port 80 on the container to 8080 on the local machine and use the latest version of nginx
#
# ---------------------------------------------------------------------------------------------------------------------------------------------------

docker container ls 

# lists all docker containers

docker container stop docker1 

# this will stop docker1 which will have been listed in the ls command

docker container rm docker2

# this will remove the docker2 container

docker container create --name docker3 -p 80:8080 --restart unless-stopped nginx

# this creates the container with the correct name, -p maps the ports and unless-stopped will restart the container unless manually stopped
