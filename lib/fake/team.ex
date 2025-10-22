defmodule Fake.Team do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating team related data
  """

  @doc """
  Returns a string of the form [state] [creature]

  ## Examples

      iex> Fake.Team.creature()
      "prophets"
      iex> Fake.Team.creature()
      "cats"
      iex> Fake.Team.creature()
      "enchanters"
      iex> Fake.Team.creature()
      "banshees"
  """
  @spec creature() :: String.t()
  localize(:creature)

  @doc """
  Returns a random creature name

  ## Examples

      iex> Fake.Team.name()
      "Hawaii cats"
      iex> Fake.Team.name()
      "Oklahoma banshees"
      iex> Fake.Team.name()
      "Texas elves"
      iex> Fake.Team.name()
      "Iowa fishes"
  """
  @spec name() :: String.t()
  localize(:name)
end
