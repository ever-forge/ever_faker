defmodule EverFaker.Name do
  alias EverFaker.Person

  @moduledoc """
  Deprecated. EverFaker.Name will be removed in 1.0.0. Please use EverFaker.Person instead.
  """

  @doc """
  Returns a random complete name

  ## Examples

      iex> EverFaker.Name.name()
      "Mrs. Abe Rolfson MD"
      iex> EverFaker.Name.name()
      "Conor Padberg"
      iex> EverFaker.Name.name()
      "Mr. Bianka Ryan"
      iex> EverFaker.Name.name()
      "Ally Rau MD"
  """
  @deprecated "Use EverFaker.Person.name/0 instead."
  @spec name() :: String.t()
  def name, do: Person.name()

  @doc """
  Returns a random first name

  ## Examples

      iex> EverFaker.Name.first_name()
      "Joany"
      iex> EverFaker.Name.first_name()
      "Elizabeth"
      iex> EverFaker.Name.first_name()
      "Abe"
      iex> EverFaker.Name.first_name()
      "Ozella"
  """
  @deprecated "Use EverFaker.Person.first_name/0 instead."
  @spec first_name() :: String.t()
  def first_name, do: Person.first_name()

  @doc """
  Returns a random last name

  ## Examples

      iex> EverFaker.Name.last_name()
      "Blick"
      iex> EverFaker.Name.last_name()
      "Hayes"
      iex> EverFaker.Name.last_name()
      "Schumm"
      iex> EverFaker.Name.last_name()
      "Rolfson"
  """
  @deprecated "Use EverFaker.Person.last_name/0 instead."
  @spec last_name() :: String.t()
  def last_name, do: Person.last_name()

  @doc """
  Returns a random name related title

  ## Examples

      iex> EverFaker.Name.title()
      "Dynamic Identity Administrator"
      iex> EverFaker.Name.title()
      "Product Communications Technician"
      iex> EverFaker.Name.title()
      "Legacy Accountability Architect"
      iex> EverFaker.Name.title()
      "Customer Data Representative"
  """
  @deprecated "Use EverFaker.Person.title/0 instead."
  @spec title() :: String.t()
  def title, do: Person.title()

  @doc """
  Returns a random name related suffix

  ## Examples

      iex> EverFaker.Name.suffix()
      "II"
      iex> EverFaker.Name.suffix()
      "V"
      iex> EverFaker.Name.suffix()
      "V"
      iex> EverFaker.Name.suffix()
      "V"
  """
  @deprecated "Use EverFaker.Person.suffix/0 instead."
  @spec suffix() :: String.t()
  def suffix, do: Person.suffix()

  @doc """
  Returns a random name related prefix

  ## Examples

      iex> EverFaker.Name.prefix()
      "Mr."
      iex> EverFaker.Name.prefix()
      "Mrs."
      iex> EverFaker.Name.prefix()
      "Mr."
      iex> EverFaker.Name.prefix()
      "Dr."
  """
  @deprecated "Use EverFaker.Person.prefix/0 instead."
  @spec prefix() :: String.t()
  def prefix, do: Person.prefix()
end
