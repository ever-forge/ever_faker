defmodule EverFaker.Commerce.En do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for generating commerce related data in English
  """

  @doc """
  Returns a random color

  ## Examples

      iex> EverFaker.Commerce.En.color()
      "red"
      iex> EverFaker.Commerce.En.color()
      "sky blue"
      iex> EverFaker.Commerce.En.color()
      "lavender"
      iex> EverFaker.Commerce.En.color()
      "grey"
  """
  @spec color() :: String.t()
  sampler(:color, [
    "azure",
    "black",
    "blue",
    "brown",
    "cyan",
    "fuchsia",
    "gold",
    "green",
    "grey",
    "indigo",
    "ivory",
    "lavender",
    "lime",
    "magenta",
    "maroon",
    "mint green",
    "olive",
    "orange",
    "orchid",
    "pink",
    "plum",
    "purple",
    "red",
    "salmon",
    "silver",
    "sky blue",
    "tan",
    "teal",
    "turquoise",
    "violet",
    "white",
    "yellow"
  ])

  @doc """
  Returns a random department

  ## Examples

      iex> EverFaker.Commerce.En.department()
      "Home, Garden & Tools"
      iex> EverFaker.Commerce.En.department()
      "Electronics & Computers"
      iex> EverFaker.Commerce.En.department()
      "Clothing, Shoes & Jewelery"
      iex> EverFaker.Commerce.En.department()
      "Toys, Kids & Baby"
  """
  @spec department() :: String.t()
  sampler(:department, [
    "Books",
    "Movies, Music & Games",
    "Electronics & Computers",
    "Home, Garden & Tools",
    "Grocery, Health & Beauty",
    "Toys, Kids & Baby",
    "Clothing, Shoes & Jewelery",
    "Sports & Outdoors",
    "Automotive & Industrial"
  ])

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials, product names

  ## Examples

      iex> EverFaker.Commerce.En.product_name()
      "Ergonomic Steel Shirt"
      iex> EverFaker.Commerce.En.product_name()
      "Fantastic Car"
      iex> EverFaker.Commerce.En.product_name()
      "Granite Gloves"
      iex> EverFaker.Commerce.En.product_name()
      "Plastic Shoes"
  """
  @spec product_name() :: String.t()
  def product_name, do: product_name(EverFaker.random_between(0, 2))

  defp product_name(0) do
    "#{product_name_adjective()} #{product_name_material()} #{product_name_product()}"
  end

  defp product_name(1), do: "#{product_name_adjective()} #{product_name_product()}"
  defp product_name(2), do: "#{product_name_material()} #{product_name_product()}"

  @doc """
  Returns a random adjective for a product

  ## Examples

      iex> EverFaker.Commerce.En.product_name_adjective()
      "Small"
      iex> EverFaker.Commerce.En.product_name_adjective()
      "Ergonomic"
      iex> EverFaker.Commerce.En.product_name_adjective()
      "Incredible"
      iex> EverFaker.Commerce.En.product_name_adjective()
      "Gorgeous"
  """
  @spec product_name_adjective() :: String.t()
  sampler(:product_name_adjective, [
    "Small",
    "Ergonomic",
    "Rustic",
    "Intelligent",
    "Gorgeous",
    "Incredible",
    "Fantastic",
    "Practical",
    "Sleek",
    "Awesome"
  ])

  @doc """
  Returns a random product material

  ## Examples

      iex> EverFaker.Commerce.En.product_name_material()
      "Rubber"
      iex> EverFaker.Commerce.En.product_name_material()
      "Concrete"
      iex> EverFaker.Commerce.En.product_name_material()
      "Steel"
      iex> EverFaker.Commerce.En.product_name_material()
      "Granite"
  """
  @spec product_name_material() :: String.t()
  sampler(:product_name_material, [
    "Steel",
    "Wooden",
    "Concrete",
    "Plastic",
    "Cotton",
    "Granite",
    "Rubber"
  ])

  @doc """
  Returns a random product name

  ## Examples

      iex> EverFaker.Commerce.En.product_name_product()
      "Gloves"
      iex> EverFaker.Commerce.En.product_name_product()
      "Computer"
      iex> EverFaker.Commerce.En.product_name_product()
      "Table"
      iex> EverFaker.Commerce.En.product_name_product()
      "Shirt"
  """
  @spec product_name_product() :: String.t()
  sampler(:product_name_product, [
    "Chair",
    "Car",
    "Computer",
    "Gloves",
    "Pants",
    "Shirt",
    "Table",
    "Shoes",
    "Hat"
  ])
end
