defmodule Fake.Internet.En do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Generating internet related data in English
  """

  @doc """
  Returns a random free email service name

  ## Examples

      iex> Fake.Internet.En.free_email_service()
      "gmail.com"
      iex> Fake.Internet.En.free_email_service()
      "hotmail.com"
      iex> Fake.Internet.En.free_email_service()
      "gmail.com"
      iex> Fake.Internet.En.free_email_service()
      "hotmail.com"
  """
  @spec free_email_service() :: String
  sampler(:free_email_service, ["gmail.com", "yahoo.com", "hotmail.com"])

  @doc """
  Returns a random domain suffix

  ## Examples

      iex> Fake.Internet.En.domain_suffix()
      "com"
      iex> Fake.Internet.En.domain_suffix()
      "org"
      iex> Fake.Internet.En.domain_suffix()
      "name"
      iex> Fake.Internet.En.domain_suffix()
      "info"
  """
  @spec domain_suffix() :: String.t()
  sampler(:domain_suffix, ["com", "biz", "info", "name", "net", "org"])
end
