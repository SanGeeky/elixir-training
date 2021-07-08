# Arithmetic Operations
IO.puts(1 + 3) # sum
IO.puts(4 - 5) # subtraction
IO.puts(3 * 3) # product
# division
IO.puts(10 / 2)
IO.puts(div 10, 2)
# rem

###################################
# Notations
###################################
IO.puts(0b1010)
IO.puts(0o777)
IO.puts(0x1F)
IO.puts(1.0e-10)
IO.puts(round(3.58))
IO.puts(trunc(3.58))


###################################
# Functions Documentation
# h func/args
###################################
# In console
# h trunc/1


###################################
# Booleans
###################################
IO.puts(true)
IO.puts(true == false)
IO.puts(false == false)
IO.puts(is_boolean(1))
IO.puts(is_boolean(true))

###################################
# Atoms
###################################
IO.puts(:plane)
IO.puts(:david)
IO.puts(:fruits)
IO.puts(:apple == :apple)
IO.puts(true == :true)
IO.puts(is_atom(false))
IO.puts(is_boolean(:false))
# Aliases
IO.puts(is_atom(Hello))

###################################
# Strings
###################################
IO.puts("strïng")
string = :world
IO.puts("hellö #{string}")
IO.puts("Hola \nMundo")
IO.puts('Hello in Single Quotes')
IO.puts(is_binary("hellö"))
IO.puts(String.length("Hellö"))
IO.puts(String.upcase("Hellö"))

###################################
# Anonymous Functions
###################################
add = fn a, b -> a + b end
IO.puts(add.(1, 2))
IO.puts(is_function(add))
IO.puts(is_function(add, 2))
IO.puts(is_function(add, 1))

double = fn a -> add.(a, a) end
IO.puts(double.(2))

###################################
# Linked Lists
###################################
example_list = [1, 2, true, 3, 'Hole', 'Hellö']
IO.puts(length [1, 2, true, 3, 'Hole', 'Hellö'])

# Concatenated - Substracted
concatenate = [1, 2, 3] ++ [4, 5, 6]
substracted = [1, true, 2, false, 3, true] -- [true, false]

elements = [1, 2, 3]
IO.puts(hd(elements))
IO.puts(tl(elements))

###################################
# Tuples
###################################

tuple = {:ok, "hello"}
IO.puts(elem(tuple, 1))

# Put Element
put_elem(tuple, 1, "world")
