###################################
# Keyword List
###################################
list = [{:a, 1}, {:b, 2}]
IO.puts(list == [a: 1, b: 2])

# Push / Prepend key value
new_list = [a: 0] ++ list
# [a: 0, a: 1, b: 2]
IO.puts(new_list[:a])

# Keyword list in Conditionals
value = if(false, [{:do, :this}, {:else, :that}])
IO.puts(value)

# Match
# a = 1
# b = 2
# [a: a, b: b] = [a: 1, b: 2]


###################################
# Maps
###################################

map = %{:a => 1, 2 => :b}
IO.puts(map[:a])
IO.puts(map[2])
IO.puts(map[:c]) # nil

# Pattern Matching
%{:a => a} = %{:a => 1, 2 => :b}
IO.puts(a)

n = 1
map = %{n => :one}
IO.puts(map[1])


# GET
IO.puts(Map.get(%{:a => 1, 2 => :b}, :a))

# PUT
# Map.put(%{:a => 1, 2 => :b}, :c, 3)

# To list
# Map.to_list(%{:a => 1, 2 => :b})
# [{2, :b}, {:a, 1}]

# Update
map = %{:a => 1, 2 => :b}
IO.puts(map[2])

new_map = %{map | 2 => "two"}
IO.puts(new_map[2])


# Using Atoms
map = %{a: 1, b: 2}
IO.puts(map[:b])
IO.puts(map.a)
IO.puts(map.b)


# Nested
users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

IO.puts(users[:john].age)

# PUT IN
users_put_in = put_in users[:john].age, 31
IO.puts(users_put_in[:john].age)


# Update IN
users_update_in = update_in users[:mary].languages, fn languages -> List.delete(languages, "Clojure") end
IO.puts(users[:mary].languages)
IO.puts(users_update_in[:mary].languages)
