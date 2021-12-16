# Empties log folder
rm logs/*

# Run docker image
docker-compose down
docker-compose up -d --force-recreate
