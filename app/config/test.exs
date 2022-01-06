import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :app, AppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "FirdwHi7WL2LZwQeI0qWsR4bJd5FlHeHnU1G/07W3MBM+PRyabY3EZIX7iM7sBju",
  server: false

# In test we don't send emails.
config :app, App.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
