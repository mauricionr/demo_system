use Mix.Config

config :example_system, ExampleSystemWeb.Endpoint,
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  http: [acceptors: 10],
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin",
                    cd: Path.expand("../assets", __DIR__)]]

config :example_system, ExampleSystemWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{lib/example_system_web/views/.*(ex)$},
      ~r{lib/example_system_web/templates/.*(eex)$}
    ]
  ]

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20
