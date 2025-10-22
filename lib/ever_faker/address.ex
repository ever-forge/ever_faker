defmodule EverFaker.Address do
  import EverFaker, only: [localize: 1]

  alias EverFaker.Person

  @geobase32 ~c"0123456789bcdefghjkmnpqrstuvwxyz"

  @moduledoc """
  Functions for generating addresses.
  """

  @doc """
  Return random building number.

  ## Examples

      iex> EverFaker.Address.building_number()
      "15426"
      iex> EverFaker.Address.building_number()
      "6"
      iex> EverFaker.Address.building_number()
      "0832"
      iex> EverFaker.Address.building_number()
      "7"
  """
  @spec building_number() :: String.t()
  localize(:building_number)

  @doc """
  Return city name.

  ## Examples

      iex> EverFaker.Address.city()
      "Elizabeth"
      iex> EverFaker.Address.city()
      "Rolfson"
      iex> EverFaker.Address.city()
      "West Conor"
      iex> EverFaker.Address.city()
      "Hardy"
  """
  @spec city() :: String.t()
  localize(:city)

  @doc """
  Return city prefix.

  ## Examples

      iex> EverFaker.Address.city_prefix()
      "Port"
      iex> EverFaker.Address.city_prefix()
      "West"
      iex> EverFaker.Address.city_prefix()
      "North"
      iex> EverFaker.Address.city_prefix()
      "Lake"
  """
  @spec city_prefix() :: String.t()
  localize(:city_prefix)

  @doc """
  Return city suffix.

  ## Examples

      iex> EverFaker.Address.city_suffix()
      "burgh"
      iex> EverFaker.Address.city_suffix()
      "mouth"
      iex> EverFaker.Address.city_suffix()
      "burgh"
      iex> EverFaker.Address.city_suffix()
      "view"
  """
  @spec city_suffix() :: String.t()
  localize(:city_suffix)

  @doc """
  Return country.

  ## Examples

      iex> EverFaker.Address.En.country()
      "Guinea-Bissau"
      iex> EverFaker.Address.En.country()
      "Tuvalu"
      iex> EverFaker.Address.En.country()
      "Portugal"
      iex> EverFaker.Address.En.country()
      "United Arab Emirates"
  """
  @spec country() :: String.t()
  localize(:country)

  @doc """
  Return country code.

  ## Examples

      iex> EverFaker.Address.country_code()
      "IT"
      iex> EverFaker.Address.country_code()
      "MR"
      iex> EverFaker.Address.country_code()
      "GM"
      iex> EverFaker.Address.country_code()
      "CX"
  """
  @spec country_code() :: String.t()
  localize(:country_code)

  @doc """
  Returns a geohash.

  ## Examples

      iex> EverFaker.Address.geohash()
      "1kgw0"
      iex> EverFaker.Address.geohash()
      "575152tr612btt"
      iex> EverFaker.Address.geohash()
      "20kxxzd9k22m6jedp"
      iex> EverFaker.Address.geohash()
      "06kjmd2wtwjp2px"
  """
  @spec geohash() :: binary
  def geohash do
    bits = encode_to_bits(latitude(), longitude(), EverFaker.random_between(5, 25) * 5)

    to_geobase32(bits)
  end

  defp encode_to_bits(lat, lon, bits_length) do
    starting_position = bits_length - 1
    # odd bits
    lat_bits = lat_to_bits(lat, starting_position - 1)
    # even bits
    lon_bits = lon_to_bits(lon, starting_position)
    geo_bits = lat_bits + lon_bits
    <<geo_bits::size(bits_length)>>
  end

  defp to_geobase32(bits) do
    chars = for <<c::5 <- bits>>, do: Enum.fetch!(@geobase32, c)
    chars |> to_string
  end

  defp lon_to_bits(lon, position) do
    geo_to_bits(lon, position, {-180.0, 180.0})
  end

  defp lat_to_bits(lat, position) do
    geo_to_bits(lat, position, {-90.0, 90.0})
  end

  defp geo_to_bits(_, position, _) when position < 0 do
    0
  end

  defp geo_to_bits(n, position, {gmin, gmax}) do
    mid = (gmin + gmax) / 2

    if n >= mid do
      round(:math.pow(2, position)) + geo_to_bits(n, position - 2, {mid, gmax})
    else
      geo_to_bits(n, position - 2, {gmin, mid})
    end
  end

  @doc """
  Return random latitude.

  ## Examples

      iex> EverFaker.Address.latitude()
      -62.20459142744528
      iex> EverFaker.Address.latitude()
      -59.39243543011051
      iex> EverFaker.Address.latitude()
      15.346881460762518
      iex> EverFaker.Address.latitude()
      -72.94522080668256
  """
  @spec latitude() :: float
  def latitude do
    EverFaker.random_uniform() * 180 - 90
  end

  @doc """
  Return random longitude.

  ## Examples

      iex> EverFaker.Address.longitude()
      -124.40918285489056
      iex> EverFaker.Address.longitude()
      -118.78487086022102
      iex> EverFaker.Address.longitude()
      30.693762921525035
      iex> EverFaker.Address.longitude()
      -145.8904416133651
  """
  @spec longitude() :: float
  def longitude do
    EverFaker.random_uniform() * 360 - 180
  end

  @doc """
  Return random postcode.

  ## Examples

      iex> EverFaker.Address.postcode()
      "01542"
      iex> EverFaker.Address.postcode()
      "64610"
      iex> EverFaker.Address.postcode()
      "83297"
      iex> EverFaker.Address.postcode()
      "05235"
  """
  @spec postcode() :: String.t()
  defdelegate postcode, to: __MODULE__, as: :zip_code

  @doc """
  Return random secondary address.

  ## Examples

      iex> EverFaker.Address.secondary_address()
      "Apt. 154"
      iex> EverFaker.Address.secondary_address()
      "Apt. 646"
      iex> EverFaker.Address.secondary_address()
      "Suite 083"
      iex> EverFaker.Address.secondary_address()
      "Apt. 970"
  """
  @spec secondary_address() :: String.t()
  localize(:secondary_address)

  @doc """
  Return state.

  ## Examples

      iex> EverFaker.Address.state()
      "Hawaii"
      iex> EverFaker.Address.state()
      "Alaska"
      iex> EverFaker.Address.state()
      "Oklahoma"
      iex> EverFaker.Address.state()
      "California"
  """
  @spec state() :: String.t()
  localize(:state)

  @doc """
  Return state abbr.

  ## Examples

      iex> EverFaker.Address.state_abbr()
      "HI"
      iex> EverFaker.Address.state_abbr()
      "AK"
      iex> EverFaker.Address.state_abbr()
      "OK"
      iex> EverFaker.Address.state_abbr()
      "CA"
  """
  @spec state_abbr() :: String.t()
  localize(:state_abbr)

  @doc """
  Return street address.

  ## Examples

      iex> EverFaker.Address.street_address()
      "15426 Aniya Mews"
      iex> EverFaker.Address.street_address()
      "83297 Jana Spring"
      iex> EverFaker.Address.street_address()
      "57 Helene Mission"
      iex> EverFaker.Address.street_address()
      "03 Izaiah Land"
  """
  @spec street_address() :: String.t()
  def street_address do
    "#{building_number()} #{street_name()}"
  end

  @doc """
  Return `street_address/0` or if argument is `true` adds `secondary_address/0`.

  ## Examples

      iex> EverFaker.Address.street_address(true)
      "15426 Aniya Mews Apt. 832"
      iex> EverFaker.Address.street_address(true)
      "7 Jana Spring Suite 570"
      iex> EverFaker.Address.street_address(true)
      "030 Kozey Knoll Suite 733"
      iex> EverFaker.Address.street_address(true)
      "603 Homenick Shore Suite 981"
  """
  @spec street_address(true | any) :: String.t()
  def street_address(true), do: street_address() <> " " <> secondary_address()
  def street_address(_), do: street_address()

  @doc """
  Return street name.

  ## Examples

      iex> EverFaker.Address.street_name()
      "Elizabeth Freeway"
      iex> EverFaker.Address.street_name()
      "Reese Plaza"
      iex> EverFaker.Address.street_name()
      "Aniya Mews"
      iex> EverFaker.Address.street_name()
      "Bianka Heights"
  """
  @spec street_name() :: String.t()
  def street_name do
    street_name(EverFaker.random_between(0, 1))
  end

  defp street_name(0), do: "#{Person.first_name()} #{street_suffix()}"
  defp street_name(1), do: "#{Person.last_name()} #{street_suffix()}"

  @doc """
  Return street suffix.

  ## Examples

      iex> EverFaker.Address.street_suffix()
      "View"
      iex> EverFaker.Address.street_suffix()
      "Locks"
      iex> EverFaker.Address.street_suffix()
      "Freeway"
      iex> EverFaker.Address.street_suffix()
      "Lodge"
  """
  @spec street_suffix() :: String.t()
  localize(:street_suffix)

  @doc """
  Return time zone.

  ## Examples

      iex> EverFaker.Address.time_zone()
      "Europe/Istanbul"
      iex> EverFaker.Address.time_zone()
      "Europe/Copenhagen"
      iex> EverFaker.Address.time_zone()
      "America/Indiana/Indianapolis"
      iex> EverFaker.Address.time_zone()
      "America/Guyana"
  """
  @spec time_zone() :: String.t()
  localize(:time_zone)

  @doc """
  Return random postcode.

  ## Examples

      iex> EverFaker.Address.zip()
      "01542"
      iex> EverFaker.Address.zip()
      "64610"
      iex> EverFaker.Address.zip()
      "83297"
      iex> EverFaker.Address.zip()
      "05235"
  """
  @spec zip() :: String.t()
  defdelegate zip, to: __MODULE__, as: :zip_code

  @doc """
  Return random postcode.

  ## Examples

      iex> EverFaker.Address.zip_code()
      "01542"
      iex> EverFaker.Address.zip_code()
      "64610"
      iex> EverFaker.Address.zip_code()
      "83297"
      iex> EverFaker.Address.zip_code()
      "05235"
  """
  @spec zip_code() :: String.t()
  localize(:zip_code)
end
