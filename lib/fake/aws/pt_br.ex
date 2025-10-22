defmodule Fake.Aws.PtBr do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for generating AWS information in Brazilian Portuguese
  """

  @doc """
  Returns a random region name available on AWS

  ## Examples

      iex> Fake.Aws.PtBr.region_name()
      "Ásia-Pacífico (Mumbai)"
      iex> Fake.Aws.PtBr.region_name()
      "Oeste dos EUA (Califórnia do Norte)"
      iex> Fake.Aws.PtBr.region_name()
      "Leste dos EUA (Virgínia do Norte)"
      iex> Fake.Aws.PtBr.region_name()
      "Ásia-Pacífico (Hong Kong)"
  """
  @spec region_name() :: String.t()
  sampler(:region_name, [
    "Leste dos EUA (Virgínia do Norte)",
    "Leste dos EUA (Ohio)",
    "Oeste dos EUA (Califórnia do Norte)",
    "Oeste dos EUA (Oregon)",
    "África (Cape Town)",
    "Ásia-Pacífico (Hong Kong)",
    "Ásia-Pacífico (Mumbai)",
    "Ásia-Pacífico (Osaka)",
    "Ásia-Pacífico (Seoul)",
    "Ásia-Pacífico (Singapura)",
    "Ásia-Pacífico (Sydney)",
    "Ásia-Pacífico (Tóquio)",
    "Canadá (Central)",
    "Europa (Frankfurt)",
    "Europa (Irlanda)",
    "Europa (Londres)",
    "Europa (Milão)",
    "Europa (Paris)",
    "Europa (Estocolmo)",
    "Oriente Médio (Bahrain)",
    "América do Sul (São Paulo)"
  ])
end
