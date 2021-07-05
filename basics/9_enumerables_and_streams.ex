###################################
# Enumerables
###################################

# IO.puts Enum.map([1, 2, 3], fn x -> x * 2 end)
# [2, 4, 6]

# IO.puts Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end)
# [2, 12]


# Ranges
# Enum.map(1..3, fn x -> x * 2 end)
# [2, 4, 6]

IO.puts(Enum.reduce(1..3, &+/2))


# Eager

even? = &(rem(&1, 2) == 0)
# Enum.filter(1..6, even?)
# [2, 4, 6]

# Pipelines |>
IO.puts(1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(even?) |> Enum.sum())


###################################
# Streams
###################################
# Lazier
odd? = &(rem(&1, 2) != 0)

IO.puts(1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum)


stream = Stream.cycle([1, 2, 3])
# Enum.take(stream, 20)
# [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2]


# Unfold
stream = Stream.unfold("hełło", &String.next_codepoint/1)

# Enum.take(stream, 3)
# ["h", "e", "ł"]
