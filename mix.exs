defmodule PhoenixAmnesia.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_amnesia,
     version: "0.1.0",
     elixir: "~> 1.2",
     deps: deps(),
     description: "Integrates Phoenix with Amnesia providing an Ecto-like interface",
     package: package()]
  end

  def application do
    [applications: [:amnesia]]
  end

  defp deps do
    [{:phoenix_html, "~> 2.5", optional: true},
     {:amnesia, github: "meh/amnesia", ref: "1a68e0d31401d0e7e60375b07d4ac9cf4cdf5ebd", override: true},
     {:decimal, optional: true}]
  end

  defp package do
    [maintainers: ["Christian Zuckschwerdt"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/zuckschwerdt/phoenix_amnesia"},
     files: ~w(lib LICENSE mix.exs README.md)]
  end
end
