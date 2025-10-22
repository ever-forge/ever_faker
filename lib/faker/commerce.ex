defmodule EverFaker.Commerce do
  import EverFaker, only: [localize: 1]

  @moduledoc """
  Functions for generating commerce related data
  """

  @doc """
  Returns a random color

  ## Examples

      iex> EverFaker.Commerce.color()
      "red"
      iex> EverFaker.Commerce.color()
      "sky blue"
      iex> EverFaker.Commerce.color()
      "lavender"
      iex> EverFaker.Commerce.color()
      "grey"
  """
  @spec color() :: String.t()
  localize(:color)

  @doc """
  Returns a random department

  ## Examples

      iex> EverFaker.Commerce.department()
      "Home, Garden & Tools"
      iex> EverFaker.Commerce.department()
      "Electronics & Computers"
      iex> EverFaker.Commerce.department()
      "Clothing, Shoes & Jewelery"
      iex> EverFaker.Commerce.department()
      "Toys, Kids & Baby"
  """
  @spec department() :: String.t()
  localize(:department)

  @doc """
  Returns a random number that represents a price

  ## Examples

      iex> EverFaker.Commerce.price()
      1.11
      iex> EverFaker.Commerce.price()
      4.02
      iex> EverFaker.Commerce.price()
      8.36
      iex> EverFaker.Commerce.price()
      3.05
  """
  @spec price() :: float
  def price do
    EverFaker.random_between(1, 1000) / 100.0
  end

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials, product names

  ## Examples

      iex> EverFaker.Commerce.product_name()
      "Ergonomic Steel Shirt"
      iex> EverFaker.Commerce.product_name()
      "Fantastic Car"
      iex> EverFaker.Commerce.product_name()
      "Granite Gloves"
      iex> EverFaker.Commerce.product_name()
      "Plastic Shoes"
  """
  @spec product_name() :: String.t()
  localize(:product_name)

  @doc """
  Returns a random adjective for a product

  ## Examples

      iex> EverFaker.Commerce.product_name_adjective()
      "Small"
      iex> EverFaker.Commerce.product_name_adjective()
      "Ergonomic"
      iex> EverFaker.Commerce.product_name_adjective()
      "Incredible"
      iex> EverFaker.Commerce.product_name_adjective()
      "Gorgeous"
  """
  @spec product_name_adjective() :: String.t()
  localize(:product_name_adjective)

  @doc """
  Returns a random product material

  ## Examples

      iex> EverFaker.Commerce.product_name_material()
      "Rubber"
      iex> EverFaker.Commerce.product_name_material()
      "Concrete"
      iex> EverFaker.Commerce.product_name_material()
      "Steel"
      iex> EverFaker.Commerce.product_name_material()
      "Granite"
  """
  @spec product_name_material() :: String.t()
  localize(:product_name_material)

  @doc """
  Returns a random product name

  ## Examples

      iex> EverFaker.Commerce.product_name_product()
      "Gloves"
      iex> EverFaker.Commerce.product_name_product()
      "Computer"
      iex> EverFaker.Commerce.product_name_product()
      "Table"
      iex> EverFaker.Commerce.product_name_product()
      "Shirt"
  """
  @spec product_name_product() :: String.t()
  localize(:product_name_product)
end
