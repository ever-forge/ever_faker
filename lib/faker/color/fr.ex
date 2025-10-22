defmodule EverFaker.Color.Fr do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in French
  """

  @doc """
  Returns a random french color name

  ## Examples

      iex> EverFaker.Color.Fr.name()
      "Rouge"
      iex> EverFaker.Color.Fr.name()
      "Vert"
      iex> EverFaker.Color.Fr.name()
      "Marron"
      iex> EverFaker.Color.Fr.name()
      "Rose"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Rouge",
    "Vert",
    "Noir",
    "Bleu",
    "Rose",
    "Marron",
    "Orange",
    "Jaune",
    "Violet",
    "Blanc"
  ])
end
