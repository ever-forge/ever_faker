defmodule Fake.Code do
  @moduledoc """
  Functions for generate common codes.
  """

  alias Fake.Util

  @doc """
  Returns a random isbn code

  ## Examples

      iex> Fake.Code.isbn
      "015426461X"
      iex> Fake.Code.isbn
      "0832970522"
      iex> Fake.Code.isbn
      "3570203034"
      iex> Fake.Code.isbn
      "2097337600"
  """
  defdelegate isbn, to: Fake.Code, as: :isbn10

  @doc """
  Returns a random isbn10 code

  ## Examples

      iex> Fake.Code.isbn10
      "015426461X"
      iex> Fake.Code.isbn10
      "0832970522"
      iex> Fake.Code.isbn10
      "3570203034"
      iex> Fake.Code.isbn10
      "2097337600"
  """
  def isbn10 do
    sequence = Fake.format("#########")
    sequence <> check_digit(sequence, &calc_digit_x_index/1, 11)
  end

  @doc """
  Returns a random isbn13 code

  ## Examples

      iex> Fake.Code.isbn13
      "9781542646109"
      iex> Fake.Code.isbn13
      "9783297052358"
      iex> Fake.Code.isbn13
      "9790203032090"
      iex> Fake.Code.isbn13
      "9793376033741"
  """
  def isbn13 do
    sequence = Util.pick(["978", "979"]) <> Fake.format("#########")
    sequence <> check_digit(sequence, &calc_isbn13/1, 10)
  end

  @doc """
  Returns a random issn code

  ## Examples

      iex> Fake.Code.issn
      "01542648"
      iex> Fake.Code.issn
      "61083291"
      iex> Fake.Code.issn
      "70523576"
      iex> Fake.Code.issn
      "02030322"
  """
  def issn do
    sequence = Fake.format("#######")
    sequence <> check_digit(sequence, &calc_digit_x_index/1, 11)
  end

  @doc """
  Returns a random IBAN starting with the given components. The given components are not validated
  but are included in the checksum.

  ## Examples

      iex> Fake.Code.iban("NL", ["ABNA"])
      "NL16ABNA0154264610"
      iex> Fake.Code.iban("MC", ["FOO", "BAR"])
      "MC98FOOBAR83"
      iex> Fake.Code.iban("SM", ["A"])
      "SM86A2970523570AY38NWIVZ5XT"
      iex> Fake.Code.iban("MC", ["FOO", "BAR"])
      "MC40FOOBAR60"
  """
  defdelegate iban(), to: Fake.Code.Iban
  defdelegate iban(country_code_or_codes), to: Fake.Code.Iban
  defdelegate iban(country_code, prefix_components), to: Fake.Code.Iban

  defp check_digit(sequence, calc_function, size) do
    (sequence <> "0")
    |> String.reverse()
    |> String.graphemes()
    |> Stream.with_index()
    |> Stream.map(calc_function)
    |> Enum.sum()
    |> grapheme_for_last(size)
  end

  defp grapheme_for_last(checksum, size) do
    digit_to_grapheme(size - rem(checksum, size), size)
  end

  defp calc_digit_x_index({e, i}), do: grapheme_to_digit(e) * (i + 1)
  defp calc_isbn13({e, i}) when rem(i, 2) == 1, do: grapheme_to_digit(e) * 3
  defp calc_isbn13({e, _}), do: grapheme_to_digit(e)

  defp digit_to_grapheme(10, 11), do: "X"
  defp digit_to_grapheme(digit, size) when digit == size, do: "0"
  defp digit_to_grapheme(digit, _), do: Integer.to_string(digit)

  defp grapheme_to_digit("X"), do: 10
  defp grapheme_to_digit(str), do: String.to_integer(str)
end
