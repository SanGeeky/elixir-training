###################################
# Debugging
###################################

# IO Inspect


(1..10)
|> IO.inspect(label: "before")
|> Enum.map(fn x -> x * 2 end)
|> IO.inspect(label: "after")
|> Enum.sum
|> IO.inspect
