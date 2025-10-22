defmodule EverFaker.Vehicle do
  import EverFaker, only: [localize: 1]
  alias EverFaker.Util
  alias EverFaker.Vehicle.En

  @moduledoc """
  Functions for generating Vehicle related data
  """

  @doc """
  Returns a vehicle body style string

  ## Examples

      iex> EverFaker.Vehicle.body_style()
      "Minivan"
      iex> EverFaker.Vehicle.body_style()
      "Hatchback"
      iex> EverFaker.Vehicle.body_style()
      "Crew Cab Pickup"
      iex> EverFaker.Vehicle.body_style()
      "Regular Cab Pickup"
  """
  @spec body_style() :: String.t()
  localize(:body_style)

  @doc """
  Returns a vehicle drivetrain string

  ## Examples

      iex> EverFaker.Vehicle.drivetrain()
      "4x2/2-wheel drive"
      iex> EverFaker.Vehicle.drivetrain()
      "4x4/4-wheel drive"
      iex> EverFaker.Vehicle.drivetrain()
      "4x2/2-wheel drive"
      iex> EverFaker.Vehicle.drivetrain()
      "RWD"
  """
  @spec drivetrain() :: String.t()
  localize(:drivetrain)

  @doc """
  Returns a vehicle fuel type string

  ## Examples

      iex> EverFaker.Vehicle.fuel_type()
      "Ethanol"
      iex> EverFaker.Vehicle.fuel_type()
      "E-85/Gasoline"
      iex> EverFaker.Vehicle.fuel_type()
      "Compressed Natural Gas"
      iex> EverFaker.Vehicle.fuel_type()
      "Gasoline Hybrid"
  """
  @spec fuel_type() :: String.t()
  localize(:fuel_type)

  @doc """
  Returns a vehicle make string

  ## Examples

      iex> EverFaker.Vehicle.make()
      "Lincoln"
      iex> EverFaker.Vehicle.make()
      "Dodge"
      iex> EverFaker.Vehicle.make()
      "Chevrolet"
      iex> EverFaker.Vehicle.make()
      "Honda"
  """
  @spec make() :: String.t()
  localize(:make)

  @doc """
  Returns a vehicle make and model string

  ## Examples

      iex> EverFaker.Vehicle.make_and_model()
      "Lincoln MKZ"
      iex> EverFaker.Vehicle.make_and_model()
      "Chevrolet Malibu"
      iex> EverFaker.Vehicle.make_and_model()
      "Ford Focus"
      iex> EverFaker.Vehicle.make_and_model()
      "Ford Focus"
  """
  @spec make_and_model() :: String.t()
  localize(:make_and_model)

  @doc """
  Returns a vehicle model string

  ## Examples

      iex> EverFaker.Vehicle.model()
      "Encore"
      iex> EverFaker.Vehicle.model()
      "S5"
      iex> EverFaker.Vehicle.model()
      "Fiesta"
      iex> EverFaker.Vehicle.model()
      "X1"
  """
  @spec model() :: String.t()
  localize(:model)

  @doc """
  Returns a vehicle model string belonging to the given make

  ## Examples
      iex> EverFaker.Vehicle.model("Ford")
      "Focus"
      iex> EverFaker.Vehicle.model("BMW")
      "X5"
      iex> EverFaker.Vehicle.model("Audi")
      "A4"
      iex> EverFaker.Vehicle.model("Toyota")
      "Corolla"
  """
  @spec model(String.t()) :: String.t()
  def model(make) do
    En.model(make)
  end

  @doc """
  Returns a vehicle option string

  ## Examples

      iex> EverFaker.Vehicle.option()
      "Premium Sound"
      iex> EverFaker.Vehicle.option()
      "Power Steering"
      iex> EverFaker.Vehicle.option()
      "A/C: Front"
      iex> EverFaker.Vehicle.option()
      "Keyless Entry"
  """

  @spec option() :: String.t()
  localize(:option)

  @doc """
  Returns a vehicle option string

  ## Examples
      iex> EverFaker.Vehicle.option()
      "Premium Sound"
      iex> EverFaker.Vehicle.option()
      "Power Steering"
      iex> EverFaker.Vehicle.option()
      "A/C: Front"
      iex> EverFaker.Vehicle.option()
      "Keyless Entry"
  """
  @spec options() :: String.t()
  localize(:options)

  @doc """
  Returns a list of vehicle options()

  ## Examples

      iex> EverFaker.Vehicle.options()
      ["Power Steering", "A/C: Front", "Keyless Entry", "AM/FM Stereo", "Power Steering", "Antilock Brakes", "8-Track Player", "Leather Interior"]
      iex> EverFaker.Vehicle.options()
      ["MP3 (Multi Disc)", "A/C: Rear", "Fog Lights", "Power Windows", "Cruise Control", "Premium Sound", "A/C: Front"]
      iex> EverFaker.Vehicle.options()
      ["Tinted Glass", "MP3 (Single Disc)", "CD (Multi Disc)"]
      iex> EverFaker.Vehicle.options()
      ["Fog Lights", "Rear Window Wiper", "MP3 (Multi Disc)", "Navigation", "Airbag: Side", "Rear Window Defroster", "Premium Sound"]
  """
  @spec options(non_neg_integer()) :: list(String.t())
  def options(number) do
    En.options(number)
  end

  @doc """
  Returns a vehicle standard option string

  ## Examples

      iex> EverFaker.Vehicle.standard_spec()
      "Tire pressure monitoring system (TPMS)"
      iex> EverFaker.Vehicle.standard_spec()
      "20\\" x 9.0\\" front & 20\\" x 10.0\\" rear aluminum wheels"
      iex> EverFaker.Vehicle.standard_spec()
      "Deluxe insulation group"
      iex> EverFaker.Vehicle.standard_spec()
      "Torsion beam rear suspension w/stabilizer bar"
  """
  @spec standard_spec() :: String.t()
  localize(:standard_spec)

  @doc """
  Returns a list of vehicle standard specs

  ## Examples

      iex> EverFaker.Vehicle.standard_specs()
      ["20\\" x 9.0\\" front & 20\\" x 10.0\\" rear aluminum wheels", "Deluxe insulation group", "Torsion beam rear suspension w/stabilizer bar", "High performance suspension", "200mm front axle", "Traveler/mini trip computer", "P235/50R18 all-season tires", "Front door tinted glass"]
      iex> EverFaker.Vehicle.standard_specs()
      ["625-amp maintenance-free battery", "Body color sill extension", "Cargo compartment cover", "Dana 44/226mm rear axle", "Tachometer", "Leather-wrapped parking brake handle", "Side-impact door beams"]
      iex> EverFaker.Vehicle.standard_specs()
      ["Tilt steering column", "Luxury front & rear floor mats w/logo", "HomeLink universal transceiver"]
      iex> EverFaker.Vehicle.standard_specs()
      ["Multi-reflector halogen headlamps", "Multi-info display -inc: driving range, average MPG, current MPG, average speed, outside temp, elapsed time, maintenance & diagnostic messages", "Zone body construction -inc: front/rear crumple zones, hood deformation point", "60/40 split fold-down rear seat w/outboard adjustable headrests", "Trim-panel-mounted storage net", "Front side-impact airbags", "Front/rear spot-lamp illumination"]
  """
  @spec standard_specs() :: list(String.t())
  def standard_specs do
    En.standard_specs()
  end

  @doc """
  Returns a list of vehicle standard specs of the given length

  ## Examples

      iex> EverFaker.Vehicle.En.standard_specs(3)
      ["Tire pressure monitoring system (TPMS)", "20\\" x 9.0\\" front & 20\\" x 10.0\\" rear aluminum wheels", "Deluxe insulation group"]
      iex> EverFaker.Vehicle.En.standard_specs(3)
      ["Torsion beam rear suspension w/stabilizer bar", "High performance suspension", "200mm front axle"]
      iex> EverFaker.Vehicle.En.standard_specs(3)
      ["Traveler/mini trip computer", "P235/50R18 all-season tires", "Front door tinted glass"]
      iex> EverFaker.Vehicle.En.standard_specs(3)
      ["XM satellite radio receiver -inc: 90 day trial subscription", "625-amp maintenance-free battery", "Body color sill extension"]
  """
  @spec standard_specs(non_neg_integer()) :: list(String.t())
  def standard_specs(number) do
    En.standard_specs(number)
  end

  @doc """
  Returns a vehicle transmission string

  ## Examples

      iex> EverFaker.Vehicle.transmission()
      "CVT"
      iex> EverFaker.Vehicle.transmission()
      "Automatic"
      iex> EverFaker.Vehicle.transmission()
      "Manual"
      iex> EverFaker.Vehicle.transmission()
      "Automanual"
  """
  @spec transmission() :: String.t()
  localize(:transmission)

  @doc """
  Returns a vehicle identification number string

  ## Examples

      iex> EverFaker.Vehicle.vin()
      "1C689K5Y000T03374"
      iex> EverFaker.Vehicle.vin()
      "D0B19RGCD90H16449"
      iex> EverFaker.Vehicle.vin()
      "RSE90354760B00530"
      iex> EverFaker.Vehicle.vin()
      "L9Z63TST830A76983"
  """
  def vin do
    Util.format("%10x%y%x%5d",
      x: fn ->
        Util.pick([Util.upper_letter(), Util.digit()], ["I", "O", "Q"])
      end,
      y: fn ->
        Util.pick([Util.upper_letter(), "0"], ["I", "O", "Q"])
      end,
      d: fn ->
        Util.digit()
      end
    )
  end
end
