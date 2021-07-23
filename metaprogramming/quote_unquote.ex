IO.puts(inspect(quote do
  sum(1, 2, 3)
end))

IO.puts(inspect(quote do: 1 + 2))

IO.puts(inspect(quote do: %{1 => 2}))

IO.puts(inspect(quote do: x))

IO.puts(inspect(quote do: sum(1, 2 + 3, 4)))

IO.puts(Macro.to_string(quote do: sum(1, 2 + 3, 4)))

# Quote Representation
# {atom | tuple, list, list | atom}
# 1.- Representation
# 2.- Keyword list with metadata, numbers and contexts
# 3.- List of arguments - Atom is a variable

# Returns themselves
IO.puts(inspect(quote do: :atom))
IO.puts(inspect(quote do: 1.0))
IO.puts(inspect(quote do: [1, 2]))
IO.puts(inspect(quote do: "Hello"))
IO.puts(inspect(quote do: {1, "hello"}))

IO.puts(inspect(quote do: String.upcase("foo")))
IO.puts(inspect(quote do: if(true, do: :this, else: :that)))

# Unquote
number = 13
IO.puts(Macro.to_string(quote do: 11 + unquote(number)))
fun = :hello
IO.puts(Macro.to_string(quote do: unquote(fun)(:world)))
inner = [3, 4, 5]
IO.puts(Macro.to_string(quote do: [1, 2, unquote_splicing(inner), 6]))

# Escaping
map = %{hello: :world}

IO.puts(inspect(Macro.escape(map)))
