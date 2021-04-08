# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :discuss_clone,
  ecto_repos: [DiscussClone.Repo]

# Configures the endpoint
config :discuss_clone, DiscussCloneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fsPlkrYASSRBOOY58Hr5WqK2f0IMuab5mlB86KD2ihs88MTE0NEcCFVmLKIyVYdg",
  render_errors: [view: DiscussCloneWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DiscussClone.PubSub,
  live_view: [signing_salt: "pSls094/"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
