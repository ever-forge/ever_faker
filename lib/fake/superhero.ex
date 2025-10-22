defmodule Fake.Superhero do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating Superhero data
  """

  @doc """
  Returns a random Superhero name

  ## Examples

      iex> Fake.Superhero.name()
      "Red Beyonder the Hunter"
      iex> Fake.Superhero.name()
      "Penance Strike"
      iex> Fake.Superhero.name()
      "Sage"
      iex> Fake.Superhero.name()
      "Giant Aqua I"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random Superhero name prefix

  ## Examples

      iex> Fake.Superhero.prefix()
      "The"
      iex> Fake.Superhero.prefix()
      "Red"
      iex> Fake.Superhero.prefix()
      "The"
      iex> Fake.Superhero.prefix()
      "Captain"
  """
  @spec prefix() :: String.t()
  localize(:prefix)

  @doc """
  Returns a random Superhero name suffix

  ## Examples

      iex> Fake.Superhero.suffix()
      "Strange"
      iex> Fake.Superhero.suffix()
      "Claw"
      iex> Fake.Superhero.suffix()
      "the Hunter"
      iex> Fake.Superhero.suffix()
      "the Hunter"
  """
  @spec suffix() :: String.t()
  localize(:suffix)

  @doc """
  Returns a random Superhero descriptor

  ## Examples

      iex> Fake.Superhero.descriptor()
      "Ronin"
      iex> Fake.Superhero.descriptor()
      "Azrael"
      iex> Fake.Superhero.descriptor()
      "Beyonder"
      iex> Fake.Superhero.descriptor()
      "Phantom"
  """
  @spec descriptor() :: String.t()
  localize(:descriptor)

  @doc """
  Returns a random Superhero power

  ## Examples

      iex> Fake.Superhero.power()
      "Death Touch"
      iex> Fake.Superhero.power()
      "Shapeshifting"
      iex> Fake.Superhero.power()
      "Gliding"
      iex> Fake.Superhero.power()
      "Illusions"
  """
  @spec power() :: String.t()
  localize(:power)
end
