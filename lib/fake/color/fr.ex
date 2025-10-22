defmodule Fake.Color.Fr do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for color data in French
  """

  @doc """
  Returns a random french color name

  ## Examples

      iex> Fake.Color.Fr.name()
      "Rouge"
      iex> Fake.Color.Fr.name()
      "Vert"
      iex> Fake.Color.Fr.name()
      "Marron"
      iex> Fake.Color.Fr.name()
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
