defmodule EverFaker.PhoneTest do
  use ExUnit.Case, async: true

  doctest EverFaker.Phone.EnGb
  doctest EverFaker.Phone.EnUs
  doctest EverFaker.Phone.Hy
  doctest EverFaker.Phone.PtBr
end
