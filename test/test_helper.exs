:ets.new(:seed_registry, [:named_table, :public])
Application.put_env(:ever_faker, :random_module, EverFaker.Random.Test)

ExUnit.start()
