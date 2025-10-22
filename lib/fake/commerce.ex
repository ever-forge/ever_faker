defmodule Fake.Commerce do
  import Fake, only: [localize: 1]

  @moduledoc """
  Functions for generating commerce related data
  """

  @doc """
  Returns a random color

  ## Examples

      iex> Fake.Commerce.color()
      "red"
      iex> Fake.Commerce.color()
      "sky blue"
      iex> Fake.Commerce.color()
      "lavender"
      iex> Fake.Commerce.color()
      "grey"
  """
  @spec color() :: String.t()
  localize(:color)

  @doc """
  Returns a random department

  ## Examples

      iex> Fake.Commerce.department()
      "Home, Garden & Tools"
      iex> Fake.Commerce.department()
      "Electronics & Computers"
      iex> Fake.Commerce.department()
      "Clothing, Shoes & Jewelery"
      iex> Fake.Commerce.department()
      "Toys, Kids & Baby"
  """
  @spec department() :: String.t()
  localize(:department)

  @doc """
  Returns a random number that represents a price

  ## Examples

      iex> Fake.Commerce.price()
      1.11
      iex> Fake.Commerce.price()
      4.02
      iex> Fake.Commerce.price()
      8.36
      iex> Fake.Commerce.price()
      3.05
  """
  @spec price() :: float
  def price do
    Fake.random_between(1, 1000) / 100.0
  end

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials, product names

  ## Examples

      iex> Fake.Commerce.product_name()
      "Ergonomic Steel Shirt"
      iex> Fake.Commerce.product_name()
      "Fantastic Car"
      iex> Fake.Commerce.product_name()
      "Granite Gloves"
      iex> Fake.Commerce.product_name()
      "Plastic Shoes"
  """
  @spec product_name() :: String.t()
  localize(:product_name)

  @doc """
  Returns a random adjective for a product

  ## Examples

      iex> Fake.Commerce.product_name_adjective()
      "Small"
      iex> Fake.Commerce.product_name_adjective()
      "Ergonomic"
      iex> Fake.Commerce.product_name_adjective()
      "Incredible"
      iex> Fake.Commerce.product_name_adjective()
      "Gorgeous"
  """
  @spec product_name_adjective() :: String.t()
  localize(:product_name_adjective)

  @doc """
  Returns a random product material

  ## Examples

      iex> Fake.Commerce.product_name_material()
      "Rubber"
      iex> Fake.Commerce.product_name_material()
      "Concrete"
      iex> Fake.Commerce.product_name_material()
      "Steel"
      iex> Fake.Commerce.product_name_material()
      "Granite"
  """
  @spec product_name_material() :: String.t()
  localize(:product_name_material)

  @doc """
  Returns a random product name

  ## Examples

      iex> Fake.Commerce.product_name_product()
      "Gloves"
      iex> Fake.Commerce.product_name_product()
      "Computer"
      iex> Fake.Commerce.product_name_product()
      "Table"
      iex> Fake.Commerce.product_name_product()
      "Shirt"
  """
  @spec product_name_product() :: String.t()
  localize(:product_name_product)
end
