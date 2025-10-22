defmodule EverFaker.Phone.Hy do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for generating phone related data in Armenian
  """

  @doc """
  Returns a random phone number.

  ## Examples

      iex> EverFaker.Phone.Hy.number()
      "10.542646"
      iex> EverFaker.Phone.Hy.number()
      "83-297052"
      iex> EverFaker.Phone.Hy.number()
      "(70) 203032"
      iex> EverFaker.Phone.Hy.number()
      "(733) 76033"
  """
  @spec number() :: String.t()
  def number do
    if EverFaker.random_between(0, 1) == 0 do
      landline_number()
    else
      cell_number()
    end
  end

  sampler(:landline_number_format, [
    "###-#####",
    "(###) #####",
    "###.#####",
    "10-######",
    "(10) ######",
    "10.######"
  ])

  @doc """
  Returns a random landline phone number.

  ## Examples

      iex> EverFaker.Phone.Hy.landline_number()
      "154-26461"
      iex> EverFaker.Phone.Hy.landline_number()
      "832-97052"
      iex> EverFaker.Phone.Hy.landline_number()
      "(570) 20303"
      iex> EverFaker.Phone.Hy.landline_number()
      "097.33760"
  """
  @spec landline_number() :: String.t()
  def landline_number do
    EverFaker.format(landline_number_format())
  end

  sampler(:cell_number_format, [
    "##-######",
    "(##) ######",
    "##.######"
  ])

  @doc """
  Returns a random cell phone number.

  ## Examples

      iex> EverFaker.Phone.Hy.cell_number()
      "15-426461"
      iex> EverFaker.Phone.Hy.cell_number()
      "83-297052"
      iex> EverFaker.Phone.Hy.cell_number()
      "(57) 020303"
      iex> EverFaker.Phone.Hy.cell_number()
      "09.733760"
  """
  @spec cell_number() :: String.t()
  def cell_number do
    EverFaker.format(cell_number_format())
  end
end
