# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :manoonchai,
  ecto_repos: [Manoonchai.Repo]

# Configures the endpoint
config :manoonchai, ManoonchaiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sSU13NyILSJTCwLiMLqsRStIihHZF7vpfkV21O3AOrjM++Sg9PldJE0idqg2Dg9N",
  render_errors: [view: ManoonchaiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Manoonchai.PubSub,
  live_view: [signing_salt: "x3tKsljX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
