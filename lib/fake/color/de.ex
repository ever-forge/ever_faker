defmodule Fake.Color.De do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for color data in German
  """

  @doc """
  Returns a random German color name

  ## Examples

      iex> Fake.Color.De.name()
      "Rot"
      iex> Fake.Color.De.name()
      "Grün"
      iex> Fake.Color.De.name()
      "Braun"
      iex> Fake.Color.De.name()
      "Rosa"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Rot",
    "Grün",
    "Schwarz",
    "Blau",
    "Rosa",
    "Braun",
    "Orange",
    "Gelb",
    "Lila",
    "Weiß"
  ])

  @doc """
  Returns a random english fancy color name

  ## Examples

      iex> Fake.Color.De.fancy_name()
      "Flieder"
      iex> Fake.Color.De.fancy_name()
      "Feldgrau"
      iex> Fake.Color.De.fancy_name()
      "Gelbgrün"
      iex> Fake.Color.De.fancy_name()
      "Rotbraun"
  """
  @spec fancy_name() :: String.t()
  sampler(:fancy_name, [
    "Flieder",
    "Feldgrau",
    "Gelbgrün",
    "Kuchiba",
    "Rotbraun",
    "Tannengrün",
    "Weinrot",
    "Zementgrau"
  ])
end
