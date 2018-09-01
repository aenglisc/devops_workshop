USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-bash:
	docker-compose run app bash

app-build:
	docker-compose build

app-setup: app-build
	docker-compose run app bin/setup

app-install:
	docker-compose run app mix deps.get

app-db-drop:
	docker-compose run app mix ecto.drop

app-db-prepare:
	docker-compose run app mix ecto.create
	docker-compose run app mix ecto.migrate
