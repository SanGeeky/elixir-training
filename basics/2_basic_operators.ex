###################################
# String Concatenation
###################################
concatenation = "foo" <> "bar"
IO.puts(concatenation)

###################################
# Logic Operators
###################################

IO.puts(true or false)
IO.puts(true or true)
IO.puts(false or is_atom(:example))

# OR
IO.puts(1 || true)
IO.puts(false || 11)

# AND
IO.puts(false && 13)
IO.puts(true && 13)

# NOT
IO.puts(!true)
IO.puts(!1)
IO.puts(!nil)

# Equal
IO.puts(1 == 1)
IO.puts(1 === 1)

# Diff
IO.puts(1 != 2)
IO.puts(1 !== 2)

# Less and lte
IO.puts(1 < 2)
IO.puts(1 <= 1)

# Greater and gte
IO.puts(2 > 1)
IO.puts(2 >= 2)
