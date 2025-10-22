# EverFaker

Generate fake (but realistic) data for testing and development.

## Installation

Add `:ever_faker` to the list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ever_faker, "<requirement>"}
  ]
end
```

### Only for `test` environment

Add `:ever_faker` to the list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ever_faker, "<requirement>", only: :test}
  ]
end
```

Add `Faker.start()` to `test/test_helper.exs`:

```elixir
ExUnit.start()
Faker.start()
```

## Usage

For more information, see the [documentation](https://hexdocs.pm/ever_faker).

## License

MIT
