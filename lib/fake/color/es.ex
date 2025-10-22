defmodule Fake.Color.Es do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Spanish
  """

  @doc """
  Returns a random spanish color name

  ## Examples

      iex> Fake.Color.Es.name()
      "Rojo"
      iex> Fake.Color.Es.name()
      "Verde"
      iex> Fake.Color.Es.name()
      "Marrón"
      iex> Fake.Color.Es.name()
      "Rosa"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Rojo",
    "Verde",
    "Negro",
    "Azul",
    "Rosa",
    "Marrón",
    "Laranja",
    "Amarillo",
    "Morado",
    "Blanco"
  ])
end
