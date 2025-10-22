defmodule EverFaker.Team do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating team related data
  """

  @doc """
  Returns a string of the form [state] [creature]

  ## Examples

      iex> EverFaker.Team.creature()
      "prophets"
      iex> EverFaker.Team.creature()
      "cats"
      iex> EverFaker.Team.creature()
      "enchanters"
      iex> EverFaker.Team.creature()
      "banshees"
  """
  @spec creature() :: String.t()
  localize(:creature)

  @doc """
  Returns a random creature name

  ## Examples

      iex> EverFaker.Team.name()
      "Hawaii cats"
      iex> EverFaker.Team.name()
      "Oklahoma banshees"
      iex> EverFaker.Team.name()
      "Texas elves"
      iex> EverFaker.Team.name()
      "Iowa fishes"
  """
  @spec name() :: String.t()
  localize(:name)
end
