defmodule Fake.Color.PtBr do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Brazilian Portuguese
  """

  @doc """
  Returns a random Brazilian Portuguese color name

  ## Examples

      iex> Fake.Color.PtBr.name()
      "Vermelho"
      iex> Fake.Color.PtBr.name()
      "Verde"
      iex> Fake.Color.PtBr.name()
      "Marrom"
      iex> Fake.Color.PtBr.name()
      "Rosa"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Vermelho",
    "Verde",
    "Preto",
    "Azul",
    "Rosa",
    "Marrom",
    "Laranja",
    "Amarelo",
    "Roxo",
    "Branco"
  ])
end
