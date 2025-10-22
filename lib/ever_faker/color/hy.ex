defmodule EverFaker.Color.Hy do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for generating color data in Armenian
  """

  @doc """
  Returns a random color name.

  ## Examples

      iex> EverFaker.Color.Hy.name()
      "մոխրագույն"
      iex> EverFaker.Color.Hy.name()
      "կանաչ"
      iex> EverFaker.Color.Hy.name()
      "երկնագույն"
      iex> EverFaker.Color.Hy.name()
      "մանուշակագույն"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "կարմիր",
    "կանաչ",
    "կապույտ",
    "դեղին",
    "մանուշակագույն",
    "շագանակագույն",
    "սպիտակ",
    "սև",
    "նարնջագույն",
    "վարդագույն",
    "մոխրագույն",
    "մանուշակագույն",
    "փիրուզագույն",
    "մուգ մանուշակագույն",
    "դեղնավարդագույն",
    "երկնագույն",
    "դեղնականաչ",
    "թուխ",
    "ոսկեգույն",
    "դարչնագույն"
  ])
end
