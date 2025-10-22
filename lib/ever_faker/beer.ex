defmodule EverFaker.Beer do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating Beer related data
  """

  @doc """
  Returns a Beer brand string

  ## Examples

      iex> EverFaker.Beer.brand()
      "Paulaner"
      iex> EverFaker.Beer.brand()
      "Pabst Blue Ribbon"
      iex> EverFaker.Beer.brand()
      "Kirin Inchiban"
      iex> EverFaker.Beer.brand()
      "Birra Moretti"
  """
  @spec brand() :: String.t()
  localize(:brand)

  @doc """
  Returns a Beer name string

  ## Examples

      iex> EverFaker.Beer.name()
      "Duvel"
      iex> EverFaker.Beer.name()
      "Founders Kentucky Breakfast"
      iex> EverFaker.Beer.name()
      "Yeti Imperial Stout"
      iex> EverFaker.Beer.name()
      "Stone Imperial Russian Stout"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a Hop name string

  ## Examples

      iex> EverFaker.Beer.hop()
      "Eroica"
      iex> EverFaker.Beer.hop()
      "Bullion"
      iex> EverFaker.Beer.hop()
      "Mt. Rainier"
      iex> EverFaker.Beer.hop()
      "Citra"
  """
  @spec hop() :: String.t()
  localize(:hop)

  @doc """
  Returns a Yeast name string

  ## Examples

      iex> EverFaker.Beer.yeast()
      "2206 - Bavarian Lager"
      iex> EverFaker.Beer.yeast()
      "3763 - Roeselare Ale Blend"
      iex> EverFaker.Beer.yeast()
      "3711 - French Saison"
      iex> EverFaker.Beer.yeast()
      "3944 - Belgian Witbier"
  """
  @spec yeast() :: String.t()
  localize(:yeast)

  @doc """
  Returns a Malt name string

  ## Examples

      iex> EverFaker.Beer.malt()
      "Carapils"
      iex> EverFaker.Beer.malt()
      "Pale"
      iex> EverFaker.Beer.malt()
      "Rye malt"
      iex> EverFaker.Beer.malt()
      "Munich"
  """
  @spec malt() :: String.t()
  localize(:malt)

  @doc """
  Returns a Style name string

  ## Examples

      iex> EverFaker.Beer.style()
      "Stout"
      iex> EverFaker.Beer.style()
      "European Amber Lager"
      iex> EverFaker.Beer.style()
      "Strong Ale"
      iex> EverFaker.Beer.style()
      "German Wheat And Rye Beer"
  """
  @spec style() :: String.t()
  localize(:style)

  @doc """
  Returns an IBU(International Bitterness Unit) for a beer

  ## Examples

      iex> EverFaker.Beer.ibu()
      "59 IBU"
      iex> EverFaker.Beer.ibu()
      "10 IBU"
      iex> EverFaker.Beer.ibu()
      "56 IBU"
      iex> EverFaker.Beer.ibu()
      "85 IBU"
  """
  @spec ibu :: String.t()
  def ibu do
    "#{EverFaker.random_between(5, 120)} IBU"
  end

  @doc """
  Returns an alcohol percentage for a beer

  ## Examples

      iex> EverFaker.Beer.alcohol()
      "10.1%"
      iex> EverFaker.Beer.alcohol()
      "35.4%"
      iex> EverFaker.Beer.alcohol()
      "92.6%"
      iex> EverFaker.Beer.alcohol()
      "64.6%"
  """
  @spec alcohol :: String.t()
  def alcohol do
    random_float() <> "%"
  end

  @doc """
  Returns a blg for a beer

  ## Examples

      iex> EverFaker.Beer.blg()
      "10.1°Blg"
      iex> EverFaker.Beer.blg()
      "35.4°Blg"
      iex> EverFaker.Beer.blg()
      "92.6°Blg"
      iex> EverFaker.Beer.blg()
      "64.6°Blg"
  """
  @spec blg :: String.t()
  def blg do
    random_float() <> "°Blg"
  end

  defp random_float do
    "#{EverFaker.random_between(0, 99)}.#{EverFaker.random_between(0, 9)}"
  end
end
