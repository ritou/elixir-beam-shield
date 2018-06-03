use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :beam_shield, BeamShield.Endpoint,
  http: [port: 9001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :beam_shield, BeamShield.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "beam_shield_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :authable, Authable.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "beam_shield_authable_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
