defmodule Fake.StringTest do
  use ExUnit.Case, async: true

  doctest Fake.String

  test "base64/1" do
    length = Fake.String.base64(12) |> String.length()
    assert length == 12
  end
end
