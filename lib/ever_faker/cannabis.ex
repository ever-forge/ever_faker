defmodule EverFaker.Cannabis do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating Cannabis related data
  """

  @doc """
  Returns a Cannabis strain string

  ## Examples

      iex> EverFaker.Cannabis.strain()
      "Critical Kush"
      iex> EverFaker.Cannabis.strain()
      "Blue Dream"
      iex> EverFaker.Cannabis.strain()
      "Mr. Nice Guy"
      iex> EverFaker.Cannabis.strain()
      "Gorilla Glue"
  """
  @spec strain() :: String.t()
  localize(:strain)

  @doc """
  Returns a Cannabis cannabinoid string

  ## Examples

      iex> EverFaker.Cannabis.cannabinoid()
      "Cannabinol"
      iex> EverFaker.Cannabis.cannabinoid()
      "Cannabigerolic Acid"
      iex> EverFaker.Cannabis.cannabinoid()
      "Cannabinolic Acid"
      iex> EverFaker.Cannabis.cannabinoid()
      "Cannabicyclol"
  """
  @spec cannabinoid() :: String.t()
  localize(:cannabinoid)

  @doc """
  Returns a Cannabis cannabinoid abbreviation string

  ## Examples

      iex> EverFaker.Cannabis.cannabinoid_abbreviation()
      "THCa"
      iex> EverFaker.Cannabis.cannabinoid_abbreviation()
      "THCv"
      iex> EverFaker.Cannabis.cannabinoid_abbreviation()
      "CBC"
      iex> EverFaker.Cannabis.cannabinoid_abbreviation()
      "CBG"
  """
  @spec cannabinoid_abbreviation() :: String.t()
  localize(:cannabinoid_abbreviation)

  @doc """
  Returns a Cannabis terpene string

  ## Examples

      iex> EverFaker.Cannabis.terpene()
      "Camphor"
      iex> EverFaker.Cannabis.terpene()
      "Camphene"
      iex> EverFaker.Cannabis.terpene()
      "α Pinene"
      iex> EverFaker.Cannabis.terpene()
      "Sabinene"
  """
  @spec terpene() :: String.t()
  localize(:terpene)

  @doc """
  Returns a Cannabis medical use string

  ## Examples

      iex> EverFaker.Cannabis.medical_use()
      "analgesic"
      iex> EverFaker.Cannabis.medical_use()
      "anti-cancer"
      iex> EverFaker.Cannabis.medical_use()
      "anti-cancer"
      iex> EverFaker.Cannabis.medical_use()
      "anti-fungal"
  """
  @spec medical_use() :: String.t()
  localize(:medical_use)

  @doc """
  Returns a Cannabis health benefit string

  ## Examples

      iex> EverFaker.Cannabis.health_benefit()
      "relieves pain"
      iex> EverFaker.Cannabis.health_benefit()
      "inhibits cell growth in tumors/cancer cells"
      iex> EverFaker.Cannabis.health_benefit()
      "inhibits cell growth in tumors/cancer cells"
      iex> EverFaker.Cannabis.health_benefit()
      "treats fungal infection"
  """
  @spec health_benefit() :: String.t()
  localize(:health_benefit)

  @doc """
  Returns a Cannabis category string

  ## Examples

      iex> EverFaker.Cannabis.category()
      "flower"
      iex> EverFaker.Cannabis.category()
      "medical"
      iex> EverFaker.Cannabis.category()
      "seeds & clones"
      iex> EverFaker.Cannabis.category()
      "live resin"
  """
  @spec category() :: String.t()
  localize(:category)

  @doc """
  Returns a Cannabis type string

  ## Examples

      iex> EverFaker.Cannabis.type()
      "hybrid"
      iex> EverFaker.Cannabis.type()
      "sativa"
      iex> EverFaker.Cannabis.type()
      "hybrid"
      iex> EverFaker.Cannabis.type()
      "sativa"
  """
  @spec type() :: String.t()
  localize(:type)

  @doc """
  Returns a Cannabis buzzword string

  ## Examples

      iex> EverFaker.Cannabis.buzzword()
      "toke"
      iex> EverFaker.Cannabis.buzzword()
      "cbd"
      iex> EverFaker.Cannabis.buzzword()
      "stoned"
      iex> EverFaker.Cannabis.buzzword()
      "stoned"
  """
  @spec buzzword() :: String.t()
  localize(:buzzword)

  @doc """
  Returns a Cannabis brand string

  ## Examples

      iex> EverFaker.Cannabis.En.brand()
      "Evolab"
      iex> EverFaker.Cannabis.En.brand()
      "CI Wholesale"
      iex> EverFaker.Cannabis.En.brand()
      "Muy"
      iex> EverFaker.Cannabis.En.brand()
      "Chong's Choice"
  """
  @spec brand() :: String.t()
  localize(:brand)

  @doc """
  Returns a thc percentage for a cannabis thc

  ## Examples

      iex> EverFaker.Cannabis.thc()
      "18.1%"
      iex> EverFaker.Cannabis.thc()
      "30.4%"
      iex> EverFaker.Cannabis.thc()
      "28.6%"
      iex> EverFaker.Cannabis.thc()
      "40.6%"
  """
  @spec thc :: String.t()
  def thc do
    random_float() <> "%"
  end

  defp random_float do
    "#{EverFaker.random_between(0, 50)}.#{EverFaker.random_between(0, 9)}"
  end
end
