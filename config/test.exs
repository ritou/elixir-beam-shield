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
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "beam_shield_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
