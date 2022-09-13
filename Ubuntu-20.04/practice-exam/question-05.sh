# Containerized services offer Linux administrators flexible options and often increased performance.  Perform the following tasks with docker containers.
#
# 1. Stop the docker container 'docker1'
# 2. Delete the docker container 'docker2'
# 3. Create a docker container 'docker3' ensuring it automatically restarts when the system reboots
# 4.map port 80 on the container to 8080 on the local machine and use the latest version of nginx
#
# ---------------------------------------------------------------------------------------------------------------------------------------------------

docker container stop docker01

docker container stop docker02
docker container rm docker02

docker container create --name docker03 -p 80:8080 --restart unless-stopped nginx
