##Start Docker
sudo systemctl start docker

##Greenbone Start
docker compose -f /home/$(whoami)/greenbone-community-container/compose.yaml  up -d

##Signature UpdateS
docker compose -f /home/$(whoami)/greenbone-community-container/compose.yaml -p greenbone-community-edition pull notus-data vulnerability-tests scap-data dfn-cert-data cert-bund-data report-formats data-objects gvm-config gvm-config gvm-config gvm-config

docker compose -f /home/$(whoami)/greenbone-community-container/compose.yaml -p greenbone-community-edition up -d notus-data vulnerability-tests scap-data dfn-cert-data cert-bund-data report-formats data-objects gvm-config gvm-config gvm-config gvm-config

docker system prune -af --volumes
