defmodule Fake.Cat.EnTest do
  use ExUnit.Case, async: true

  doctest Fake.Cat
  doctest Fake.Cat.En
  doctest Fake.Cat.PtBr
end
