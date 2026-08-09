git pull origin main
docker network inspect app-network >/dev/null 2>&1 || docker network create app-network
docker compose -f docker-compose.yml up -d --build
docker image prune -f
