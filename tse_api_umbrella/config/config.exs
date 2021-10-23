# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :tse_api,
  ecto_repos: [TseApi.Repo]

config :tse_api_web,
  ecto_repos: [TseApi.Repo],
  generators: [context_app: :tse_api]

# Configures the endpoint
config :tse_api_web, TseApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+Bhu96pF+Y5nBxNLVJ9AZ60XWUqpMLk60U0bYP87DZNLNag+Vum72s6d9dnh1oNP",
  render_errors: [view: TseApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: TseApi.PubSub,
  live_view: [signing_salt: "dAY/JB41"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
