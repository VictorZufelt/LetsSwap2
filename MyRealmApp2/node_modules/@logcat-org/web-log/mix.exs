defmodule WebLog.Mixfile do
  use Mix.Project

  def project do
    [
      app: :weblog,
      version: "1.0.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      compilers: Mix.compilers ++ [:elixir_script],
      deps: deps(),
      elixir_script: [
        input: [WebLog],
        output: ""
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
     {:elixir_script, "~> 0.30"}
    ]
  end
end
