defmodule EverFaker.PersonTest do
  use ExUnit.Case, async: true

  doctest EverFaker.Person
  doctest EverFaker.Person.En
  doctest EverFaker.Person.Es
  doctest EverFaker.Person.Fr
  doctest EverFaker.Person.Hy
  doctest EverFaker.Person.It
  doctest EverFaker.Person.PtBr
end
