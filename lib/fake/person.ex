defmodule Fake.Person do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating names for a person.
  """

  @doc """
  Returns a random complete name

  ## Examples

      iex> Fake.Person.name()
      "Mrs. Abe Rolfson MD"
      iex> Fake.Person.name()
      "Conor Padberg"
      iex> Fake.Person.name()
      "Mr. Bianka Ryan"
      iex> Fake.Person.name()
      "Ally Rau MD"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random first name

  ## Examples

      iex> Fake.Person.first_name()
      "Joany"
      iex> Fake.Person.first_name()
      "Elizabeth"
      iex> Fake.Person.first_name()
      "Abe"
      iex> Fake.Person.first_name()
      "Ozella"
  """
  @spec first_name() :: String.t()
  localize(:first_name)

  @doc """
  Returns a random last name

  ## Examples

      iex> Fake.Person.last_name()
      "Blick"
      iex> Fake.Person.last_name()
      "Hayes"
      iex> Fake.Person.last_name()
      "Schumm"
      iex> Fake.Person.last_name()
      "Rolfson"
  """
  @spec last_name() :: String.t()
  localize(:last_name)

  @doc """
  Returns a random name related title

  ## Examples

      iex> Fake.Person.title()
      "Dynamic Identity Administrator"
      iex> Fake.Person.title()
      "Product Communications Technician"
      iex> Fake.Person.title()
      "Legacy Accountability Architect"
      iex> Fake.Person.title()
      "Customer Data Representative"
  """
  @spec title() :: String.t()
  localize(:title)

  @doc """
  Returns a random name related suffix

  ## Examples

      iex> Fake.Person.suffix()
      "II"
      iex> Fake.Person.suffix()
      "V"
      iex> Fake.Person.suffix()
      "V"
      iex> Fake.Person.suffix()
      "V"
  """
  @spec suffix() :: String.t()
  localize(:suffix)

  @doc """
  Returns a random name related prefix

  ## Examples

      iex> Fake.Person.prefix()
      "Mr."
      iex> Fake.Person.prefix()
      "Mrs."
      iex> Fake.Person.prefix()
      "Mr."
      iex> Fake.Person.prefix()
      "Dr."
  """
  @spec prefix() :: String.t()
  localize(:prefix)
end
