defmodule Fake.CommerceTest do
  use ExUnit.Case, async: true

  doctest Fake.Commerce
  doctest Fake.Commerce.En
  doctest Fake.Commerce.Hy
  doctest Fake.Commerce.PtBr

  test "price/0" do
    assert is_float(Fake.Commerce.price())
    assert Fake.Commerce.price() <= 100.0
    assert Fake.Commerce.price() >= 0.0
  end
end
