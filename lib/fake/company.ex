defmodule Fake.Company do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating company names and related stuff
  """

  @doc """
  Returns a random complete business related bullshit

  ## Examples

      iex> Fake.Company.bs()
      "syndicate e-business e-business"
      iex> Fake.Company.bs()
      "scale global metrics"
      iex> Fake.Company.bs()
      "optimize scalable markets"
      iex> Fake.Company.bs()
      "implement out-of-the-box content"
  """
  @spec bs() :: String.t()
  localize(:bs)

  @doc """
  Returns a random business related bullshit

  ## Examples

      iex> Fake.Company.bullshit()
      "web-enabled"
      iex> Fake.Company.bullshit()
      "e-business"
      iex> Fake.Company.bullshit()
      "web-enabled"
      iex> Fake.Company.bullshit()
      "next-generation"
  """
  @spec bullshit() :: String.t()
  localize(:bullshit)

  @doc """
  Returns a random business related bullshit prefix

  ## Examples

      iex> Fake.Company.bullshit_prefix()
      "syndicate"
      iex> Fake.Company.bullshit_prefix()
      "visualize"
      iex> Fake.Company.bullshit_prefix()
      "incentivize"
      iex> Fake.Company.bullshit_prefix()
      "scale"
  """
  @spec bullshit_prefix() :: String.t()
  localize(:bullshit_prefix)

  @doc """
  Returns a random business related bullshit suffix

  ## Examples

      iex> Fake.Company.bullshit_suffix()
      "e-services"
      iex> Fake.Company.bullshit_suffix()
      "niches"
      iex> Fake.Company.bullshit_suffix()
      "e-business"
      iex> Fake.Company.bullshit_suffix()
      "systems"
  """
  @spec bullshit_suffix() :: String.t()
  localize(:bullshit_suffix)

  @doc """
  Returns a random business related buzzword

  ## Examples

      iex> Fake.Company.buzzword()
      "upward-trending"
      iex> Fake.Company.buzzword()
      "full-range"
      iex> Fake.Company.buzzword()
      "uniform"
      iex> Fake.Company.buzzword()
      "tertiary"
  """
  @spec buzzword() :: String.t()
  localize(:buzzword)

  @doc """
  Returns a random business related buzzword prefix

  ## Examples

      iex> Fake.Company.buzzword_prefix()
      "Configurable"
      iex> Fake.Company.buzzword_prefix()
      "Advanced"
      iex> Fake.Company.buzzword_prefix()
      "Grass-roots"
      iex> Fake.Company.buzzword_prefix()
      "Automated"
  """
  @spec buzzword_prefix() :: String.t()
  localize(:buzzword_prefix)

  @doc """
  Returns a random business related buzzword suffix

  ## Examples

      iex> Fake.Company.buzzword_suffix()
      "encoding"
      iex> Fake.Company.buzzword_suffix()
      "standardization"
      iex> Fake.Company.buzzword_suffix()
      "Graphical User Interface"
      iex> Fake.Company.buzzword_suffix()
      "product"
  """
  @spec buzzword_suffix() :: String.t()
  localize(:buzzword_suffix)

  @doc """
  Returns a random complete catch phrase

  ## Examples

      iex> Fake.Company.catch_phrase()
      "Configurable full-range Graphical User Interface"
      iex> Fake.Company.buzzword_suffix()
      "product"
      iex> Fake.Company.buzzword_suffix()
      "intranet"
      iex> Fake.Company.buzzword_suffix()
      "pricing structure"
  """
  @spec catch_phrase() :: String.t()
  localize(:catch_phrase)

  @doc """
  Returns complete company name

  ## Examples

      iex> Fake.Company.name()
      "Hayes Inc"
      iex> Fake.Company.name()
      "Sipes, Wehner and Hane"
      iex> Fake.Company.name()
      "Schiller, Rogahn and Hartmann"
      iex> Fake.Company.name()
      "Murphy-Metz"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random type of business entity

  ## Examples

      iex> Fake.Company.suffix()
      "Inc"
      iex> Fake.Company.suffix()
      "and Sons"
      iex> Fake.Company.suffix()
      "Inc"
      iex> Fake.Company.suffix()
      "Ltd"
  """
  @spec suffix() :: String.t()
  localize(:suffix)
end
