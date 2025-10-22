defmodule EverFaker.ShakespeareTest do
  use ExUnit.Case, async: true

  doctest EverFaker.Lorem.Shakespeare
  doctest EverFaker.Lorem.Shakespeare.En
  doctest EverFaker.Lorem.Shakespeare.Ru
end
