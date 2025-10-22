defmodule EverFaker.InternetTest do
  use ExUnit.Case, async: true

  import EverFaker.Internet

  doctest EverFaker.Internet
  doctest EverFaker.Internet.En
  doctest EverFaker.Internet.Es
  doctest EverFaker.Internet.Hy
  doctest EverFaker.Internet.It
  doctest EverFaker.Internet.PtBr

  @iterations 10_000

  test "ip_v4_address/0" do
    assert Regex.match?(~r/^(\d+\.){3}\d+$/, EverFaker.Internet.ip_v4_address())
  end

  test "ip_v6_address/0" do
    assert Regex.match?(~r/^([0-9A-F]{4}:){7}[0-9A-F]{4}$/, EverFaker.Internet.ip_v6_address())
  end

  test "mac_address/0" do
    assert Regex.match?(~r/^([0-9a-f]{2}:){5}[0-9a-f]{2}$/, EverFaker.Internet.mac_address())
  end

  test "url/0" do
    assert Regex.match?(~r/^http[s]?:\/\/\w+\.\w+$/, EverFaker.Internet.url())
  end

  test "slug/0" do
    assert Regex.match?(~r/\A([a-z0-9]+[-\._])*[a-z0-9]+\z/, EverFaker.Internet.slug())
  end

  test "slug/1" do
    slug = EverFaker.Internet.slug(["hello", "world"])

    assert Regex.match?(~r/\A((hello|world)[-\._])(hello|world)\z/, slug)
  end

  test "slug/2" do
    slug = EverFaker.Internet.slug(["hello", "world"], ["-"])

    assert Regex.match?(~r/\A((hello|world)-)(hello|world)\z/, slug)
  end

  test "user_name/0" do
    special_characters_pattern = :binary.compile_pattern(["'", "\""])

    Stream.repeatedly(&user_name/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, special_characters_pattern)
    end)
  end

  test "email/0" do
    special_characters_pattern = :binary.compile_pattern(["'", "\""])

    Stream.repeatedly(&email/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, special_characters_pattern)
    end)
  end

  test "safe_email/0" do
    special_characters_pattern = :binary.compile_pattern(["'", "\""])

    Stream.repeatedly(&safe_email/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, special_characters_pattern)
    end)
  end

  test "free_email/0" do
    special_characters_pattern = :binary.compile_pattern(["'", "\""])

    Stream.repeatedly(&free_email/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, special_characters_pattern)
    end)
  end

  test "domain_word/0" do
    special_characters_pattern = :binary.compile_pattern(["'", "\""])

    Stream.repeatedly(&domain_word/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, special_characters_pattern)
    end)
  end
end
