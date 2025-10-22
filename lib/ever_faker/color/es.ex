defmodule EverFaker.Color.Es do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Spanish
  """

  @doc """
  Returns a random spanish color name

  ## Examples

      iex> EverFaker.Color.Es.name()
      "Rojo"
      iex> EverFaker.Color.Es.name()
      "Verde"
      iex> EverFaker.Color.Es.name()
      "Marrón"
      iex> EverFaker.Color.Es.name()
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
