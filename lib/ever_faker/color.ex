defmodule EverFaker.Color do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating different color representations.
  """

  @doc """
  Return random RGB hex value.

  ## Examples

      iex> EverFaker.Color.rgb_hex()
      "D6D98B"
      iex> EverFaker.Color.rgb_hex()
      "88C866"
      iex> EverFaker.Color.rgb_hex()
      "F496DB"
      iex> EverFaker.Color.rgb_hex()
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

      iex> EverFaker.Color.rgb_decimal()
      {214, 217, 139}
      iex> EverFaker.Color.rgb_decimal()
      {136, 200, 102}
      iex> EverFaker.Color.rgb_decimal()
      {244, 150, 219}
      iex> EverFaker.Color.rgb_decimal()
      {212, 222, 123}
  """
  @spec rgb_decimal() :: {byte, byte, byte}
  def rgb_decimal do
    {
      EverFaker.random_between(0, 255),
      EverFaker.random_between(0, 255),
      EverFaker.random_between(0, 255)
    }
  end

  @doc """
  Return a random color name

  ## Examples

      iex> EverFaker.Color.name()
      "Red"
      iex> EverFaker.Color.name()
      "Green"
      iex> EverFaker.Color.name()
      "Brown"
      iex> EverFaker.Color.name()
      "Pink"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Return a random fancy color name

  ## Examples

      iex> EverFaker.Color.fancy_name()
      "Tawny"
      iex> EverFaker.Color.fancy_name()
      "Citrine"
      iex> EverFaker.Color.fancy_name()
      "Greige"
      iex> EverFaker.Color.fancy_name()
      "Cesious"
  """
  @spec fancy_name() :: String.t()
  localize(:fancy_name)
end
