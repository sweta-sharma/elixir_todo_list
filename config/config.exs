# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_list,
  ecto_repos: [TodoList.Repo]

# Configures the endpoint
config :todo_list, TodoListWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YUEtK3O2YZ3t4WNZoRN0M2gfyljvxZidW8Bf5ym2T4dydMgQfeILIRnq/K72AKkC",
  render_errors: [view: TodoListWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TodoList.PubSub,
  live_view: [signing_salt: "0o95XX+s"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
