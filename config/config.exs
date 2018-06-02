# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :beam_shield,
  ecto_repos: [BeamShield.Repo]

# Configures the endpoint
config :beam_shield, BeamShield.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8Di0XS/2JsSRecXanEvHhyIJ74QKkgrvhiHgyW3o5TnRaD0BOS33ZrrqfIr54U8/",
  render_errors: [view: BeamShield.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BeamShield.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
