###################################
# Try Catch Rescue
###################################
defmodule MyError do
  defexception message: "Custom message in Module"
end

# try do
#   raise "opps"
# rescue
#   RuntimeError -> IO.puts('FAILED')
# end


# ReRaise

# try do
#   raise "oops"
# rescue
#   e ->
#     Logger.error(Exception.format(:error, e, __STACKTRACE__))
#     reraise e, __STACKTRACE__
# end

# Throw Catch
try do
  Enum.each(-50..50, fn(x) ->
    if rem(x, 13) == 0, do: throw(x)
  end)
  "Got nothing"
catch
  x -> IO.puts("Got #{x}")
end

# EXIT
try do
  exit("I am exiting")
catch
  :exit, _ -> IO.puts "not really"
end

# Else, if no error

try do
  1 / 2
rescue
  ArithmeticError ->
    :infinity
else
  y when y < 1 and y > -1 ->
    IO.puts(:small)
  _ ->
    IO.puts(:large)
end

# AFTER
try do
  raise "oops, something went wrong"
after
  IO.puts('After Party')
end
