defmodule EverFaker.Commerce.PtBr do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Functions for generating commerce related data in Brazilian Portuguese.
  """

  alias EverFaker.Color.PtBr, as: Color

  @doc """
  Returns a random color.

  ## Examples

      iex> EverFaker.Commerce.PtBr.color()
      "Vermelho(a)"
      iex> EverFaker.Commerce.PtBr.color()
      "Verde"
      iex> EverFaker.Commerce.PtBr.color()
      "Marrom"
      iex> EverFaker.Commerce.PtBr.color()
      "Rosa"
  """
  @spec color() :: String.t()
  def color do
    # As in Brazilian Portuguese we have feminine and masculine words, this function suffixes an (a)
    # when a color name ends with an 'o'.
    # Words ending with an 'o' are masculine words, but when we suffice an (a), we are saying the word
    # can be either feminine or masculine.

    color = Color.name()

    color
    |> String.split("", trim: true)
    |> List.last()
    |> case do
      "o" -> color <> "(a)"
      _ -> color
    end
  end

  @doc """
  Returns a random department

  ## Examples

      iex> EverFaker.Commerce.PtBr.department()
      "Eletrônicos, TV e Áudio"
      iex> EverFaker.Commerce.PtBr.department()
      "Alimentos e bebidas"
      iex> EverFaker.Commerce.PtBr.department()
      "Livros"
      iex> EverFaker.Commerce.PtBr.department()
      "Beleza e cuidados pessoais"
  """
  @spec department() :: String.t()
  sampler(:department, [
    "Academia",
    "Alimentos e bebidas",
    "Automotivo",
    "Bebês",
    "Beleza e cuidados pessoais",
    "Brinquedos",
    "Casa, Jardim e Limpeza",
    "Celulares",
    "Computadores e Informática",
    "Cozinha",
    "Eletrônicos, TV e Áudio",
    "Esportes, Aventura e Lazer",
    "Ferramentas e Construção",
    "Filmes, Séries e Música",
    "Games e Consoles",
    "Livros",
    "Papelaria e Escritório",
    "Pet Shop",
    "Roupas, Calçados e Acessórios",
    "Saúde e Bem-estar"
  ])

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials, product names

  ## Examples

      iex> EverFaker.Commerce.PtBr.product_name()
      "Cadeira Gigante de Algodão"
      iex> EverFaker.Commerce.PtBr.product_name()
      "Computador de Granito"
      iex> EverFaker.Commerce.PtBr.product_name()
      "Bolsa Médio(a)"
      iex> EverFaker.Commerce.PtBr.product_name()
      "Escrivaninha Grande"
  """
  @spec product_name() :: String.t()
  def product_name, do: product_name(EverFaker.random_between(0, 5))

  defp product_name(0) do
    "#{product_name_product()} #{product_name_adjective()} de #{product_name_material()}"
  end

  defp product_name(1) do
    "#{product_name_product()} #{color()} #{product_name_adjective()} de #{product_name_material()}"
  end

  defp product_name(2), do: "#{product_name_product()} #{product_name_adjective()}"
  defp product_name(3), do: "#{product_name_product()} #{color()} #{product_name_adjective()}"
  defp product_name(4), do: "#{product_name_product()} de #{product_name_material()}"
  defp product_name(5), do: "#{product_name_product()} #{color()} de #{product_name_material()}"

  @doc """
  Returns a random adjective for a product

  ## Examples

      iex> EverFaker.Commerce.PtBr.product_name_adjective()
      "Gigante"
      iex> EverFaker.Commerce.PtBr.product_name_adjective()
      "Rústico(a)"
      iex> EverFaker.Commerce.PtBr.product_name_adjective()
      "Gigante"
      iex> EverFaker.Commerce.PtBr.product_name_adjective()
      "Elegante"
  """
  @spec product_name_adjective() :: String.t()
  sampler(
    :product_name_adjective,
    [
      "Aerodinâmico",
      "Durável",
      "Elegante",
      "Ergonômico(a)",
      "Gigante",
      "Grande",
      "Inteligente",
      "Luxo",
      "Médio(a)",
      "Pequeno(a)",
      "Prático",
      "Rústico(a)",
      "Simples"
    ]
  )

  @doc """
  Returns a random product material

  ## Examples

      iex> EverFaker.Commerce.PtBr.product_name_material()
      "Plástico"
      iex> EverFaker.Commerce.PtBr.product_name_material()
      "Aço"
      iex> EverFaker.Commerce.PtBr.product_name_material()
      "Concreto"
      iex> EverFaker.Commerce.PtBr.product_name_material()
      "Algodão"
  """
  @spec product_name_material() :: String.t()
  sampler(:product_name_material, [
    "Algodão",
    "Aço",
    "Borracha",
    "Concreto",
    "Granito",
    "Madeira",
    "Plástico",
    "Silicone"
  ])

  @doc """
  Returns a random product name

  ## Examples

      iex> EverFaker.Commerce.PtBr.product_name_product()
      "Guarda-roupa"
      iex> EverFaker.Commerce.PtBr.product_name_product()
      "Cadeira"
      iex> EverFaker.Commerce.PtBr.product_name_product()
      "Cobertor"
      iex> EverFaker.Commerce.PtBr.product_name_product()
      "Sandália"
  """
  @spec product_name_product() :: String.t()
  sampler(:product_name_product, [
    "Armário",
    "Aspirador de pó",
    "Balcão",
    "Bolsa",
    "Barraca",
    "Cadeira",
    "Caderno",
    "Calça",
    "Cama",
    "Camiseta",
    "Carro",
    "Celular",
    "Chapéu",
    "Cobertor",
    "Computador",
    "Escrivaninha",
    "Estante",
    "Gorro",
    "Guarda-roupa",
    "Guitarra",
    "Luva",
    "Mesa",
    "Mochila",
    "Notebook",
    "Pia",
    "Piano",
    "Porta-jóias",
    "Quadro",
    "Sandália",
    "Sapato",
    "Saxofone",
    "Tênis",
    "Teclado",
    "Violão"
  ])
end
