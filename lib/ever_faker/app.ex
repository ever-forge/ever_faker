defmodule EverFaker.App do
  import EverFaker, only: [sampler: 2]

  alias EverFaker.Company
  alias EverFaker.Person

  @moduledoc """
  Functions for generating app specific properties.
  """

  @doc """
  Returns a version number.

  ## Examples

      iex> EverFaker.App.version()
      "0.1.5"
      iex> EverFaker.App.version()
      "2.6.4"
      iex> EverFaker.App.version()
      "0.10"
      iex> EverFaker.App.version()
      "3.2"
  """
  @spec version() :: String.t()
  def version do
    ["0.#.#", "0.##", "#.##", "#.#", "#.#.#"]
    |> Enum.at(EverFaker.random_between(0, 4))
    |> EverFaker.format()
  end

  @doc """
  Returns a SemVer version.

  ## Options:

  * `:allow_pre` - when `true`, a pre-release identifier (e.g.: `-dev`)
    will be appended (default: `false`)
  * `:allow_build` - when `true`, a build identifier (e.g.: `+001`)
    will be appended (default: `false`)

  ## Examples

      iex> EverFaker.App.semver()
      "5.42.64"
      iex> EverFaker.App.semver()
      "0.2.8"
      iex> EverFaker.App.semver()
      "7.0.5"
      iex> EverFaker.App.semver()
      "5.7.0"
  """
  @spec semver(Keyword.t()) :: String.t()
  def semver(opts \\ []) do
    allow_pre = Keyword.get(opts, :allow_pre, false)
    allow_build = Keyword.get(opts, :allow_build, false)

    pre =
      ~w(dev alpha beta rc.0 rc.1)
      |> Enum.at(EverFaker.random_between(0, 4))

    formats =
      ["0.#.#", "#.#.#", "#.##.##"]
      |> semver_pre_releases(pre, allow_pre)
      |> semver_builds(allow_build)
      |> semver_pre_release_builds(pre, allow_pre and allow_build)

    formats
    |> Enum.at(EverFaker.random_between(0, length(formats) - 1))
    |> EverFaker.format()
    |> semver_reformat_bad_luck()
  end

  defp semver_pre_releases(acc, pre, true), do: ["#.#.#-#{pre}" | acc]
  defp semver_pre_releases(acc, _pre, _), do: acc

  defp semver_builds(acc, true), do: ["#.#.#+###" | acc]
  defp semver_builds(acc, _), do: acc

  defp semver_pre_release_builds(acc, pre, true), do: ["#.#.#-#{pre}+###" | acc]
  defp semver_pre_release_builds(acc, _pre, _), do: acc

  defp semver_reformat_bad_luck(<<"0.0", rest::binary>>) do
    semver_reformat_bad_luck(<<"0.#{EverFaker.random_between(1, 9)}", rest::binary>>)
  end

  defp semver_reformat_bad_luck(<<first::utf8, ".0", second::utf8, rest::binary>>)
       when second !== 46 do
    semver_reformat_bad_luck(
      <<first, ".#{EverFaker.random_between(1, 9)}", second, rest::binary>>
    )
  end

  defp semver_reformat_bad_luck(
         <<first::utf8, ".", second::utf8, third::utf8, ".0", rest::binary>>
       ) do
    semver_reformat_bad_luck(
      <<first, ".", second, third, ".#{EverFaker.random_between(1, 9)}", rest::binary>>
    )
  end

  defp semver_reformat_bad_luck(version), do: version

  @doc """
  Returns an app name.

  ## Examples

      iex> EverFaker.App.name()
      "Redhold"
      iex> EverFaker.App.name()
      "Tempsoft"
      iex> EverFaker.App.name()
      "Tempsoft"
      iex> EverFaker.App.name()
      "Quo Lux"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Redhold",
    "Treeflex",
    "Trippledex",
    "Kanlam",
    "Bigtax",
    "Daltfresh",
    "Toughjoyfax",
    "Mat Lam Tam",
    "Otcom",
    "Tres-Zap",
    "Y-Solowarm",
    "Tresom",
    "Voltsillam",
    "Biodex",
    "Greenlam",
    "Viva",
    "Matsoft",
    "Temp",
    "Zoolab",
    "Subin",
    "Rank",
    "Job",
    "Stringtough",
    "Tin",
    "It",
    "Home Ing",
    "Zamit",
    "Sonsing",
    "Konklab",
    "Alpha",
    "Latlux",
    "Voyatouch",
    "Alphazap",
    "Holdlamis",
    "Zaam-Dox",
    "Sub-Ex",
    "Quo Lux",
    "Bamity",
    "Ventosanzap",
    "Lotstring",
    "Hatity",
    "Tempsoft",
    "Overhold",
    "Fixflex",
    "Konklux",
    "Zontrax",
    "Tampflex",
    "Span",
    "Namfix",
    "Transcof",
    "Stim",
    "Fix San",
    "Sonair",
    "Stronghold",
    "Fintone",
    "Y-find",
    "Opela",
    "Lotlux",
    "Ronstring",
    "Zathin",
    "Duobam",
    "Keylex"
  ])

  @doc """
  Returns an author name.

  ## Examples

      iex> EverFaker.App.author()
      "Mr. Ozella Sipes"
      iex> EverFaker.App.author()
      "Aniya Schiller"
      iex> EverFaker.App.author()
      "Frederique Murphy"
      iex> EverFaker.App.author()
      "Rutherford Inc"
  """
  @spec author() :: String.t()
  def author, do: author(EverFaker.random_between(0, 1))

  defp author(0), do: Person.name()
  defp author(1), do: Company.name()
end
