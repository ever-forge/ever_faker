defmodule EverFaker.Food do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating food data.
  """

  @doc """
  Returns a random complete dish.

  ## Examples

      iex> EverFaker.Food.dish()
      "Vegetable Soup"
      iex> EverFaker.Food.dish()
      "Fish and chips"
      iex> EverFaker.Food.dish()
      "Pork belly buns"
      iex> EverFaker.Food.dish()
      "Pasta Carbonara"
  """
  @spec dish() :: String.t()
  localize(:dish)

  @doc """
  Returns a random description.

  ## Examples

      iex> EverFaker.Food.description()
      "Two buttermilk waffles, topped with whipped cream and maple syrup, a side of two eggs served any style, and your choice of smoked bacon or smoked ham."
      iex> EverFaker.Food.description()
      "28-day aged 300g USDA Certified Prime Ribeye, rosemary-thyme garlic butter, with choice of two sides."
      iex> EverFaker.Food.description()
      "Breaded fried chicken with waffles, and a side of maple syrup."
      iex> EverFaker.Food.description()
      "Creamy mascarpone cheese and custard layered between espresso and rum soaked house-made ladyfingers, topped with Valrhona cocoa powder."
  """
  @spec description() :: String.t()
  localize(:description)

  @doc """
  Returns a random ingredient.

  ## Examples

      iex> EverFaker.Food.ingredient()
      "Tomatoes"
      iex> EverFaker.Food.ingredient()
      "Albacore Tuna"
      iex> EverFaker.Food.ingredient()
      "Potatoes"
      iex> EverFaker.Food.ingredient()
      "Tinned"
  """
  @spec ingredient() :: String.t()
  localize(:ingredient)

  @doc """
  Returns a random spicy ingredient.

  ## Examples

      iex> EverFaker.Food.spice()
      "Garlic Salt"
      iex> EverFaker.Food.spice()
      "Ras-el-Hanout"
      iex> EverFaker.Food.spice()
      "Curry Hot"
      iex> EverFaker.Food.spice()
      "Peppercorns Mixed"
  """
  @spec spice() :: String.t()
  localize(:spice)

  @doc """
  Returns a random measurement.

  ## Examples

      iex> EverFaker.Food.measurement()
      "teaspoon"
      iex> EverFaker.Food.measurement()
      "gallon"
      iex> EverFaker.Food.measurement()
      "pint"
      iex> EverFaker.Food.measurement()
      "cup"
  """
  @spec measurement() :: String.t()
  localize(:measurement)

  @doc """
  Returns a random measurement size.

  ## Examples

      iex> EverFaker.Food.measurement_size()
      "1/4"
      iex> EverFaker.Food.measurement_size()
      "3"
      iex> EverFaker.Food.measurement_size()
      "1"
      iex> EverFaker.Food.measurement_size()
      "1/2"
  """
  @spec measurement_size() :: String.t()
  localize(:measurement_size)

  @doc """
  Returns a random metric measurement.

  ## Examples

      iex> EverFaker.Food.metric_measurement()
      "centiliter"
      iex> EverFaker.Food.metric_measurement()
      "deciliter"
      iex> EverFaker.Food.metric_measurement()
      "liter"
      iex> EverFaker.Food.metric_measurement()
      "milliliter"
  """
  @spec metric_measurement() :: String.t()
  localize(:metric_measurement)

  @doc """
  Returns a type of sushi.

  ## Examples

      iex> EverFaker.Food.sushi()
      "Whitespotted conger"
      iex> EverFaker.Food.sushi()
      "Japanese horse mackerel"
      iex> EverFaker.Food.sushi()
      "Salmon"
      iex> EverFaker.Food.sushi()
      "Octopus"
  """
  @spec sushi() :: String.t()
  localize(:sushi)
end
