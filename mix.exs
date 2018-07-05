defmodule BambooSes.MixProject do
  use Mix.Project

  def project do
    [
      app: :bamboo_ses,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_aws_ses, "~> 2.0.1"},
      {:bamboo, "~> 1.0"},
      {:mox, "~> 0.3", only: :test},
      {:credo, "~> 0.9.1", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.14", only: :dev},
      {:inch_ex, ">= 0.0.0", only: :dev},
    ]
  end
end