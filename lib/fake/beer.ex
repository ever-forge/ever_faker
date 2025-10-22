defmodule Fake.Beer do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating Beer related data
  """

  @doc """
  Returns a Beer brand string

  ## Examples

      iex> Fake.Beer.brand()
      "Paulaner"
      iex> Fake.Beer.brand()
      "Pabst Blue Ribbon"
      iex> Fake.Beer.brand()
      "Kirin Inchiban"
      iex> Fake.Beer.brand()
      "Birra Moretti"
  """
  @spec brand() :: String.t()
  localize(:brand)

  @doc """
  Returns a Beer name string

  ## Examples

      iex> Fake.Beer.name()
      "Duvel"
      iex> Fake.Beer.name()
      "Founders Kentucky Breakfast"
      iex> Fake.Beer.name()
      "Yeti Imperial Stout"
      iex> Fake.Beer.name()
      "Stone Imperial Russian Stout"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a Hop name string

  ## Examples

      iex> Fake.Beer.hop()
      "Eroica"
      iex> Fake.Beer.hop()
      "Bullion"
      iex> Fake.Beer.hop()
      "Mt. Rainier"
      iex> Fake.Beer.hop()
      "Citra"
  """
  @spec hop() :: String.t()
  localize(:hop)

  @doc """
  Returns a Yeast name string

  ## Examples

      iex> Fake.Beer.yeast()
      "2206 - Bavarian Lager"
      iex> Fake.Beer.yeast()
      "3763 - Roeselare Ale Blend"
      iex> Fake.Beer.yeast()
      "3711 - French Saison"
      iex> Fake.Beer.yeast()
      "3944 - Belgian Witbier"
  """
  @spec yeast() :: String.t()
  localize(:yeast)

  @doc """
  Returns a Malt name string

  ## Examples

      iex> Fake.Beer.malt()
      "Carapils"
      iex> Fake.Beer.malt()
      "Pale"
      iex> Fake.Beer.malt()
      "Rye malt"
      iex> Fake.Beer.malt()
      "Munich"
  """
  @spec malt() :: String.t()
  localize(:malt)

  @doc """
  Returns a Style name string

  ## Examples

      iex> Fake.Beer.style()
      "Stout"
      iex> Fake.Beer.style()
      "European Amber Lager"
      iex> Fake.Beer.style()
      "Strong Ale"
      iex> Fake.Beer.style()
      "German Wheat And Rye Beer"
  """
  @spec style() :: String.t()
  localize(:style)

  @doc """
  Returns an IBU(International Bitterness Unit) for a beer

  ## Examples

      iex> Fake.Beer.ibu()
      "59 IBU"
      iex> Fake.Beer.ibu()
      "10 IBU"
      iex> Fake.Beer.ibu()
      "56 IBU"
      iex> Fake.Beer.ibu()
      "85 IBU"
  """
  @spec ibu :: String.t()
  def ibu do
    "#{Fake.random_between(5, 120)} IBU"
  end

  @doc """
  Returns an alcohol percentage for a beer

  ## Examples

      iex> Fake.Beer.alcohol()
      "10.1%"
      iex> Fake.Beer.alcohol()
      "35.4%"
      iex> Fake.Beer.alcohol()
      "92.6%"
      iex> Fake.Beer.alcohol()
      "64.6%"
  """
  @spec alcohol :: String.t()
  def alcohol do
    random_float() <> "%"
  end

  @doc """
  Returns a blg for a beer

  ## Examples

      iex> Fake.Beer.blg()
      "10.1°Blg"
      iex> Fake.Beer.blg()
      "35.4°Blg"
      iex> Fake.Beer.blg()
      "92.6°Blg"
      iex> Fake.Beer.blg()
      "64.6°Blg"
  """
  @spec blg :: String.t()
  def blg do
    random_float() <> "°Blg"
  end

  defp random_float do
    "#{Fake.random_between(0, 99)}.#{Fake.random_between(0, 9)}"
  end
end
