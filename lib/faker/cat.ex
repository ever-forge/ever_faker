defmodule EverFaker.Cat do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating Cat names, breeds, and registries
  """

  @doc """
  Return a random Cat name

  ## Examples

      iex> EverFaker.Cat.name()
      "Daisy"
      iex> EverFaker.Cat.name()
      "Lily"
      iex> EverFaker.Cat.name()
      "Felix"
      iex> EverFaker.Cat.name()
      "Max"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Return a random Cat breed

  ## Examples

      iex> EverFaker.Cat.breed()
      "Mekong Bobtail"
      iex> EverFaker.Cat.breed()
      "Suphalak"
      iex> EverFaker.Cat.breed()
      "Russian White, Black and Tabby"
      iex> EverFaker.Cat.breed()
      "Asian Semi-longhair"
  """
  @spec breed() :: String.t()
  localize(:breed)

  @doc """
  Return a random Cat registry

  ## Examples

      iex> EverFaker.Cat.registry()
      "Cat Aficionado Association"
      iex> EverFaker.Cat.registry()
      "Fédération Internationale Féline"
      iex> EverFaker.Cat.registry()
      "Fédération Internationale Féline"
      iex> EverFaker.Cat.registry()
      "Fédération Internationale Féline"
  """
  @spec registry() :: String.t()
  localize(:registry)
end
