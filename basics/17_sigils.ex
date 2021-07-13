###################################
# SIGILS
###################################
# CUSTOM SIGILS
regex = ~r/foo|bar/
IO.puts("foo" =~ regex)
IO.puts("bat" =~ regex)


IO.puts(
  ~s("Text with double quotes" 'single' #{2})
)

# LISTS
list = ~w(foo bar bat)
IO.puts(
  inspect list
)

# DATE
date = ~D[2019-10-31]

IO.puts(date.day)
IO.puts(date.year)

time = ~T[07:23:12]
IO.puts(time)
IO.puts(time.minute)
