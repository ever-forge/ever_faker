defmodule Fake.Gov.ItTest do
  use ExUnit.Case, async: true

  import Fake.Gov.It

  doctest Fake.Gov.It

  @iterations 10_000

  test "fiscal id has a valid length" do
    Stream.repeatedly(&fiscal_id/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert 16 = String.length(generated_value)
    end)
  end
end
