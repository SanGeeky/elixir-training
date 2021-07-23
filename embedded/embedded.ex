IO.puts(EEx.eval_string "Hi, <%= name %>", [name: "Sean"])

defmodule Example do
  require EEx
  EEx.function_from_file(:def, :greeting, "greeting.eex", [:name])
end
