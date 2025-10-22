defmodule EverFaker.Color.En do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in English
  """

  @doc """
  Returns a random English color name

  ## Examples

      iex> EverFaker.Color.En.name()
      "Red"
      iex> EverFaker.Color.En.name()
      "Green"
      iex> EverFaker.Color.En.name()
      "Brown"
      iex> EverFaker.Color.En.name()
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

      iex> EverFaker.Color.En.fancy_name()
      "Tawny"
      iex> EverFaker.Color.En.fancy_name()
      "Citrine"
      iex> EverFaker.Color.En.fancy_name()
      "Greige"
      iex> EverFaker.Color.En.fancy_name()
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
