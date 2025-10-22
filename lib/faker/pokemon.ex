defmodule EverFaker.Pokemon do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Function for generating Pokemon
  """

  @doc """
  Returns a random Pokemon name

  ## Examples

      iex> EverFaker.Pokemon.name()
      "Fraxure"
      iex> EverFaker.Pokemon.name()
      "Shellos"
      iex> EverFaker.Pokemon.name()
      "Ambipom"
      iex> EverFaker.Pokemon.name()
      "Forretress"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random Pokemon location

  ## Examples

      iex> EverFaker.Pokemon.location()
      "Vaniville Town"
      iex> EverFaker.Pokemon.location()
      "Slateport City"
      iex> EverFaker.Pokemon.location()
      "Shalour City"
      iex> EverFaker.Pokemon.location()
      "Solaceon Town"
  """
  @spec location() :: String.t()
  localize(:location)
end
