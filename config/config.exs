# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lands_of_america,
  ecto_repos: [LandsOfAmerica.Repo]

# Configures the endpoint
config :lands_of_america, LandsOfAmericaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iDPEeH3Ts6EWOvPNE6Dk4W1mJlc9/sFzDfOBvU/2cY3uW8peuPFgGTzvMe4BCqAF",
  render_errors: [view: LandsOfAmericaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LandsOfAmerica.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
