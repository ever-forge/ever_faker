defmodule Fake.Color do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating different color representations.
  """

  @doc """
  Return random RGB hex value.

  ## Examples

      iex> Fake.Color.rgb_hex()
      "D6D98B"
      iex> Fake.Color.rgb_hex()
      "88C866"
      iex> Fake.Color.rgb_hex()
      "F496DB"
      iex> Fake.Color.rgb_hex()
      "D4DE7B"
  """
  @spec rgb_hex() :: binary
  def rgb_hex do
    "~2.16.0B~2.16.0B~2.16.0B"
    |> :io_lib.format(Tuple.to_list(rgb_decimal()))
    |> :erlang.iolist_to_binary()
  end

  @doc """
  Return random RGB decimal value.

  ## Examples

      iex> Fake.Color.rgb_decimal()
      {214, 217, 139}
      iex> Fake.Color.rgb_decimal()
      {136, 200, 102}
      iex> Fake.Color.rgb_decimal()
      {244, 150, 219}
      iex> Fake.Color.rgb_decimal()
      {212, 222, 123}
  """
  @spec rgb_decimal() :: {byte, byte, byte}
  def rgb_decimal do
    {
      Fake.random_between(0, 255),
      Fake.random_between(0, 255),
      Fake.random_between(0, 255)
    }
  end

  @doc """
  Return a random color name

  ## Examples

      iex> Fake.Color.name()
      "Red"
      iex> Fake.Color.name()
      "Green"
      iex> Fake.Color.name()
      "Brown"
      iex> Fake.Color.name()
      "Pink"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Return a random fancy color name

  ## Examples

      iex> Fake.Color.fancy_name()
      "Tawny"
      iex> Fake.Color.fancy_name()
      "Citrine"
      iex> Fake.Color.fancy_name()
      "Greige"
      iex> Fake.Color.fancy_name()
      "Cesious"
  """
  @spec fancy_name() :: String.t()
  localize(:fancy_name)
end
