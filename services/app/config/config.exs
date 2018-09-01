# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :devops_workshop,
  ecto_repos: [DevopsWorkshop.Repo]

# Configures the endpoint
config :devops_workshop, DevopsWorkshopWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hgLhH4+YxtRqt47JoBg9ZGv4TWd8RqkRRYroLrTT12UHsstCHv9MoB6flQmWBwDd",
  render_errors: [view: DevopsWorkshopWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DevopsWorkshop.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
