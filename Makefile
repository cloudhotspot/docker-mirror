init:
	@ docker volume create --name registry_cache

build:
	@ docker-compose build --pull registry

registry: init
	@ docker-compose up -d registry

clean:
	@ docker-compose down -v || true