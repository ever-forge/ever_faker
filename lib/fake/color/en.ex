defmodule Fake.Color.En do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for color data in English
  """

  @doc """
  Returns a random English color name

  ## Examples

      iex> Fake.Color.En.name()
      "Red"
      iex> Fake.Color.En.name()
      "Green"
      iex> Fake.Color.En.name()
      "Brown"
      iex> Fake.Color.En.name()
      "Pink"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Red",
    "Green",
    "Black",
    "Blue",
    "Pink",
    "Brown",
    "Orange",
    "Yellow",
    "Purple",
    "White"
  ])

  @doc """
  Returns a random English fancy color name

  ## Examples

      iex> Fake.Color.En.fancy_name()
      "Tawny"
      iex> Fake.Color.En.fancy_name()
      "Citrine"
      iex> Fake.Color.En.fancy_name()
      "Greige"
      iex> Fake.Color.En.fancy_name()
      "Cesious"
  """
  @spec fancy_name() :: String.t()
  sampler(:fancy_name, [
    "Cesious",
    "Citrine",
    "Damson",
    "Greige",
    "Luteous",
    "Ochre",
    "Tawny",
    "Watchet"
  ])
end
