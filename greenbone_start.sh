##Start Docker
sudo systemctl start docker

##Greenbone Start
docker compose -f /home/$(whoami)/greenbone-community-container/docker-compose.yml  up -d
 