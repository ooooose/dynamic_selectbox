up:
	docker-compose up -d

build:
	docker-compose build
	
stop:
	docker-compose stop

down:
	docker-compose down

ps:
	docker-compose ps -a

logs:
	docker-compose logs -f api

bundle:
	docker-compose run --rm app bundle install --without production

g-model:
	docker-compose run --rm app bin/rails g model $(NAME)

d-model:
	docker-compose run --rm app bin/rails d model $(NAME)

g-controller:
	docker-compose run --rm app bin/rails g controller $(NAME)

d-controller:
	docker-compose run --rm app bin/rails d controller $(NAME)

migrate:
	docker-compose run --rm app bin/rails db:migrate

fresh:
	docker-compose run --rm app bin/rails db:migrate:reset

seed:
	docker-compose run --rm app bin/rails db:seed
