###################################
# Modules and Functions
###################################
defmodule Math2 do
  def sum(a, b) do
    a + b
  end
end

IO.puts(Math2.sum(1, 2))


# Functions and Private Functions
defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  # Private Function
  defp do_sum(a, b) do
    a + b
  end


  # Function Clauses
  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end
end

IO.puts Math.sum(1, 2)
# IO.puts Math2.do_sum(1, 2) #=> ** (UndefinedFunctionError)


# Function Clauses
IO.puts Math.zero?(0)
IO.puts Math.zero?(1)
# IO.puts Math.zero?(0.0) # (FunctionClauseError)

# Anonymous
fun = &Math.zero?/1
IO.puts(fun.(0))

fun2 = &(&1 + 1)
IO.puts(fun2.(2))

fun3 = &"Good #{&1}"
IO.puts(fun3.("Morning"))


# Default Arguments
defmodule Concat do
  def join(a, b, sep \\ " ") do
    a <> sep <> b
  end
end

defmodule Concat2 do
  def join(a, b \\ nil, sep \\ " ")

  def join(a, b, _sep) when is_nil(b) do
    a
  end

  def join(a, b, sep) do
    a <> sep <> b
  end
end

defmodule DefaultTest do
  def dowork(x \\ "hello") do
    x
  end
end

IO.puts Concat.join("Hello", "world")
IO.puts Concat.join("Hello", "world", "_")


IO.puts(DefaultTest.dowork)
IO.puts(DefaultTest.dowork(1234))


IO.puts Concat.join("Hello", "world")
IO.puts Concat.join("Hello","world", "_")
IO.puts Concat.join("Hello")
