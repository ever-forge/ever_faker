defmodule Fake.FoodTest do
  use ExUnit.Case, async: true

  doctest Fake.Food
  doctest Fake.Food.En
  doctest Fake.Food.PtBr
  doctest Fake.Food.Hy
end
