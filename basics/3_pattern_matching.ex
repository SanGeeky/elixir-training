###################################
# Match Operators
###################################
x = 1
IO.puts(x)
IO.puts(1 = x)
# IO.puts(2 = x) # Does not Match


{a, b, c} = {:hello, "world", 42}
IO.puts(a)
IO.puts(b)
IO.puts(c)

{:ok, result} = {:ok, 13}
IO.puts(result)

# Head and Tail
[head | tail] = [1, 2, 3]
IO.puts(head)
IO.puts(tail)

[head | _] = [3, 2, 1]
IO.puts(head)

###################################
# Pin Operator
###################################
f = 1
g = 2
IO.puts(^f = 1)
IO.puts(^g = 2)
