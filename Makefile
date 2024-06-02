COMPOSE = docker compose -f docker-compose.dev.yaml


build: docker-pull docker-build
start: docker-up
clean: docker-clean
stop: docker-down

### Docker
docker-pull: ## pull docker images
	$(COMPOSE) pull --ignore-pull-failures
docker-build: ## build images from Dockerfiles
	$(COMPOSE) build 
docker-build-force:
	$(COMPOSE) build --force-rm
docker-up: ## start containers
	$(COMPOSE) up -d
docker-down: ## stop and remove containers
	$(COMPOSE) down
docker-clean: ## remove all containers, images, and networks
	$(COMPOSE) down --rmi all --remove-orphans
docker-clean-all: ## remove all containers, images, volumes, and networks
	$(COMPOSE) down --rmi all --volumes --remove-orphans