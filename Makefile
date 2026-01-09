APP_NAME=luna
PORT?=8080

.PHONY: help build test docker-build up down logs restart

help:
	@echo "Commandes disponibles :"
	@echo "  make build        -> build Maven"
	@echo "  make test         -> tests Maven"
	@echo "  make docker-build -> build image Docker"
	@echo "  make up           -> lance Luna (docker-compose)"
	@echo "  make down         -> stop Luna"
	@echo "  make logs         -> logs Luna"
	@echo "  make restart      -> restart Luna"

build:
	mvn -q -DskipTests package

test:
	mvn -q test

docker-build:
	docker build -t $(APP_NAME):dev .

up:
	docker-compose up -d --build

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d --build

logs:
	docker-compose logs

