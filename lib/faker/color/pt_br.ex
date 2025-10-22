defmodule EverFaker.Color.PtBr do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Brazilian Portuguese
  """

  @doc """
  Returns a random Brazilian Portuguese color name

  ## Examples

      iex> EverFaker.Color.PtBr.name()
      "Vermelho"
      iex> EverFaker.Color.PtBr.name()
      "Verde"
      iex> EverFaker.Color.PtBr.name()
      "Marrom"
      iex> EverFaker.Color.PtBr.name()
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
