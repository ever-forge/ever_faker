defmodule Fake.Fruit.En do
  import Fake, only: [sampler: 2]

  @moduledoc """
  Functions for fruit data in English.
  """

  @doc """
  Returns a fruit.
  ## Examples
      iex> Fake.Fruit.En.fruit()
      "Kiwano"
      iex> Fake.Fruit.En.fruit()
      "Sugarcane"
      iex> Fake.Fruit.En.fruit()
      "Pineapple"
      iex> Fake.Fruit.En.fruit()
      "Lemon"
  """
  @spec fruit() :: String.t()
  sampler(:fruit, [
    "Apple",
    "Apricot",
    "Avocado",
    "Banana",
    "Black currant",
    "Blackberry",
    "Blueberry",
    "Carambola",
    "Cashew apple",
    "Cherry",
    "Cloudberry",
    "Coconut",
    "Cranberry",
    "Custard apple",
    "Damson",
    "Dragonfruit",
    "Elderberry",
    "Fig",
    "Feijoa",
    "Goji berry",
    "Grapes",
    "Grapefruit",
    "Grewia",
    "Guava",
    "Hanepoot",
    "Huckleberry",
    "Jackfruit",
    "Jamun",
    "Jicama",
    "Jujube",
    "Kiwano",
    "Kiwi",
    "Lemon",
    "Longan",
    "Loquat",
    "Lychee",
    "Mango",
    "Malay apple",
    "Melon",
    "Monk fruit",
    "Mulberry",
    "Muskmelon",
    "Nance",
    "Olive",
    "Orange",
    "Palm fruit",
    "Papaya",
    "Passion fruit",
    "Peach",
    "Pear",
    "Persimmon",
    "Pineapple",
    "Plum",
    "Pomegranate",
    "Prickly pear",
    "Pumpkin",
    "Quince",
    "Raspberry",
    "Red currant",
    "Sapodilla",
    "Satsuma",
    "Shaddock",
    "Soursop",
    "Spanish cherry",
    "Strawberry",
    "Sugarcane",
    "Surinam cherry",
    "Sweet lemon",
    "Tamarillo",
    "Tamarind",
    "Tangerine",
    "Watermelon"
  ])
end
