defmodule EverFaker.Company.Hy do
  import EverFaker, only: [sampler: 2]

  alias EverFaker.Person.Hy, as: Person

  @moduledoc """
  Functions for generating company related data in Armenian
  """

  @doc """
  Returns a random complete business related bullshit.

  ## Examples

      iex> EverFaker.Company.Hy.bs()
      "առավելագույնի հասցնել նորարարական հարաբերություններ"
      iex> EverFaker.Company.Hy.bs()
      "ակտիվացնել վիրտուալ օգտագործողներ"
      iex> EverFaker.Company.Hy.bs()
      "առաքել գլոբալ կառուցվածքներ"
      iex> EverFaker.Company.Hy.bs()
      "առաքել հարուստ փորձառություններ"
  """
  @spec bs() :: String.t()
  def bs, do: "#{bullshit_prefix()} #{bullshit()} #{bullshit_suffix()}"

  @doc """
  Returns a random business related bullshit.

  ## Examples

      iex> EverFaker.Company.Hy.bullshit()
      "ազդեցիկ"
      iex> EverFaker.Company.Hy.bullshit()
      "նորարարական"
      iex> EverFaker.Company.Hy.bullshit()
      "ժամանակակից"
      iex> EverFaker.Company.Hy.bullshit()
      "ժամանակակից"
  """
  @spec bullshit() :: String.t()
  sampler(:bullshit, [
    "ուղղահայաց",
    "ակտիվ",
    "դիմացկուն",
    "հեղափոխական",
    "առաջատար",
    "նորարարական",
    "ինտուիտիվ",
    "ռազմավարական",
    "էլեկտրոնային",
    "գլոբալ",
    "վիրտուալ",
    "դինամիկ",
    "գրավիչ",
    "ինտերակտիվ",
    "արդյունավետ",
    "ընդարձակելի",
    "պատրաստի",
    "ինտեգրված",
    "ազդեցիկ",
    "անլար",
    "թափանցիկ",
    "հաջորդ սերնդի",
    "ժամանակակից",
    "հարմարեցված",
    "համատարած",
    "ազդեցիկ",
    "ամբողջական",
    "հարուստ",
    "անվճար"
  ])

  @doc """
  Returns a random business related bullshit prefix.

  ## Examples

      iex> EverFaker.Company.Hy.bullshit_prefix()
      "առավելագույնի հասցնել"
      iex> EverFaker.Company.Hy.bullshit_prefix()
      "պատկերացնել"
      iex> EverFaker.Company.Hy.bullshit_prefix()
      "ընդլայնել"
      iex> EverFaker.Company.Hy.bullshit_prefix()
      "ակտիվացնել"
  """
  @spec bullshit_prefix() :: String.t()
  sampler(:bullshit_prefix, [
    "իրականացնել",
    "օգտագործել",
    "ինտեգրել",
    "ռացիոնալացնել",
    "օպտիմալացնել",
    "զարգացնել",
    "փոխակերպել",
    "ընդգրկել",
    "ակտիվացնել",
    "կազմակերպել",
    "նախագծել",
    "ընդլայնել",
    "խթանել",
    "ձևափոխել",
    "արտոնել",
    "դրամայնացնել",
    "հեշտացնել",
    "վերցնել",
    "աճեցնել",
    "սինթեզել",
    "առաքել",
    "զբաղվել",
    "առավելագույնի հասցնել",
    "արագացնել",
    "միջնորդել",
    "պատկերացնել",
    "վերափոխել",
    "նախաձեռնել",
    "հեղափոխականացնել",
    "առաջացնել",
    "օգտագործել",
    "արտադրանքի վերածել"
  ])

  @doc """
  Returns a random business related bullshit suffix.

  ## Examples

      iex> EverFaker.Company.Hy.bullshit_suffix()
      "հարաբերություններ"
      iex> EverFaker.Company.Hy.bullshit_suffix()
      "շուկաներ"
      iex> EverFaker.Company.Hy.bullshit_suffix()
      "հարաբերություններ"
      iex> EverFaker.Company.Hy.bullshit_suffix()
      "նախաձեռնություններ"
  """
  @spec bullshit_suffix() :: String.t()
  sampler(:bullshit_suffix, [
    "պարադիգմներ",
    "շուկաներ",
    "ենթակառուցվածքներ",
    "պլատֆորմներ",
    "նախաձեռնություններ",
    "ուղիներ",
    "համայնքներ",
    "լուծումներ",
    "պորտալներ",
    "տեխնոլոգիաներ",
    "հարաբերություններ",
    "կառուցվածքներ",
    "ինտերֆեյսներ",
    "շուկաներ",
    "համակարգեր",
    "մոդելներ",
    "օգտագործողներ",
    "սխեմաներ",
    "ցանցեր",
    "ծրագրեր",
    "չափանիշներ",
    "բիզնես",
    "գործառույթներ",
    "փորձառություններ",
    "մեթոդաբանություններ"
  ])

  @doc """
  Returns a random business related buzzword.

  ## Examples

      iex> EverFaker.Company.Hy.buzzword()
      "ուղղորդիչ"
      iex> EverFaker.Company.Hy.buzzword()
      "լոգիստիկ"
      iex> EverFaker.Company.Hy.buzzword()
      "երրորդական"
      iex> EverFaker.Company.Hy.buzzword()
      "բացահայտ"
  """
  @spec buzzword() :: String.t()
  sampler(:buzzword, [
    "3-րդ սերնդի",
    "4-րդ սերնդի",
    "5-րդ սերնդի",
    "6-րդ սերնդի",
    "ասիմետրիկ",
    "ասինխրոն",
    "թողունակությունը վերահսկվող",
    "երկկողմանի",
    "հստակ մտածող",
    "համաձայնեցված",
    "բաղադրյալ",
    "դիդակտիկ",
    "ուղղորդիչ",
    "դիսկրետ",
    "բացահայտ",
    "գլոբալ",
    "բարձր մակարդակի",
    "ամբողջական",
    "միատարր",
    "հիբրիդ",
    "ազդեցիկ",
    "ինտերակտիվ",
    "միջանկյալ",
    "առաջատար",
    "տեղային",
    "լոգիստիկ",
    "սիստեմատիկ",
    "մոդուլային",
    "չեզոք",
    "հաջորդ սերնդի",
    "օբյեկտի վրա հիմնված",
    "օպտիմալ",
    "արմատական",
    "փոխադարձ",
    "ռեգիոնալ",
    "երկրորդական",
    "կայուն",
    "ստատիկ",
    "համակարգված",
    "համակարգային",
    "շոշափելի",
    "երրորդական",
    "անցումային",
    "միատեսակ",
    "լավ մոդուլացված",
    "առանց թերությունների"
  ])

  @doc """
  Returns a random business related buzzword prefix.

  ## Examples

      iex> EverFaker.Company.Hy.buzzword_prefix()
      "Բազմուղի"
      iex> EverFaker.Company.Hy.buzzword_prefix()
      "Կարգավորելի"
      iex> EverFaker.Company.Hy.buzzword_prefix()
      "Փոխարկելի"
      iex> EverFaker.Company.Hy.buzzword_prefix()
      "Ծրագրավորելի"
  """
  @spec buzzword_prefix() :: String.t()
  sampler(:buzzword_prefix, [
    "Առաջավոր",
    "Բարելավված",
    "Ավտոմատացված",
    "Հավասարակշռված",
    "Կենտրոնացված",
    "Համատեղելի",
    "Կարգավորելի",
    "Անհատականացված",
    "Ապակենտրոնացված",
    "Թվայնացված",
    "Տարածված",
    "Փոքրացված",
    "Ընդլայնված",
    "Էրգոնիկ",
    "Բացառիկ",
    "Երկարացված",
    "Լիովին կոնֆիգուրացվող",
    "Ֆունկցիոնալ հիմունքներով",
    "Հիմնական",
    "Հորիզոնական",
    "Իրականացված",
    "Նորարական",
    "Ինտեգրված",
    "Ինտուիտիվ",
    "Պարտադիր",
    "Բազմուղի",
    "Բազմաշերտ",
    "Ցանցային",
    "Բաց կոդով",
    "Օպերատիվ",
    "Օպտիմալացված",
    "Օրգանական",
    "Կազմակերպված",
    "Կայուն",
    "Կենսունակ",
    "Ավարտված",
    "Բևեռացված",
    "Կանխարգելող",
    "Ակտիվ",
    "Ծրագրավորելի",
    "Առաջադիմական",
    "Որակով",
    "Ռեակտիվ",
    "Իրականացված",
    "Նվազեցված",
    "Դիմացկուն",
    "Անխափան",
    "Ապահով",
    "Համատեղելի",
    "Հեշտացված",
    "Փոխարկելի",
    "Սինխրոնիզացված",
    "Ունիվերսալ",
    "Ճկուն",
    "Վիրտուալ"
  ])

  @doc """
  Returns a random business related buzzword suffix.

  ## Examples

      iex> EverFaker.Company.Hy.buzzword_suffix()
      "ինտերֆեյս"
      iex> EverFaker.Company.Hy.buzzword_suffix()
      "համախմբվածություն"
      iex> EverFaker.Company.Hy.buzzword_suffix()
      "տեղական ցանց"
      iex> EverFaker.Company.Hy.buzzword_suffix()
      "գնային կառուցվածք"
  """
  @spec buzzword_suffix() :: String.t()
  sampler(:buzzword_suffix, [
    "կարողություն",
    "մուտք",
    "ադապտեր",
    "ալգորիթմ",
    "միություն",
    "վերլուծիչ",
    "ծրագրային ապահովում",
    "մոտեցում",
    "արխիվ",
    "արհեստական բանականություն",
    "վերաբերմունք",
    "ընդունակություն",
    "կարողություն",
    "մարտահրավեր",
    "գործակցություն",
    "բարդություն",
    "գաղափար",
    "համախմբվածություն",
    "տվյալների բազա",
    "տվյալների պահեստ",
    "սահմանում",
    "իմացություն",
    "կոդավորում",
    "գաղտնագրում",
    "կանխատեսում",
    "հենքային ծրագիր",
    "ֆունկցիա",
    "գործառույթ",
    "գրաֆիկական ինտերֆեյս",
    "սարքային ապահովում",
    "հիերարխիա",
    "հանգույց",
    "ենթակառուցվածք",
    "նախաձեռնություն",
    "ծրագրի ներդրում",
    "հրահանգների հավաքածու",
    "ինտերֆեյս",
    "ինտրանետ",
    "գիտելիքների բազա",
    "տեղական ցանց",
    "մատրիցա",
    "մեթոդաբանություն",
    "միջանկյալ շերտ",
    "միգրացիա",
    "մոդել",
    "կարգավորիչ",
    "մոնիտորինգ",
    "բաց համակարգ",
    "պարադիգմ",
    "պորտալ",
    "գնային կառուցվածք",
    "արդյունավետություն",
    "նախագիծ",
    "ապահովված գիծ",
    "ծրագրային ապահովում",
    "լուծում",
    "ստանդարտացում",
    "ստրատեգիա",
    "կառուցվածք",
    "օպերատիվ խումբ",
    "արտադրողականություն",
    "ժամանակացույց",
    "գործիք",
    "օգտագործում",
    "կայք",
    "աշխատուժ"
  ])

  @doc """
  Returns a random complete catch phrase.

  ## Examples

      iex> EverFaker.Company.Hy.catch_phrase()
      "Բազմուղի լոգիստիկ տեղական ցանց"
      iex> EverFaker.Company.Hy.catch_phrase()
      "Ծրագրավորելի 3-րդ սերնդի արտադրողականություն"
      iex> EverFaker.Company.Hy.catch_phrase()
      "Հեշտացված ուղղորդիչ ալգորիթմ"
      iex> EverFaker.Company.Hy.catch_phrase()
      "Դիմացկուն չեզոք տվյալների պահեստ"
  """
  @spec catch_phrase() :: String.t()
  def catch_phrase, do: "#{buzzword_prefix()} #{buzzword()} #{buzzword_suffix()}"

  @doc """
  Returns complete company name.

  ## Examples

      iex> EverFaker.Company.Hy.name()
      "Մարալիկ ԲԲԸ"
      iex> EverFaker.Company.Hy.name()
      "Վանյան, Կարագյան և Ամիրբեկյան ՓԲԸ"
      iex> EverFaker.Company.Hy.name()
      "Հովիվյան ՓԲԸ"
      iex> EverFaker.Company.Hy.name()
      "Միլենա և Աշոտ ԲԲԸ"
  """
  @spec name() :: String.t()
  def name, do: name(EverFaker.random_between(0, 4))
  defp name(0), do: "#{EverFaker.Address.Hy.city()} #{suffix()}"
  defp name(1), do: "#{Person.last_name()} #{suffix()}"
  defp name(2), do: "#{Person.last_name()} և #{Person.last_name()} #{suffix()}"
  defp name(3), do: "#{Person.first_name()} և #{Person.first_name()} #{suffix()}"

  defp name(4) do
    "#{Person.last_name()}, #{Person.last_name()} և #{Person.last_name()} #{suffix()}"
  end

  @doc """
  Returns a random type of business entity.

  ## Examples

      iex> EverFaker.Company.Hy.suffix()
      "ՍՊԸ"
      iex> EverFaker.Company.Hy.suffix()
      "Հոլդինգ"
      iex> EverFaker.Company.Hy.suffix()
      "ԲԲԸ"
      iex> EverFaker.Company.Hy.suffix()
      "ՓԲԸ"
  """
  @spec suffix() :: String.t()
  sampler(:suffix, [
    "ՍՊԸ",
    "ՀՁ",
    "ՓԲԸ",
    "ԲԲԸ",
    "Գրուպ",
    "Հոլդինգ"
  ])
end
