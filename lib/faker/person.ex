defmodule EverFaker.Person do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating names for a person.
  """

  @doc """
  Returns a random complete name

  ## Examples

      iex> EverFaker.Person.name()
      "Mrs. Abe Rolfson MD"
      iex> EverFaker.Person.name()
      "Conor Padberg"
      iex> EverFaker.Person.name()
      "Mr. Bianka Ryan"
      iex> EverFaker.Person.name()
      "Ally Rau MD"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random first name

  ## Examples

      iex> EverFaker.Person.first_name()
      "Joany"
      iex> EverFaker.Person.first_name()
      "Elizabeth"
      iex> EverFaker.Person.first_name()
      "Abe"
      iex> EverFaker.Person.first_name()
      "Ozella"
  """
  @spec first_name() :: String.t()
  localize(:first_name)

  @doc """
  Returns a random last name

  ## Examples

      iex> EverFaker.Person.last_name()
      "Blick"
      iex> EverFaker.Person.last_name()
      "Hayes"
      iex> EverFaker.Person.last_name()
      "Schumm"
      iex> EverFaker.Person.last_name()
      "Rolfson"
  """
  @spec last_name() :: String.t()
  localize(:last_name)

  @doc """
  Returns a random name related title

  ## Examples

      iex> EverFaker.Person.title()
      "Dynamic Identity Administrator"
      iex> EverFaker.Person.title()
      "Product Communications Technician"
      iex> EverFaker.Person.title()
      "Legacy Accountability Architect"
      iex> EverFaker.Person.title()
      "Customer Data Representative"
  """
  @spec title() :: String.t()
  localize(:title)

  @doc """
  Returns a random name related suffix

  ## Examples

      iex> EverFaker.Person.suffix()
      "II"
      iex> EverFaker.Person.suffix()
      "V"
      iex> EverFaker.Person.suffix()
      "V"
      iex> EverFaker.Person.suffix()
      "V"
  """
  @spec suffix() :: String.t()
  localize(:suffix)

  @doc """
  Returns a random name related prefix

  ## Examples

      iex> EverFaker.Person.prefix()
      "Mr."
      iex> EverFaker.Person.prefix()
      "Mrs."
      iex> EverFaker.Person.prefix()
      "Mr."
      iex> EverFaker.Person.prefix()
      "Dr."
  """
  @spec prefix() :: String.t()
  localize(:prefix)
end
