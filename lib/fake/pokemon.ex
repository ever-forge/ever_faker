defmodule Fake.Pokemon do
  import Fake, only: [localize: 1]

  @moduledoc """
  Function for generating Pokemon
  """

  @doc """
  Returns a random Pokemon name

  ## Examples

      iex> Fake.Pokemon.name()
      "Fraxure"
      iex> Fake.Pokemon.name()
      "Shellos"
      iex> Fake.Pokemon.name()
      "Ambipom"
      iex> Fake.Pokemon.name()
      "Forretress"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random Pokemon location

  ## Examples

      iex> Fake.Pokemon.location()
      "Vaniville Town"
      iex> Fake.Pokemon.location()
      "Slateport City"
      iex> Fake.Pokemon.location()
      "Shalour City"
      iex> Fake.Pokemon.location()
      "Solaceon Town"
  """
  @spec location() :: String.t()
  localize(:location)
end
