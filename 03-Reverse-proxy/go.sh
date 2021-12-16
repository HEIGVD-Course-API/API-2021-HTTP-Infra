docker-compose down

rm -rf logs
mkdir logs
mkdir logs/dynamic
mkdir logs/static
mkdir logs/reverse

docker-compose up -d --force-recreate
