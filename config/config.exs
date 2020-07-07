# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tin_checker,
  ecto_repos: [TinChecker.Repo]

# Configures the endpoint
config :tin_checker, TinCheckerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "++MBt1Q+mMCPl1jNOUzdIT9sQ/G8g1Gb0NCgynHrL4YSpACHr0ry/uppJvrXOXkN",
  render_errors: [view: TinCheckerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TinChecker.PubSub,
  live_view: [signing_salt: "WVg7ZYPT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
