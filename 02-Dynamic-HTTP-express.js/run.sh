# Empties log folder
rm logs/*

# Run docker image
docker-compose up --no-build -d --force-recreate
