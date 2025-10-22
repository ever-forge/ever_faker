defmodule EverFaker.Bitcoin do
  @moduledoc false

  alias EverFaker.Blockchain.Bitcoin

  @deprecated "Use EverFaker.Blockchain.Bitcoin.address instead"
  def address(format \\ :main)

  def address(:testnet) do
    Bitcoin.address(:testnet)
  end

  def address(:main) do
    Bitcoin.address(:main)
  end
end
