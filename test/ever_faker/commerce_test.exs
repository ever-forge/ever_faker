defmodule EverFaker.CommerceTest do
  use ExUnit.Case, async: true

  doctest EverFaker.Commerce
  doctest EverFaker.Commerce.En
  doctest EverFaker.Commerce.Hy
  doctest EverFaker.Commerce.PtBr

  test "price/0" do
    assert is_float(EverFaker.Commerce.price())
    assert EverFaker.Commerce.price() <= 100.0
    assert EverFaker.Commerce.price() >= 0.0
  end
end
