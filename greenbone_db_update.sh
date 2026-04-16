##Start Docker
sudo systemctl start docker

##Greenbone Start
docker compose -f /home/$(whoami)/greenbone-community-container/docker-compose.yml  up -d

##Signature UpdateS
docker compose -f /home/$(whoami)/greenbone-community-container/docker-compose.yml -p greenbone-community-edition pull notus-data vulnerability-tests scap-data dfn-cert-data cert-bund-data report-formats data-objects

docker compose -f /home/honeybadger/greenbone-community-container/docker-compose.yml -p greenbone-community-edition up -d notus-data vulnerability-tests scap-data dfn-cert-data cert-bund-data report-formats data-objects

docker system prune -af --volumes
