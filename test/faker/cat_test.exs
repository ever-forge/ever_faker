defmodule EverFaker.Cat.EnTest do
  use ExUnit.Case, async: true

  doctest EverFaker.Cat
  doctest EverFaker.Cat.En
  doctest EverFaker.Cat.PtBr
end
