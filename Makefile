new:
	docker-compose run app rails new . --force --database=mysql

up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down

ps:
	docker-compose ps -a

logs:
	docker-compose logs app

