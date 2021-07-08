###################################
# CASE
###################################
x = 'hello'
IO.puts(
  case x do
    'hi' ->
      'Mundo'
    'hola' ->
      'David'
    _ ->
      'World'
  end
)

IO.puts(
  case {1, 2, 3} do
    {4, 5, 6} ->
      "This clause won't match"
    {1, x, 3} ->
      "This clause will match and bind x to 2 in this clause"
    _ ->
      "This clause would match any value"
  end
)

# Anonymus Function
# The number of arguments in each anonymous function clause needs to be the same, otherwise an error is raised.
f = fn
  x, y when x > 5 -> x - y
  x, y when x < 5 -> x + y
  x, y -> x * y
end

IO.puts(f.(1,3))
IO.puts(f.(10,3))
IO.puts(f.(5,3))


###################################
# COND
###################################
IO.puts(
  cond do
    2 + 2 == 5 ->
      "This will not be true"
    2 * 2 == 3 ->
      "Nor this"
    1 + 1 == 2 ->
      "But this will"
    true ->
      "Equivalent to else"
  end
)

###################################
# IF / UNLESS
###################################
IO.puts(
  if true do
    "WORKS !"
  end
)

IO.puts(
  unless false do
    "WORKS in false!"
  end
)

IO.puts(
  if nil do
    "This won't be seen"
  else
    "This will ... else"
  end
)


IO.puts(if false, do: :this, else: :that)
