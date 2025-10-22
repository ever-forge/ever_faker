defmodule EverFaker.Color.It do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Italian
  """

  @doc """
  Returns a random Italian color name

  ## Examples

      iex> EverFaker.Color.It.name()
      "Rosso"
      iex> EverFaker.Color.It.name()
      "Verde"
      iex> EverFaker.Color.It.name()
      "Marrone"
      iex> EverFaker.Color.It.name()
      "Rosa"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Rosso",
    "Verde",
    "Nero",
    "Azzurro",
    "Rosa",
    "Marrone",
    "Arancio",
    "Giallo",
    "Viola",
    "Bianco"
  ])
end
