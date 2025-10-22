defmodule Fake.Cat do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating Cat names, breeds, and registries
  """

  @doc """
  Return a random Cat name

  ## Examples

      iex> Fake.Cat.name()
      "Daisy"
      iex> Fake.Cat.name()
      "Lily"
      iex> Fake.Cat.name()
      "Felix"
      iex> Fake.Cat.name()
      "Max"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Return a random Cat breed

  ## Examples

      iex> Fake.Cat.breed()
      "Mekong Bobtail"
      iex> Fake.Cat.breed()
      "Suphalak"
      iex> Fake.Cat.breed()
      "Russian White, Black and Tabby"
      iex> Fake.Cat.breed()
      "Asian Semi-longhair"
  """
  @spec breed() :: String.t()
  localize(:breed)

  @doc """
  Return a random Cat registry

  ## Examples

      iex> Fake.Cat.registry()
      "Cat Aficionado Association"
      iex> Fake.Cat.registry()
      "Fédération Internationale Féline"
      iex> Fake.Cat.registry()
      "Fédération Internationale Féline"
      iex> Fake.Cat.registry()
      "Fédération Internationale Féline"
  """
  @spec registry() :: String.t()
  localize(:registry)
end
