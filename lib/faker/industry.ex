defmodule EverFaker.Industry do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating Industry related data
  Reference https://en.wikipedia.org/wiki/Industry_Classification_Benchmark
  """

  @doc """
  Returns a Industry name string

  ## Examples

      iex> EverFaker.Industry.industry()
      "Oil & Gas"
      iex> EverFaker.Industry.industry()
      "Basic Materials"
      iex> EverFaker.Industry.industry()
      "Consumer Services"
      iex> EverFaker.Industry.industry()
      "Health Care"
  """
  @spec industry() :: String.t()
  localize(:industry)

  @doc """
  Returns a Super Sector name string

  ## Examples

      iex> EverFaker.Industry.super_sector()
      "Automobiles & Parts"
      iex> EverFaker.Industry.super_sector()
      "Banks"
      iex> EverFaker.Industry.super_sector()
      "Automobiles & Parts"
      iex> EverFaker.Industry.super_sector()
      "Health Care"
  """
  @spec super_sector() :: String.t()
  localize(:super_sector)

  @doc """
  Returns a Sector name string

  ## Examples

      iex> EverFaker.Industry.sector()
      "Food & Drug Retailers"
      iex> EverFaker.Industry.sector()
      "Banks"
      iex> EverFaker.Industry.sector()
      "Software & Computer Services"
      iex> EverFaker.Industry.sector()
      "Media"
  """
  @spec sector() :: String.t()
  localize(:sector)

  @doc """
  Returns a Sub Sector name string

  ## Examples

      iex> EverFaker.Industry.sub_sector()
      "Electrical Components & Equipment"
      iex> EverFaker.Industry.sub_sector()
      "Publishing"
      iex> EverFaker.Industry.sub_sector()
      "Alternative Electricity"
      iex> EverFaker.Industry.sub_sector()
      "Forestry"
  """
  @spec sub_sector() :: String.t()
  localize(:sub_sector)
end
