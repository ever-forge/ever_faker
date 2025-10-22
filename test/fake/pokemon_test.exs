defmodule Fake.PokemonTest do
  use ExUnit.Case, async: true

  doctest Fake.Pokemon
  doctest Fake.Pokemon.En
  doctest Fake.Pokemon.De
  doctest Fake.Pokemon.It
end
