:ets.new(:seed_registry, [:named_table, :public])
Application.put_env(:fake, :random_module, Fake.Random.Test)

ExUnit.start()
