defmodule Fake.Cannabis do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating Cannabis related data
  """

  @doc """
  Returns a Cannabis strain string

  ## Examples

      iex> Fake.Cannabis.strain()
      "Critical Kush"
      iex> Fake.Cannabis.strain()
      "Blue Dream"
      iex> Fake.Cannabis.strain()
      "Mr. Nice Guy"
      iex> Fake.Cannabis.strain()
      "Gorilla Glue"
  """
  @spec strain() :: String.t()
  localize(:strain)

  @doc """
  Returns a Cannabis cannabinoid string

  ## Examples

      iex> Fake.Cannabis.cannabinoid()
      "Cannabinol"
      iex> Fake.Cannabis.cannabinoid()
      "Cannabigerolic Acid"
      iex> Fake.Cannabis.cannabinoid()
      "Cannabinolic Acid"
      iex> Fake.Cannabis.cannabinoid()
      "Cannabicyclol"
  """
  @spec cannabinoid() :: String.t()
  localize(:cannabinoid)

  @doc """
  Returns a Cannabis cannabinoid abbreviation string

  ## Examples

      iex> Fake.Cannabis.cannabinoid_abbreviation()
      "THCa"
      iex> Fake.Cannabis.cannabinoid_abbreviation()
      "THCv"
      iex> Fake.Cannabis.cannabinoid_abbreviation()
      "CBC"
      iex> Fake.Cannabis.cannabinoid_abbreviation()
      "CBG"
  """
  @spec cannabinoid_abbreviation() :: String.t()
  localize(:cannabinoid_abbreviation)

  @doc """
  Returns a Cannabis terpene string

  ## Examples

      iex> Fake.Cannabis.terpene()
      "Camphor"
      iex> Fake.Cannabis.terpene()
      "Camphene"
      iex> Fake.Cannabis.terpene()
      "α Pinene"
      iex> Fake.Cannabis.terpene()
      "Sabinene"
  """
  @spec terpene() :: String.t()
  localize(:terpene)

  @doc """
  Returns a Cannabis medical use string

  ## Examples

      iex> Fake.Cannabis.medical_use()
      "analgesic"
      iex> Fake.Cannabis.medical_use()
      "anti-cancer"
      iex> Fake.Cannabis.medical_use()
      "anti-cancer"
      iex> Fake.Cannabis.medical_use()
      "anti-fungal"
  """
  @spec medical_use() :: String.t()
  localize(:medical_use)

  @doc """
  Returns a Cannabis health benefit string

  ## Examples

      iex> Fake.Cannabis.health_benefit()
      "relieves pain"
      iex> Fake.Cannabis.health_benefit()
      "inhibits cell growth in tumors/cancer cells"
      iex> Fake.Cannabis.health_benefit()
      "inhibits cell growth in tumors/cancer cells"
      iex> Fake.Cannabis.health_benefit()
      "treats fungal infection"
  """
  @spec health_benefit() :: String.t()
  localize(:health_benefit)

  @doc """
  Returns a Cannabis category string

  ## Examples

      iex> Fake.Cannabis.category()
      "flower"
      iex> Fake.Cannabis.category()
      "medical"
      iex> Fake.Cannabis.category()
      "seeds & clones"
      iex> Fake.Cannabis.category()
      "live resin"
  """
  @spec category() :: String.t()
  localize(:category)

  @doc """
  Returns a Cannabis type string

  ## Examples

      iex> Fake.Cannabis.type()
      "hybrid"
      iex> Fake.Cannabis.type()
      "sativa"
      iex> Fake.Cannabis.type()
      "hybrid"
      iex> Fake.Cannabis.type()
      "sativa"
  """
  @spec type() :: String.t()
  localize(:type)

  @doc """
  Returns a Cannabis buzzword string

  ## Examples

      iex> Fake.Cannabis.buzzword()
      "toke"
      iex> Fake.Cannabis.buzzword()
      "cbd"
      iex> Fake.Cannabis.buzzword()
      "stoned"
      iex> Fake.Cannabis.buzzword()
      "stoned"
  """
  @spec buzzword() :: String.t()
  localize(:buzzword)

  @doc """
  Returns a Cannabis brand string

  ## Examples

      iex> Fake.Cannabis.En.brand()
      "Evolab"
      iex> Fake.Cannabis.En.brand()
      "CI Wholesale"
      iex> Fake.Cannabis.En.brand()
      "Muy"
      iex> Fake.Cannabis.En.brand()
      "Chong's Choice"
  """
  @spec brand() :: String.t()
  localize(:brand)

  @doc """
  Returns a thc percentage for a cannabis thc

  ## Examples

      iex> Fake.Cannabis.thc()
      "18.1%"
      iex> Fake.Cannabis.thc()
      "30.4%"
      iex> Fake.Cannabis.thc()
      "28.6%"
      iex> Fake.Cannabis.thc()
      "40.6%"
  """
  @spec thc :: String.t()
  def thc do
    random_float() <> "%"
  end

  defp random_float do
    "#{Fake.random_between(0, 50)}.#{Fake.random_between(0, 9)}"
  end
end
