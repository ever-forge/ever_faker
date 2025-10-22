defmodule EverFaker.Lorem.Shakespeare.Ru do
  import EverFaker, only: [sampler: 2]

  @moduledoc """
  Random quotes from William Shakespeare's plays, sonnets and poems in Russian.
  """

  @doc """
  Return random quote from "The Tragedy of Hamlet, Prince of Denmark" tragedy.

  ## Examples

      iex> EverFaker.Lorem.Shakespeare.Ru.hamlet()
      "И дальше тишина."
      iex> EverFaker.Lorem.Shakespeare.Ru.hamlet()
      "Быть иль не быть, вот в чём вопрос."
      iex> EverFaker.Lorem.Shakespeare.Ru.hamlet()
      "Быть иль не быть, вот в чём вопрос."
      iex> EverFaker.Lorem.Shakespeare.Ru.hamlet()
      "Быть иль не быть, вот в чём вопрос."
  """
  @spec hamlet() :: String.t()
  sampler(:hamlet, [
    "Назовите меня любым инструментом, вы можете расстроить меня, но играть на мне нельзя.",
    "Есть многое в природе, друг Горацио, что и не снилось нашим мудрецам.",
    "Бедный Йорик!",
    "И дальше тишина.",
    "Как часто нас спасала слепота, Где дальновидность только подводила.",
    "Но вижу я, в вас скорби маловато!",
    "Быть иль не быть, вот в чём вопрос.",
    "О, что за гордый ум сражён!",
    "О женщины, вам имя — вероломство!",
    "Пример примерных — пал, пал до конца.",
    "Мне жизнь моя дешевле, чем булавка, А что он сделает моей душе, Когда она бессмертна, как и он?"
  ])

  @doc """
  Return random quote from "As You Like It" comedy.

  ## Examples

      iex> EverFaker.Lorem.Shakespeare.Ru.as_you_like_it()
      "Дурак думает, что он умен; умный же знает, что глуп он."
      iex> EverFaker.Lorem.Shakespeare.Ru.as_you_like_it()
      "Весь мир — театр. В нем женщины, мужчины — все актеры. У них свои есть выходы, уходы, и каждый не одну играет роль."
      iex> EverFaker.Lorem.Shakespeare.Ru.as_you_like_it()
      "Весь мир — театр. В нем женщины, мужчины — все актеры. У них свои есть выходы, уходы, и каждый не одну играет роль."
      iex> EverFaker.Lorem.Shakespeare.Ru.as_you_like_it()
      "Дурак думает, что он умен; умный же знает, что глуп он."
  """
  @spec as_you_like_it() :: String.t()
  sampler(:as_you_like_it, [
    "Дурак думает, что он умен; умный же знает, что глуп он.",
    "Весь мир — театр. В нем женщины, мужчины — все актеры. У них свои есть выходы, уходы, и каждый не одну играет роль."
  ])

  @doc """
  Return random quote from "Richard III" play.

  ## Examples

      iex> EverFaker.Lorem.Shakespeare.Ru.king_richard_iii()
      "Коня, коня! Престол мой за коня!"
      iex> EverFaker.Lorem.Shakespeare.Ru.king_richard_iii()
      "Нет, не купить любви ценой злодейств!"
      iex> EverFaker.Lorem.Shakespeare.Ru.king_richard_iii()
      "Нет, не купить любви ценой злодейств!"
      iex> EverFaker.Lorem.Shakespeare.Ru.king_richard_iii()
      "Коня, коня! Престол мой за коня!"
  """
  @spec king_richard_iii() :: String.t()
  sampler(:king_richard_iii, [
    "Коня, коня! Престол мой за коня!",
    "Нет, не купить любви ценой злодейств!"
  ])

  @doc """
  Return random quote from "Romeo and Juliet" tragedy.

  ## Examples

      iex> EverFaker.Lorem.Shakespeare.Ru.romeo_and_juliet()
      "Нет повести печальнее на свете, чем повесть о Ромео и Джульетте."
      iex> EverFaker.Lorem.Shakespeare.Ru.romeo_and_juliet()
      "Картина требует красивой рамы, и золотое содержанье книг, нуждается в обложках золотых."
      iex> EverFaker.Lorem.Shakespeare.Ru.romeo_and_juliet()
      "Чем лучше цель, тем целимся мы метче."
      iex> EverFaker.Lorem.Shakespeare.Ru.romeo_and_juliet()
      "В минуты отчаянья сойдёт за вечность час..."
  """
  @spec romeo_and_juliet() :: String.t()
  sampler(:romeo_and_juliet, [
    "Нет повести печальнее на свете, чем повесть о Ромео и Джульетте.",
    "Но если уж мужское слово ненадёжно, чего тогда от женщины ждать можно?",
    "В минуты отчаянья сойдёт за вечность час...",
    "Чем лучше цель, тем целимся мы метче.",
    "Нам губы для молитв даны богами.",
    "Картина требует красивой рамы, и золотое содержанье книг, нуждается в обложках золотых."
  ])
end
