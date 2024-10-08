import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :kanban_app, KanbanAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "2GstUK/8J7wcDGUwBALYPi3oTjh7Zgo5+laqhYRDByrKGk8u3gLhPgVlIqK4ny3b",
  server: false

# In test we don't send emails
config :kanban_app, KanbanApp.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
