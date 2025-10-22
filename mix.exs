defmodule Faker.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @description "Generate fake (but realistic) data for testing and development."
  @source_url "https://github.com/ever-forge/ever_faker"
  @changelog_url "https://github.com/ever-forge/ever_faker/blob/v#{@version}/CHANGELOG.md"

  def project do
    [
      app: :ever_faker,
      version: @version,
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: @description,
      source_url: @source_url,
      homepage_url: @source_url,
      docs: docs(),
      package: package(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:crypto],
      env: [
        locale: :en,
        country: nil,
        random_module: Faker.Random.Elixir
      ]
    ]
  end

  defp deps do
    [
      {:ex_check, ">= 0.0.0", only: [:dev], runtime: false},
      {:dialyxir, ">= 0.0.0", only: [:dev], runtime: false},
      {:credo, ">= 0.0.0", only: [:dev], runtime: false},
      {:ex_doc, ">= 0.0.0", only: [:dev], runtime: false}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md", "CHANGELOG.md"],
      skip_undefined_reference_warnings_on: ["CHANGELOG.md"],
      source_url: @source_url,
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "Source" => @source_url,
        "Changelog" => @changelog_url
      }
    ]
  end

  defp aliases do
    [
      publish: ["hex.publish", "tag"],
      tag: &tag_release/1
    ]
  end

  defp tag_release(_) do
    Mix.shell().info("Tagging release as v#{@version}")
    System.cmd("git", ["tag", "v#{@version}", "--message", "Release v#{@version}"])
    System.cmd("git", ["push", "--tags"])
  end
end
