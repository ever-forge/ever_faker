defmodule EverFaker.Color.De do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in German
  """

  @doc """
  Returns a random German color name

  ## Examples

      iex> EverFaker.Color.De.name()
      "Rot"
      iex> EverFaker.Color.De.name()
      "Grün"
      iex> EverFaker.Color.De.name()
      "Braun"
      iex> EverFaker.Color.De.name()
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

      iex> EverFaker.Color.De.fancy_name()
      "Flieder"
      iex> EverFaker.Color.De.fancy_name()
      "Feldgrau"
      iex> EverFaker.Color.De.fancy_name()
      "Gelbgrün"
      iex> EverFaker.Color.De.fancy_name()
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
