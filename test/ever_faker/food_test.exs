defmodule EverFaker.FoodTest do
  use ExUnit.Case, async: true

  doctest EverFaker.Food
  doctest EverFaker.Food.En
  doctest EverFaker.Food.PtBr
  doctest EverFaker.Food.Hy
end
