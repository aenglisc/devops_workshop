USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-bash:
	docker-compose run --user=$(USER) app bash

app-bash-root:
	docker-compose run app bash

app-build:
	docker-compose build

app-setup: app-build app-install app-db-prepare

app-install:
	docker-compose run app make install

app-db-drop:
	docker-compose run app mix ecto.drop

app-db-prepare:
	docker-compose run app make db-prepare
