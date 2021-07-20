import Config

config :kv, :routing_table, [{?a..?z, node()}]

if config_env() == :prod do
  config :kv, :routing_table, [
    {?a..?m, :"foo@sangeeky-bu"},
    {?n..?z, :"bar@sangeeky-bu"}
  ]
end
