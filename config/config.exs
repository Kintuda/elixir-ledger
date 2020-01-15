# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ledger,
  ecto_repos: [Ledger.Repo]

# Configures the endpoint
config :ledger, LedgerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v7fZ2So9DiYFBTqr792Eprv0/82qmMqSfw6vKW0l2+mhSep5fXyly2QGwOR3sIJw",
  render_errors: [view: LedgerWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Ledger.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
