###################################
# Earlang Libs
###################################

# Binary Module
IO.puts(inspect :binary.bin_to_list("ł"))

# Format Text
IO.puts(:io.format("Pi is approx: ~10.3f~n", [:math.pi]))

# Crypto
IO.puts(Base.encode16(:crypto.hash(:sha256, "Elixir")))

# Digraph
digraph = :digraph.new()
coords = [{0.0, 0.0}, {1.0, 1.0}, {1.0, 0.0}]
[v0, v1, v2] = (for c <- coords, do: :digraph.add_vertex(digraph, c))
:digraph.add_edge(digraph, v0, v1)
:digraph.add_edge(digraph, v1, v2)
IO.puts(inspect :digraph.get_short_path(digraph, v0, v2))



# Math Module
IO.puts(:math.pi())
IO.puts(:math.pow(10, 2))

# Queue

q = :queue.new
q = :queue.in("A", q)
q = :queue.in("B", q)
{value, q} = :queue.out(q)
IO.puts(inspect value)
{value, q} = :queue.out(q)
IO.puts(inspect value)
{value, q} = :queue.out(q)
IO.puts(inspect value)


# Rand
IO.puts(:rand.uniform(10))



# Erlang Term Store
table = :ets.new(:ets_test, [])
:ets.insert(table, {"China", 1_374_000_000})
:ets.insert(table, {"India", 1_284_000_000})
:ets.insert(table, {"USA", 322_000_000})
IO.puts(inspect :ets.i(table))
