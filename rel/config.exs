Path.join(["rel", "plugins", "*.exs"])
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
    default_release: :default,
    default_environment: :prod

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"example_system"
end

release :node1 do
  set version: current_version(:example_system)
  set applications: [:runtime_tools, :example_system]
  set vm_args: "rel/node1.args"
end

release :node2 do
  set version: current_version(:example_system)
  set applications: [:runtime_tools, :example_system]
  set vm_args: "rel/node2.args"
end
