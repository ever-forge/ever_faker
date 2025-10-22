defmodule Fake.StarWars do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating StarWars related data
  """

  @doc """
  Returns a Star Wars character name

  ## Examples

      iex> Fake.StarWars.character()
      "Greedo"
      iex> Fake.StarWars.character()
      "Jek Tono Porkins"
      iex> Fake.StarWars.character()
      "Poe Dameron"
      iex> Fake.StarWars.character()
      "R4-P17"
  """
  @spec character() :: String.t()
  localize(:character)

  @doc """
  Returns a Star Wars planet name

  ## Examples

      iex> Fake.StarWars.planet()
      "Mon Cala"
      iex> Fake.StarWars.planet()
      "Ryloth"
      iex> Fake.StarWars.planet()
      "Endor"
      iex> Fake.StarWars.planet()
      "Shili"
  """
  @spec planet() :: String.t()
  localize(:planet)

  @doc """
  Returns a Star Wars quote

  ## Examples

      iex> Fake.StarWars.quote()
      "Congratulations. You are being rescued. Please do not resist."
      iex> Fake.StarWars.quote()
      "What chance do we have? The question is 'what choice'. Run, hide, plead for mercy, scatter your forces. You give way to an enemy this evil with this much power and you condemn the galaxy to an eternity of submission. The time to fight is now!"
      iex> Fake.StarWars.quote()
      "Will someone get this big walking carpet out of my way?"
      iex> Fake.StarWars.quote()
      "To be Jedi is to face the truth, and choose. Give off light, or darkness, Padawan. Be a candle, or the night."
  """
  @spec quote() :: String.t()
  localize(:quote)
end
