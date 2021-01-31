# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :trolle,
  ecto_repos: [Trolle.Repo]

# Configures the endpoint
config :trolle, TrolleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bdz51K1xU2Eq1Kr0wu0670Zj/zPWWpXZ/RKlCI6MZ83nvkr9P4ErEIuuAjSJyqUf",
  render_errors: [view: TrolleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Trolle.PubSub,
  live_view: [signing_salt: "GDMbbPUD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
