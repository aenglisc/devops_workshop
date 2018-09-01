install:
	mix deps.get
	cd assets && npm install

db-prepare:
	mkdir -p priv/repo/migrations/
	mix ecto.create
	mix ecto.migrate
