defmodule EverFaker.Superhero do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating Superhero data
  """

  @doc """
  Returns a random Superhero name

  ## Examples

      iex> EverFaker.Superhero.name()
      "Red Beyonder the Hunter"
      iex> EverFaker.Superhero.name()
      "Penance Strike"
      iex> EverFaker.Superhero.name()
      "Sage"
      iex> EverFaker.Superhero.name()
      "Giant Aqua I"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random Superhero name prefix

  ## Examples

      iex> EverFaker.Superhero.prefix()
      "The"
      iex> EverFaker.Superhero.prefix()
      "Red"
      iex> EverFaker.Superhero.prefix()
      "The"
      iex> EverFaker.Superhero.prefix()
      "Captain"
  """
  @spec prefix() :: String.t()
  localize(:prefix)

  @doc """
  Returns a random Superhero name suffix

  ## Examples

      iex> EverFaker.Superhero.suffix()
      "Strange"
      iex> EverFaker.Superhero.suffix()
      "Claw"
      iex> EverFaker.Superhero.suffix()
      "the Hunter"
      iex> EverFaker.Superhero.suffix()
      "the Hunter"
  """
  @spec suffix() :: String.t()
  localize(:suffix)

  @doc """
  Returns a random Superhero descriptor

  ## Examples

      iex> EverFaker.Superhero.descriptor()
      "Ronin"
      iex> EverFaker.Superhero.descriptor()
      "Azrael"
      iex> EverFaker.Superhero.descriptor()
      "Beyonder"
      iex> EverFaker.Superhero.descriptor()
      "Phantom"
  """
  @spec descriptor() :: String.t()
  localize(:descriptor)

  @doc """
  Returns a random Superhero power

  ## Examples

      iex> EverFaker.Superhero.power()
      "Death Touch"
      iex> EverFaker.Superhero.power()
      "Shapeshifting"
      iex> EverFaker.Superhero.power()
      "Gliding"
      iex> EverFaker.Superhero.power()
      "Illusions"
  """
  @spec power() :: String.t()
  localize(:power)
end
