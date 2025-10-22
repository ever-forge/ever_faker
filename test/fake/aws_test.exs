defmodule Fake.AwsTest do
  use ExUnit.Case, async: true

  doctest Fake.Aws.En
  doctest Fake.Aws.Fr
  doctest Fake.Aws.PtPt
  doctest Fake.Aws.PtBr
end
