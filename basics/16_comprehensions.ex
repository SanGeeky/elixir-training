###################################
# Comprehensions
###################################

# Map a list of integers
IO.puts(
  inspect for n <- [1, 2, 3, 4, 5], do: n * n
)

IO.puts(
  inspect for n <- 1..4, do: n * n
)

# Pattern Matching
values = [good: 1, good: 2, bad: 3, good: 4]
IO.puts(
  inspect for {:good, n} <- values, do: n * n
)

IO.puts(
  inspect for n <- 0..5, rem(n, 3) == 0, do: n * n
)

IO.puts(
  inspect for i <- [:a, :b, :c], j <- [1, 2], do:  {i, j}
)

###################################
# :into
###################################

# Returns a new structure
IO.puts(
  for <<c <- " hello world ">>, c != ?\s, into: "", do: <<c>>
)

IO.puts(
  inspect for {key, val} <- %{"a" => 1, "b" => 2}, into: %{}, do: {key, val * val}
)
# By default returns a List
IO.puts(
  inspect for {key, val} <- %{"a" => 1, "b" => 2}, do: {key, val * val}
)
