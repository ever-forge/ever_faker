defmodule Fake.Currency do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for generating currency related data
  """

  @doc """
  Returns a random currency code

  ## Examples

      iex> Fake.Currency.code()
      "WST"
      iex> Fake.Currency.code()
      "UYU"
      iex> Fake.Currency.code()
      "CRC"
      iex> Fake.Currency.code()
      "DOP"
  """
  @spec code() :: String.t()
  sampler(:code, [
    "AED",
    "AFN",
    "ALL",
    "AMD",
    "ANG",
    "AOA",
    "ARS",
    "AUD",
    "AWG",
    "AZN",
    "BAM",
    "BBD",
    "BDT",
    "BGN",
    "BHD",
    "BIF",
    "BMD",
    "BND",
    "BOB",
    "BRL",
    "BSD",
    "BWP",
    "BYN",
    "BZD",
    "CAD",
    "CDF",
    "CHF",
    "CLP",
    "CNY",
    "COP",
    "CRC",
    "CUP",
    "CVE",
    "CZK",
    "DJF",
    "DKK",
    "DOP",
    "DZD",
    "EEK",
    "EGP",
    "ERN",
    "ETB",
    "EUR",
    "FJD",
    "FKP",
    "GBP",
    "GEL",
    "GHS",
    "GIP",
    "GMD",
    "GNF",
    "GTQ",
    "GYD",
    "HKD",
    "HNL",
    "HRK",
    "HTG",
    "HUF",
    "IDR",
    "ILS",
    "INR",
    "IQD",
    "IRR",
    "ISK",
    "JMD",
    "JOD",
    "JPY",
    "KES",
    "KGS",
    "KHR",
    "KMF",
    "KPW",
    "KRW",
    "KWD",
    "KYD",
    "KZT",
    "LAK",
    "LBP",
    "LKR",
    "LRD",
    "LTL",
    "LVL",
    "LYD",
    "MAD",
    "MDL",
    "MGA",
    "MKD",
    "MMK",
    "MNT",
    "MOP",
    "MRO",
    "MUR",
    "MVR",
    "MWK",
    "MXN",
    "MYR",
    "MZN",
    "NGN",
    "NIO",
    "NOK",
    "NPR",
    "NZD",
    "OMR",
    "PAB",
    "PEN",
    "PGK",
    "PHP",
    "PKR",
    "PLN",
    "PYG",
    "QAR",
    "RON",
    "RSD",
    "RUB",
    "RWF",
    "SAR",
    "SBD",
    "SCR",
    "SDG",
    "SEK",
    "SGD",
    "SHP",
    "SLL",
    "SOS",
    "SRD",
    "STD",
    "SVC",
    "SYP",
    "SZL",
    "THB",
    "TJS",
    "TMT",
    "TND",
    "TOP",
    "TRY",
    "TTD",
    "TWD",
    "TZS",
    "UAH",
    "UGX",
    "USD",
    "UYU",
    "UZS",
    "VEF",
    "VND",
    "CRC",
    "WST",
    "XAF",
    "XAG",
    "XAU",
    "XBA",
    "XBB",
    "XBC",
    "XBD",
    "XCD",
    "XDR",
    "XFU",
    "XOF",
    "XPD",
    "XPF",
    "XPT",
    "XTS",
    "YER",
    "ZAR",
    "ZMW",
    "ZWL"
  ])

  @doc """
  Returns a random currency symbol

  ## Examples

      iex> Fake.Currency.symbol()
      "£"
      iex> Fake.Currency.symbol()
      "฿"
      iex> Fake.Currency.symbol()
      "ƒ"
      iex> Fake.Currency.symbol()
      "Rp"
  """
  @spec symbol() :: String.t()
  sampler(:symbol, [
    "HK$",
    "Ft",
    "₪",
    "¥",
    "R$",
    "$",
    "kr",
    "PhP",
    "zł",
    "CHF",
    "NT$",
    "฿",
    "£",
    "¢",
    "Rp",
    "ƒ",
    "€",
    "रू"
  ])
end
