defmodule Fake.ShakespeareTest do
  use ExUnit.Case, async: true

  doctest Fake.Lorem.Shakespeare
  doctest Fake.Lorem.Shakespeare.En
  doctest Fake.Lorem.Shakespeare.Ru
end
