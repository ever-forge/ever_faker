defmodule Fake.LoremTest do
  use ExUnit.Case, async: true

  doctest Fake.Lorem

  test "characters/0" do
    assert length(Fake.Lorem.characters()) in 15..255
  end

  test "characters/1" do
    assert is_list(Fake.Lorem.characters(2..10))
    assert is_list(Fake.Lorem.characters(2))
    assert length(Fake.Lorem.characters(2..10)) in 2..10
    assert length(Fake.Lorem.characters(2)) == 2
    assert length(Fake.Lorem.characters(10)) == 10
  end

  test "paragraph/0" do
    assert length(Regex.scan(~r/[.,?!]/, Fake.Lorem.paragraph())) in 2..5
  end

  test "paragraph/1" do
    assert length(Regex.scan(~r/[.,?!]/, Fake.Lorem.paragraph(2..3))) in 2..3
    assert length(Regex.scan(~r/[.,?!]/, Fake.Lorem.paragraph(2))) == 2
    assert length(Regex.scan(~r/[.,?!]/, Fake.Lorem.paragraph(3))) == 3
  end

  test "paragraphs/0" do
    assert is_list(Fake.Lorem.paragraphs())
    assert length(Fake.Lorem.paragraphs()) in 2..5
  end

  test "paragraphs/1" do
    assert is_list(Fake.Lorem.paragraphs(4..6))
    assert is_list(Fake.Lorem.paragraphs(3))
    assert length(Fake.Lorem.paragraphs(4..6)) in 4..6
    assert length(Fake.Lorem.paragraphs(3)) == 3
    assert length(Fake.Lorem.paragraphs(5)) == 5
  end

  test "sentence/0" do
    assert String.ends_with?(Fake.Lorem.sentence(), [".", "!", "?"])
  end

  test "sentence/1" do
    assert String.ends_with?(Fake.Lorem.sentence(4..7), [".", "!", "?"])
    assert String.ends_with?(Fake.Lorem.sentence(4), [".", "!", "?"])
  end

  test "sentence/2" do
    assert String.ends_with?(Fake.Lorem.sentence(4, "?"), "?")
  end

  test "sentences/0" do
    assert is_list(Fake.Lorem.sentences())
    assert length(Fake.Lorem.sentences()) in 2..5
  end

  test "sentences/1" do
    assert is_list(Fake.Lorem.sentences(4..6))
    assert is_list(Fake.Lorem.sentences(3))
    assert length(Fake.Lorem.sentences(4..6)) in 4..6
    assert length(Fake.Lorem.sentences(3)) == 3
    assert length(Fake.Lorem.sentences(5)) == 5
  end

  test "words/0" do
    assert is_list(Fake.Lorem.words())
    assert length(Fake.Lorem.words()) in 3..6
  end

  test "words/1" do
    assert is_list(Fake.Lorem.words(10..16))
    assert is_list(Fake.Lorem.words(3))
    assert length(Fake.Lorem.words(10..16)) in 10..16
    assert length(Fake.Lorem.words(3)) == 3
    assert length(Fake.Lorem.words(5)) == 5
  end
end
