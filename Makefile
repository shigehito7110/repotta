build:
	docker-compose build --no-cache --parallel --compress
up:
	docker-compose up -d
down:
	docker-compose down --remove-orphans
down-all:
	docker-compose down --remove-orphans --rmi local -v
log:
	docker-compose logs -f
ps:
	docker-compose ps -a
start:
	@make build
	@make up
restart:
	@make down-all
	@make build
	@make up
app:
	docker-compose exec app sh
node:
	docker-compose exec front sh
postgres:
	docker-compose exec db sh
