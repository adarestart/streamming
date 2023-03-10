defmodule Producer.MixProject do
  use Mix.Project

  def project do
    [
      app: :producer,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  # Step 3: Monitor the system processes from the producer using an OS monitoring application known as os_mon.
  # added os_mon to extra_applications
  def application do
  [
    extra_applications: [:logger, :kaffe, :os_mon],
    mod: {Producer.Application, []}
  ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:kaffe, "~> 1.9"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
