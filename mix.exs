defmodule PlugMintProxy.MixProject do
  use Mix.Project

  @version "0.1.0"
  @github_link "https://github.com/madnificent/plug-mint-proxy"

  def project do
    [
      app: :plug_mint_proxy,
      version: @version,
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :plug, :cowboy],
      mod: {PlugMintProxy, []},
      env: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:castore, "~> 0.1.0"},
      {:mint, "~> 0.4.0"},
      {:plug, "~> 1.8.3"},
      {:plug_cowboy, "~> 2.1"}
    ]
  end

  defp package do
    [
      maintainers: ["Aad Versteden"],
      licenses: ["MIT License"],
      links: %{"GitHub" => @github_link}
    ]
  end
end
