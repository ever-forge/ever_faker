defmodule Fake.CompanyTest do
  use ExUnit.Case, async: true

  doctest Fake.Company
  doctest Fake.Company.En
  doctest Fake.Company.Hy
end
