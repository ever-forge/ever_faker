defmodule Fake.Pizza do
  import Fake, only: [sampler: 2]

  alias Fake.Util

  @moduledoc """
  Functions for generating Pizza related data in English.
  """

  @doc """
  Returns a list with a number of pizzas.

  If an integer is provided, exactly that number of pizzas will be returned.
  If a range is provided, the number will be in the range.
  If no range or integer is specified it defaults to 2..5

  ## Examples

      iex> Fake.Pizza.pizzas()
      [
        "14\\" Greek Fajita",
        "Large with Reindeer, Buffalo Chicken, Egg, Chorizo, and Clam",
        "9\\" Kebab",
        "9\\" Sicilian Style Buffalo Chicken"
      ]
      iex> Fake.Pizza.pizzas(2..3)
      [
        "12\\" Quattro Formaggio",
        "Medium Pesto Chicken"
      ]
      iex> Fake.Pizza.pizzas(3..4)
      [
        "Large Gluten-Free Corn with Oysters, Bacon, and Steak",
        "10\\" Flatbread Pesto Chicken",
        "30\\" Funghi",
        "Small with Sauerkraut"
      ]
      iex> Fake.Pizza.pizzas(5)
      [
        "Large Cheese",
        "Small Sweet Potato Crust with Mackerel, Jalapeños, Smoked Mozzarella, and Smoked Salmon",
        "30\\" with Pickled Ginger, Meatballs, Goat Cheese, Prosciutto, and Pineapple",
        "9\\" Detroit-style with Steak",
        "Family with Clam, Cherry Tomatoes, Salmon, and Chicken"
      ]
  """
  @spec pizzas(integer | Range.t()) :: list(String.t())
  def pizzas(range \\ 2..5)

  def pizzas(num) when is_integer(num) do
    stream = Stream.repeatedly(&pizza/0)
    Enum.take(stream, num)
  end

  def pizzas(range) do
    range
    |> Util.pick()
    |> pizzas()
  end

  @doc """
  Returns a pizza

  ## Examples

      iex> Fake.Pizza.pizza()
      "16\\" with Fior di latte"
      iex> Fake.Pizza.pizza()
      "Medium New York Style with Clam and Reindeer"
      iex> Fake.Pizza.pizza()
      "9\\" Africana"
      iex> Fake.Pizza.pizza()
      "16\\" Meat Lovers"
  """
  @spec pizza() :: String.t()
  def pizza, do: pizza(Fake.random_between(1, 30))
  defp pizza(n) when n <= 5, do: "#{size_or_inches()} with #{toppings_sentence(n)}"

  defp pizza(n) when n <= 10,
    do: "#{size_or_inches()} #{style()} with #{toppings_sentence(n - 5)}"

  defp pizza(n) when n <= 15, do: "#{size_or_inches()} #{style()} #{combo()}"
  defp pizza(_n), do: "#{size_or_inches()} #{combo()}"

  @doc """
  Returns a list with a number of toppings.

  If an integer is provided, exactly that number of toppings will be returned.
  If a range is provided, the number will be in the range.
  If no range or integer is specified it defaults to 2..5

  ## Examples

      iex> Fake.Pizza.toppings()
      ["Pesto Sauce", "Fior di latte", "Broccoli", "Banana Peppers"]
      iex> Fake.Pizza.toppings(4)
      ["Clam", "Reindeer", "Buffalo Chicken", "Egg"]
      iex> Fake.Pizza.toppings(2..3)
      ["Sausage", "Green Peas"]
      iex> Fake.Pizza.toppings(2..3)
      ["Shellfish", "Smoked Salmon"]
  """
  @spec toppings(integer | Range.t()) :: list(String.t())
  def toppings(range \\ 2..5)

  def toppings(num) when is_integer(num) do
    stream = Stream.repeatedly(&topping/0)
    Enum.take(stream, num)
  end

  def toppings(range) do
    range
    |> Util.pick()
    |> toppings()
  end

  defp toppings_sentence(num) do
    num |> toppings() |> Util.to_sentence()
  end

  @doc """
  Returns a random cheese, sauce, meat or vegetarian topping

  ## Examples

      iex> Fake.Pizza.topping()
      "Black Olives"
      iex> Fake.Pizza.topping()
      "Meatballs"
      iex> Fake.Pizza.topping()
      "Asiago"
      iex> Fake.Pizza.topping()
      "Philly Steak"
  """
  @spec topping() :: String.t()
  def topping, do: topping(Fake.random_between(0, 7))
  defp topping(0), do: cheese()
  defp topping(1), do: sauce()
  defp topping(count) when count <= 5, do: meat()
  defp topping(_count), do: vegetable()

  @doc """
  Returns a Pizza Restaurant string

  ## Examples

      iex> Fake.Pizza.company()
      "Papa Plastique"
      iex> Fake.Pizza.company()
      "Chicago Deep Dish"
      iex> Fake.Pizza.company()
      "Pizza Joe’s"
      iex> Fake.Pizza.company()
      "CosaNostra Pizza"
  """
  @spec company() :: String.t()
  sampler(:company, [
    "New York Style Pizza Co",
    "Chicago Deep Dish",
    "Pizza the Hutt",
    "Mystic Pizza",
    "Bob's Pizza-Burgers",
    "Only Cheese Pizzas",
    "California Style Pizzas",
    "Thin Crust or Bust",
    "Family Bros. Pizza",
    "Pizza Planet",
    "Polmieri Pizzeria",
    "Cheese E. Sneezers",
    "Mona Pizza",
    "J. Maggio's Pizza",
    "Pizza De Roma",
    "Dinosaur Pizza",
    "Pizza Potamus",
    "Pizza Forest",
    "Pizza This..",
    "Little Nero's Pizza",
    "Freddy Fazbear's Pizza",
    "The Pizza Hole",
    "Bloaty’s Pizza Hog",
    "Guidio’s Pizza Palace",
    "CosaNostra Pizza",
    "Gamer Pizzas",
    "Jubilee Pizza",
    "Maria’s Pasta and Pizza",
    "Nemo’s Pizza",
    "Paisanos",
    "Papa Plastique",
    "Pete’s Pizza",
    "Pizza Clown",
    "Pizza Face Pizza",
    "Pizza on a Stick",
    "Pizza Joe’s",
    "Pizza Pig-Out",
    "Pizza Shack",
    "Ron’s Pizza Hovel",
    "Sid’s Pizza Parlor"
  ])

  @doc """
  Returns a pizza style

  ## Examples

      iex> Fake.Pizza.style()
      "Pizza Frittata"
      iex> Fake.Pizza.style()
      "Gluten-Free Corn"
      iex> Fake.Pizza.style()
      "Detroit-style"
      iex> Fake.Pizza.style()
      "Stuffed Crust"
  """
  @spec style() :: String.t()
  sampler(:style, [
    "Wood Fired",
    "Thick Crust",
    "Thin Crust",
    "New York Style",
    "Deep Dish",
    "Stuffed Crust",
    "Detroit-style",
    "Kosher",
    "Gluten-Free Quinoa",
    "Flatbread",
    "Sweet Potato Crust",
    "Grilled",
    "New Haven Style",
    "Greek",
    "Sicilian Style",
    "Pizza Rustica",
    "Tomato Pie",
    "Pizza Bread",
    "Neapolitan",
    "Deep Fried Pizza",
    "Gluten-Free Corn",
    "Pizza Frittata",
    "Hand Tossed",
    "Multigrain",
    "Whole Wheat",
    "Fugazza",
    "Spooning Pizza"
  ])

  @doc """
  Returns a sauce string

  ## Examples

      iex> Fake.Pizza.sauce()
      "Spicy Tomato Sauce"
      iex> Fake.Pizza.sauce()
      "Hummus"
      iex> Fake.Pizza.sauce()
      "Pesto Sauce"
      iex> Fake.Pizza.sauce()
      "Hummus"
  """
  @spec sauce() :: String.t()
  sampler(:sauce, [
    "Soy Miso Sauce",
    "Masala Sauce",
    "Classic Tomato Sauce",
    "Spicy Tomato Sauce",
    "Clam Sauce",
    "Bechamel (White) Sauce",
    "Pesto Sauce",
    "BBQ Sauce",
    "Salsa",
    "Passata Sauce",
    "Chipolte Sauce",
    "Mango Sauce",
    "Siracha Sauce",
    "Buffalo Sauce",
    "Tomato Garlic Sauce",
    "Butter Chicken Sauce",
    "Olive Oil",
    "Hummus",
    "White Garlic Sauce",
    "Marinara Sauce",
    "Tapenade",
    "Romesco Sauce",
    "Chimichurri Sauce",
    "Gravy",
    "Aioli",
    "Hoisin Sauce",
    "Chili Sauce",
    "Sweet Chili Sauce",
    "Gremolata",
    "Mustard",
    "Curry",
    "Alfredo Sauce",
    "Zaatar"
  ])

  @doc """
  Returns a cheese string

  ## Examples

      iex> Fake.Pizza.cheese()
      "Mozzarella"
      iex> Fake.Pizza.cheese()
      "Marscapone"
      iex> Fake.Pizza.cheese()
      "Blue (Bleu) Cheese"
      iex> Fake.Pizza.cheese()
      "Smoked Mozzarella"
  """
  @spec cheese() :: String.t()
  sampler(:cheese, [
    "Mozzarella",
    "Cheddar",
    "Feta",
    "Secret Cheese Blend",
    "4 Cheese Blend",
    "Buffalo Mozzarella",
    "Asiago",
    "Romano",
    "Provolone",
    "Emmental",
    "Ricotta",
    "Marscapone",
    "Swiss",
    "Parmesan",
    "Smoked Mozzarella",
    "Blue (Bleu) Cheese",
    "Soy Cheese",
    "Lactose Free Cheese",
    "Whole Milk Mozzarella",
    "Burrata",
    "Goat Cheese",
    "Cashew Cheese",
    "Fior di latte",
    "Paneer",
    "Cheese Curds",
    "Gouda",
    "Fontina",
    "Gorgonzola",
    "Queso Fresco",
    "Crème fraîche"
  ])

  @doc """
  Returns a meat string

  ## Examples

      iex> Fake.Pizza.meat()
      "Buffalo Chicken"
      iex> Fake.Pizza.meat()
      "Meatballs"
      iex> Fake.Pizza.meat()
      "Chicken"
      iex> Fake.Pizza.meat()
      "Meatballs"
  """
  @spec meat() :: String.t()
  sampler(:meat, [
    "Anchovies",
    "Bacon",
    "Pulled Pork",
    "Buffalo Chicken",
    "Canadian Bacon",
    "Capicola",
    "Chicken",
    "Chorizo",
    "Clam",
    "Duck",
    "Eel",
    "Egg",
    "Gyro",
    "Ham",
    "Hamburger",
    "Hot Dogs",
    "Mackerel",
    "Meatballs",
    "Mutton",
    "Pepperoni",
    "Philly Steak",
    "Prosciutto",
    "Reindeer",
    "Salami",
    "Salmon",
    "Sausage",
    "Scallops",
    "Shellfish",
    "Shrimps",
    "Smoked Salmon",
    "Squid",
    "Steak",
    "Venison"
  ])

  @doc """
  Returns a vegetable string

  ## Examples

      iex> Fake.Pizza.vegetable()
      "Mango"
      iex> Fake.Pizza.vegetable()
      "Black Olives"
      iex> Fake.Pizza.vegetable()
      "Green Olives"
      iex> Fake.Pizza.vegetable()
      "Sauerkraut"
  """
  @spec vegetable() :: String.t()
  sampler(:vegetable, [
    "Artichoke Hearts",
    "Arugula",
    "Banana",
    "Banana Peppers",
    "Basil",
    "Black Olives",
    "Broccoli",
    "Capers",
    "Caramelised Onions",
    "Cherry Tomatoes",
    "Coconut",
    "Eggplant",
    "Garlic",
    "Green Olives",
    "Green Peas",
    "Green Peppers",
    "Habanero Peppers",
    "Jalapeños",
    "Mango",
    "Mushrooms",
    "Onions",
    "Oysters",
    "Peperoncini",
    "Pickled Ginger",
    "Pineapple",
    "Potatoes",
    "Red Onion",
    "Red Peppers",
    "Sauerkraut",
    "Spinach",
    "Sun-Dried Tomatoes",
    "Sweet Corn",
    "Sweet Potato",
    "Zucchini"
  ])

  @doc """
  Returns a combo string

  ## Examples

      iex> Fake.Pizza.combo()
      "Hot & Spicy"
      iex> Fake.Pizza.combo()
      "Breakfast"
      iex> Fake.Pizza.combo()
      "Thai Chicken"
      iex> Fake.Pizza.combo()
      "Poutine"
  """
  @spec combo() :: String.t()
  sampler(:combo, [
    "Africana",
    "All Dressed",
    "Bacon Cheeseburger",
    "BBQ Chicken",
    "Bianca",
    "Bolognese",
    "Breakfast",
    "Buffalo Chicken",
    "Canadian",
    "Caprese",
    "Capricciosa",
    "Cheese",
    "Chicken Pesto",
    "Ciao-ciao",
    "Curry Banana",
    "Double Dutch",
    "Fajita",
    "Fig and Goat Cheese",
    "Four Seasons",
    "Frutti di mare",
    "Funghi",
    "Grandma",
    "Greek",
    "Grilled Vegetarian",
    "Hawaiian",
    "Hot & Spicy",
    "Italian Deli",
    "Kebab",
    "Loaded",
    "Maltija",
    "Margherita",
    "Meat Feast",
    "Meat Lovers",
    "Meatball",
    "Mockba",
    "Onion & Gorgonzola",
    "Pepperoni & Mushroom",
    "Perogie",
    "Pesto Chicken",
    "Poutine",
    "Prociutto Arugala",
    "Pugliese",
    "Quattro Formaggi",
    "Quattro Formaggio",
    "Quattro stagioni",
    "Romana",
    "Shrimp Club",
    "Smoked Salmon & Goat Cheese",
    "Supreme",
    "Taco",
    "Thai Chicken",
    "Vegetarian Lovers",
    "Vegetariana",
    "Veggie Korma",
    "Viennese"
  ])

  @doc """
  Returns a random size or inches

  ## Examples

      iex> Fake.Pizza.size_or_inches()
      "Family"
      iex> Fake.Pizza.size_or_inches()
      "14\\""
      iex> Fake.Pizza.size_or_inches()
      "Personal"
      iex> Fake.Pizza.size_or_inches()
      "Medium"
  """
  @spec size_or_inches() :: String.t()
  def size_or_inches, do: size_or_inches(Fake.random_between(0, 1))
  defp size_or_inches(0), do: size()
  defp size_or_inches(1), do: inches()

  @doc """
  Returns a size string

  ## Examples

      iex> Fake.Pizza.size()
      "Personal"
      iex> Fake.Pizza.size()
      "Family"
      iex> Fake.Pizza.size()
      "Large"
      iex> Fake.Pizza.size()
      "Medium"
  """
  @spec size() :: String.t()
  sampler(:size, ["Personal", "Small", "Medium", "Large", "Extra-Large", "Family"])

  @doc """
  Returns an inches string

  ## Examples

      iex> Fake.Pizza.inches()
      "9\\""
      iex> Fake.Pizza.inches()
      "10\\""
      iex> Fake.Pizza.inches()
      "16\\""
      iex> Fake.Pizza.inches()
      "14\\""
  """
  @spec inches() :: String.t()
  sampler(:inches, ["9\"", "10\"", "11\"", "12\"", "14\"", "16\"", "18\"", "20\"", "26\"", "30\""])
end
