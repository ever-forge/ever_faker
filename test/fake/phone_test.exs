defmodule Fake.PhoneTest do
  use ExUnit.Case, async: true

  doctest Fake.Phone.EnGb
  doctest Fake.Phone.EnUs
  doctest Fake.Phone.Hy
  doctest Fake.Phone.PtBr
end
