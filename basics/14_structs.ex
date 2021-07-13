###################################
# Structs
###################################

defmodule User do
  defstruct name: "John", age: 27
end

default_user = %User{}
jane = %User{name: "Jane"}


# Access and Update

IO.puts(default_user.name)
IO.puts(jane.name)


jane = %{jane | age: 23}


IO.puts(jane.__struct__)
# User


# Default Values and Required Keys

defmodule User do
	@enforce_keys [:email]
	defstruct [:email, :name, country: 'Colombia']
end

%User{email: 'email@mail.com'}
#%User{country: 'Colombia', email: 'email@mail.com', name: nil}
