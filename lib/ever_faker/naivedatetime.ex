defmodule EverFaker.NaiveDateTime do
  @moduledoc false

  @doc """
  Returns a random date in the past up to N days, today not included

  ## Examples

      iex> EverFaker.NaiveDateTime.backward(4)
      #=> ~N[2016-12-20 06:02:17.922180]
  """
  @spec backward(integer) :: NaiveDateTime.t()
  def backward(days) do
    forward(-days)
  end

  @doc """
  Returns a random date in the future up to N days, today not included

  ## Examples

      iex> EverFaker.NaiveDateTime.forward(4)
      #=> ~N[2016-12-25 06:02:17.922180]
  """
  @spec forward(integer) :: NaiveDateTime.t()
  def forward(days) do
    days
    |> EverFaker.DateTime.forward()
    |> DateTime.to_naive()
  end

  @doc """
  Returns a random `NaiveDateTime.t` between two `NaiveDateTime.t`'s

  ## Examples

      iex> EverFaker.NaiveDateTime.between(~N[2016-12-20 00:00:00], ~N[2016-12-25 00:00:00])
      #=> ~N[2016-12-23 06:02:17.922180]
  """
  @spec between(NaiveDateTime.t(), NaiveDateTime.t()) :: NaiveDateTime.t()
  def between(from, to) do
    from
    |> EverFaker.DateTime.between(to)
    |> DateTime.to_naive()
  end
end
