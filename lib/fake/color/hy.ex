defmodule Fake.Color.Hy do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for generating color data in Armenian
  """

  @doc """
  Returns a random color name.

  ## Examples

      iex> Fake.Color.Hy.name()
      "մոխրագույն"
      iex> Fake.Color.Hy.name()
      "կանաչ"
      iex> Fake.Color.Hy.name()
      "երկնագույն"
      iex> Fake.Color.Hy.name()
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
