defmodule CitusEcto.MixProject do
  use Mix.Project

  def project do
    [
      app: :citus_ecto,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: "CitusEcto",
      source_url: "https://github.com/akdilsiz/citus_ecto",
      homepage_url: "https://tecpor.com",
      docs: [
        main: "CitusEcto",
        extras: ["README.md"]
      ]
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
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", ".formatter.exs", "LICENSE*"],
      maintainers: ["Abdulkadir DILSIZ"],
      licenses: ["COPYRIGHT"],
      description: "Ecto Citus Adapter",
      links:  %{"GitHub" => "https://github.com/akdilsiz/citus_ecto"}
    ]
  end
end
