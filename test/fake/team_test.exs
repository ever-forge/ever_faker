defmodule Fake.TeamTest do
  use ExUnit.Case, async: true

  doctest Fake.Team
  doctest Fake.Team.En
  doctest Fake.Team.PtBr
end
