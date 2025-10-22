defmodule Fake.PersonTest do
  use ExUnit.Case, async: true

  doctest Fake.Person
  doctest Fake.Person.En
  doctest Fake.Person.Es
  doctest Fake.Person.Fr
  doctest Fake.Person.Hy
  doctest Fake.Person.It
  doctest Fake.Person.PtBr
end
