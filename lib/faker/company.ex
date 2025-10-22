defmodule EverFaker.Company do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating company names and related stuff
  """

  @doc """
  Returns a random complete business related bullshit

  ## Examples

      iex> EverFaker.Company.bs()
      "syndicate e-business e-business"
      iex> EverFaker.Company.bs()
      "scale global metrics"
      iex> EverFaker.Company.bs()
      "optimize scalable markets"
      iex> EverFaker.Company.bs()
      "implement out-of-the-box content"
  """
  @spec bs() :: String.t()
  localize(:bs)

  @doc """
  Returns a random business related bullshit

  ## Examples

      iex> EverFaker.Company.bullshit()
      "web-enabled"
      iex> EverFaker.Company.bullshit()
      "e-business"
      iex> EverFaker.Company.bullshit()
      "web-enabled"
      iex> EverFaker.Company.bullshit()
      "next-generation"
  """
  @spec bullshit() :: String.t()
  localize(:bullshit)

  @doc """
  Returns a random business related bullshit prefix

  ## Examples

      iex> EverFaker.Company.bullshit_prefix()
      "syndicate"
      iex> EverFaker.Company.bullshit_prefix()
      "visualize"
      iex> EverFaker.Company.bullshit_prefix()
      "incentivize"
      iex> EverFaker.Company.bullshit_prefix()
      "scale"
  """
  @spec bullshit_prefix() :: String.t()
  localize(:bullshit_prefix)

  @doc """
  Returns a random business related bullshit suffix

  ## Examples

      iex> EverFaker.Company.bullshit_suffix()
      "e-services"
      iex> EverFaker.Company.bullshit_suffix()
      "niches"
      iex> EverFaker.Company.bullshit_suffix()
      "e-business"
      iex> EverFaker.Company.bullshit_suffix()
      "systems"
  """
  @spec bullshit_suffix() :: String.t()
  localize(:bullshit_suffix)

  @doc """
  Returns a random business related buzzword

  ## Examples

      iex> EverFaker.Company.buzzword()
      "upward-trending"
      iex> EverFaker.Company.buzzword()
      "full-range"
      iex> EverFaker.Company.buzzword()
      "uniform"
      iex> EverFaker.Company.buzzword()
      "tertiary"
  """
  @spec buzzword() :: String.t()
  localize(:buzzword)

  @doc """
  Returns a random business related buzzword prefix

  ## Examples

      iex> EverFaker.Company.buzzword_prefix()
      "Configurable"
      iex> EverFaker.Company.buzzword_prefix()
      "Advanced"
      iex> EverFaker.Company.buzzword_prefix()
      "Grass-roots"
      iex> EverFaker.Company.buzzword_prefix()
      "Automated"
  """
  @spec buzzword_prefix() :: String.t()
  localize(:buzzword_prefix)

  @doc """
  Returns a random business related buzzword suffix

  ## Examples

      iex> EverFaker.Company.buzzword_suffix()
      "encoding"
      iex> EverFaker.Company.buzzword_suffix()
      "standardization"
      iex> EverFaker.Company.buzzword_suffix()
      "Graphical User Interface"
      iex> EverFaker.Company.buzzword_suffix()
      "product"
  """
  @spec buzzword_suffix() :: String.t()
  localize(:buzzword_suffix)

  @doc """
  Returns a random complete catch phrase

  ## Examples

      iex> EverFaker.Company.catch_phrase()
      "Configurable full-range Graphical User Interface"
      iex> EverFaker.Company.buzzword_suffix()
      "product"
      iex> EverFaker.Company.buzzword_suffix()
      "intranet"
      iex> EverFaker.Company.buzzword_suffix()
      "pricing structure"
  """
  @spec catch_phrase() :: String.t()
  localize(:catch_phrase)

  @doc """
  Returns complete company name

  ## Examples

      iex> EverFaker.Company.name()
      "Hayes Inc"
      iex> EverFaker.Company.name()
      "Sipes, Wehner and Hane"
      iex> EverFaker.Company.name()
      "Schiller, Rogahn and Hartmann"
      iex> EverFaker.Company.name()
      "Murphy-Metz"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random type of business entity

  ## Examples

      iex> EverFaker.Company.suffix()
      "Inc"
      iex> EverFaker.Company.suffix()
      "and Sons"
      iex> EverFaker.Company.suffix()
      "Inc"
      iex> EverFaker.Company.suffix()
      "Ltd"
  """
  @spec suffix() :: String.t()
  localize(:suffix)
end
