###################################
# Aliases
###################################
defmodule Stats do
  alias Math.List, as: Listas

  def plus(a, b) do
    # Scope inside the function
    # alias #List
    alias Math.List
    a + b
  end
end

alias MyApp.{Foo, Bar, Baz}

List.flatten([1, [2], 3])
# [1, 2, 3]
:"Elixir.List".flatten([1, [2], 3])
# [1, 2, 3]

###################################
# Requiere
###################################
require Integer
IO.puts(Integer.is_odd(3))

###################################
# Import
###################################
import List, only: [duplicate: 2]
# except: []
duplicate(:ok, 3)

defmodule SomeModule do
  # Lexicall Scope
  def some_function do
    import List, only: [duplicate: 2]
    duplicate(:ok, 10)
  end
end

###################################
# Module Nesting
###################################
defmodule Foo do
  defmodule Bar do
  end
end

# Bar module defined outside
defmodule Foo.Bar do
end

defmodule Foo do
  alias Foo.Bar
end
