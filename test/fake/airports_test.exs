defmodule Fake.AirportsTest do
  use ExUnit.Case, async: true

  doctest Fake.Airports
  doctest Fake.Airports.En
  doctest Fake.Airports.PtBr
end
