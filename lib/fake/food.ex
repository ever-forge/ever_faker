defmodule Fake.Food do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating food data.
  """

  @doc """
  Returns a random complete dish.

  ## Examples

      iex> Fake.Food.dish()
      "Vegetable Soup"
      iex> Fake.Food.dish()
      "Fish and chips"
      iex> Fake.Food.dish()
      "Pork belly buns"
      iex> Fake.Food.dish()
      "Pasta Carbonara"
  """
  @spec dish() :: String.t()
  localize(:dish)

  @doc """
  Returns a random description.

  ## Examples

      iex> Fake.Food.description()
      "Two buttermilk waffles, topped with whipped cream and maple syrup, a side of two eggs served any style, and your choice of smoked bacon or smoked ham."
      iex> Fake.Food.description()
      "28-day aged 300g USDA Certified Prime Ribeye, rosemary-thyme garlic butter, with choice of two sides."
      iex> Fake.Food.description()
      "Breaded fried chicken with waffles, and a side of maple syrup."
      iex> Fake.Food.description()
      "Creamy mascarpone cheese and custard layered between espresso and rum soaked house-made ladyfingers, topped with Valrhona cocoa powder."
  """
  @spec description() :: String.t()
  localize(:description)

  @doc """
  Returns a random ingredient.

  ## Examples

      iex> Fake.Food.ingredient()
      "Tomatoes"
      iex> Fake.Food.ingredient()
      "Albacore Tuna"
      iex> Fake.Food.ingredient()
      "Potatoes"
      iex> Fake.Food.ingredient()
      "Tinned"
  """
  @spec ingredient() :: String.t()
  localize(:ingredient)

  @doc """
  Returns a random spicy ingredient.

  ## Examples

      iex> Fake.Food.spice()
      "Garlic Salt"
      iex> Fake.Food.spice()
      "Ras-el-Hanout"
      iex> Fake.Food.spice()
      "Curry Hot"
      iex> Fake.Food.spice()
      "Peppercorns Mixed"
  """
  @spec spice() :: String.t()
  localize(:spice)

  @doc """
  Returns a random measurement.

  ## Examples

      iex> Fake.Food.measurement()
      "teaspoon"
      iex> Fake.Food.measurement()
      "gallon"
      iex> Fake.Food.measurement()
      "pint"
      iex> Fake.Food.measurement()
      "cup"
  """
  @spec measurement() :: String.t()
  localize(:measurement)

  @doc """
  Returns a random measurement size.

  ## Examples

      iex> Fake.Food.measurement_size()
      "1/4"
      iex> Fake.Food.measurement_size()
      "3"
      iex> Fake.Food.measurement_size()
      "1"
      iex> Fake.Food.measurement_size()
      "1/2"
  """
  @spec measurement_size() :: String.t()
  localize(:measurement_size)

  @doc """
  Returns a random metric measurement.

  ## Examples

      iex> Fake.Food.metric_measurement()
      "centiliter"
      iex> Fake.Food.metric_measurement()
      "deciliter"
      iex> Fake.Food.metric_measurement()
      "liter"
      iex> Fake.Food.metric_measurement()
      "milliliter"
  """
  @spec metric_measurement() :: String.t()
  localize(:metric_measurement)

  @doc """
  Returns a type of sushi.

  ## Examples

      iex> Fake.Food.sushi()
      "Whitespotted conger"
      iex> Fake.Food.sushi()
      "Japanese horse mackerel"
      iex> Fake.Food.sushi()
      "Salmon"
      iex> Fake.Food.sushi()
      "Octopus"
  """
  @spec sushi() :: String.t()
  localize(:sushi)
end
