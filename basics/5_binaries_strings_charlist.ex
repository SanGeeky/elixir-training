###################################
# Strings
###################################
string = "hello"
IO.puts(string)
IO.puts(is_binary(string))


# Unicode
IO.puts(?a)
IO.puts(?ł)
IO.puts(0x0061 = 97 = ?a)

# length and byte size
string = "hełło"
IO.puts(String.length(string))
IO.puts(byte_size(string))


###################################
# Binaries
###################################

# Binary Representation
# IO.puts("hełło" <> <<0>>)
# <<104, 101, 197, 130, 197, 130, 111, 0>>


# True
# Size of N bits
IO.puts(<<0::1, 0::1, 1::1, 1::1>> == <<3::4>>)
# <<97::8>> == "a"

<<0, 1, x::binary>> = <<0, 1, 2, 3>>
# IO.puts(x) #<<2, 3>>

# Concatenate
#<<0, 1>> <> <<2, 3>>
#<<0, 1, 2, 3>>

<<head, rest::binary>> = "bananaa"
IO.puts(head == ?b)
IO.puts(rest)


###################################
# Binaries
###################################

# [?h, ?e, ?l, ?l, ?o]
# "hello"
IO.puts([?h, ?e, ?l, ?l, ?o])
# 'hełło'
# [104, 101, 322, 322, 111]
IO.puts(is_list('hełło'))


# Conversion
IO.puts(to_charlist("hełło"))
IO.puts(to_string('hełło'))
IO.puts(to_string(:hello))
IO.puts(to_string(1))

# Concatenate Strings
IO.puts('this ' ++ 'works')
IO.puts("he" <> "llo")
