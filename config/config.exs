# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :healthy_recepies, HealthyRecepiesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1V+jeHYFIE/+SMJlTW0MlH0rI3WYvdwovSETe3vHmJWz2GtPad8c1L89ffo5epbZ",
  render_errors: [view: HealthyRecepiesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HealthyRecepies.PubSub,
  live_view: [signing_salt: "LydlAhp8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
