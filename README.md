# EverFaker

[![CI](https://github.com/ever-forge/ever_faker/actions/workflows/ci.yml/badge.svg)](https://github.com/ever-forge/ever_faker/actions/workflows/ci.yml)
[![Hex.pm](https://img.shields.io/hexpm/v/ever_faker.svg)](https://hex.pm/packages/ever_faker)

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

Add `EverFaker.start()` to `test/test_helper.exs`:

```elixir
ExUnit.start()
EverFaker.start()
```

## Usage

For more information, see the [documentation](https://hexdocs.pm/ever_faker).

## License

[MIT](./LICENSE)
