# Configure a docker container, docker01 to do the following:
#   a. Restart automatically when the system is restarted
#   b. map port 70 on the continer to port 2000 on the host.
#   c. run the most recent release of 'foo'
#   d. ensure docker01 restarts when the server restarts

yum install docker

docker container create --name docker01 --restart unless-stopped -p 70:2000 foo 

docker container list

docker container start docker01 

docker container autostart docker01 
