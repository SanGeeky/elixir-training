###################################
# Recursion
###################################
defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end
end


Recursion.print_multiple_times("Hello!", 5)


###################################
# Reduce and Map
###################################

defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end

IO.puts Math.sum_list([1, 2, 3], 0)
IO.puts Math.double_each([1, 2, 3])

# ENUM Module

# Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end)
# Enum.map([1, 2, 3], fn(x) -> x * 2 end)
