defmodule Fake.Color.It do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Italian
  """

  @doc """
  Returns a random Italian color name

  ## Examples

      iex> Fake.Color.It.name()
      "Rosso"
      iex> Fake.Color.It.name()
      "Verde"
      iex> Fake.Color.It.name()
      "Marrone"
      iex> Fake.Color.It.name()
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
