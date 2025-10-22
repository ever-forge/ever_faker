defmodule EverFaker.StringTest do
  use ExUnit.Case, async: true

  doctest EverFaker.String

  test "base64/1" do
    length = EverFaker.String.base64(12) |> String.length()
    assert length == 12
  end
end
