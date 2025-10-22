defmodule Fake.Industry do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating Industry related data
  Reference https://en.wikipedia.org/wiki/Industry_Classification_Benchmark
  """

  @doc """
  Returns a Industry name string

  ## Examples

      iex> Fake.Industry.industry()
      "Oil & Gas"
      iex> Fake.Industry.industry()
      "Basic Materials"
      iex> Fake.Industry.industry()
      "Consumer Services"
      iex> Fake.Industry.industry()
      "Health Care"
  """
  @spec industry() :: String.t()
  localize(:industry)

  @doc """
  Returns a Super Sector name string

  ## Examples

      iex> Fake.Industry.super_sector()
      "Automobiles & Parts"
      iex> Fake.Industry.super_sector()
      "Banks"
      iex> Fake.Industry.super_sector()
      "Automobiles & Parts"
      iex> Fake.Industry.super_sector()
      "Health Care"
  """
  @spec super_sector() :: String.t()
  localize(:super_sector)

  @doc """
  Returns a Sector name string

  ## Examples

      iex> Fake.Industry.sector()
      "Food & Drug Retailers"
      iex> Fake.Industry.sector()
      "Banks"
      iex> Fake.Industry.sector()
      "Software & Computer Services"
      iex> Fake.Industry.sector()
      "Media"
  """
  @spec sector() :: String.t()
  localize(:sector)

  @doc """
  Returns a Sub Sector name string

  ## Examples

      iex> Fake.Industry.sub_sector()
      "Electrical Components & Equipment"
      iex> Fake.Industry.sub_sector()
      "Publishing"
      iex> Fake.Industry.sub_sector()
      "Alternative Electricity"
      iex> Fake.Industry.sub_sector()
      "Forestry"
  """
  @spec sub_sector() :: String.t()
  localize(:sub_sector)
end
