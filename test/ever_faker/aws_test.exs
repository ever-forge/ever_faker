defmodule EverFaker.AwsTest do
  use ExUnit.Case, async: true

  doctest EverFaker.Aws.En
  doctest EverFaker.Aws.Fr
  doctest EverFaker.Aws.PtPt
  doctest EverFaker.Aws.PtBr
end
