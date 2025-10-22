# Fake

[![CI](https://github.com/ever-forge/fake/actions/workflows/ci.yml/badge.svg)](https://github.com/ever-forge/fake/actions/workflows/ci.yml)
[![Hex.pm](https://img.shields.io/hexpm/v/fake.svg)](https://hex.pm/packages/fake)

Generate fake (but realistic) data.

## Installation

Add `:fake` to the list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fake, "<requirement>"}
  ]
end
```

### Only for `test` environment

Add `:fake` to the list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fake, "<requirement>", only: :test}
  ]
end
```

Add `Fake.start()` to `test/test_helper.exs`:

```elixir
ExUnit.start()
Fake.start()
```

## Usage

For more information, see the [documentation](https://hexdocs.pm/fake).

## License

[MIT](./LICENSE)
