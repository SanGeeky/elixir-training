###################################
# IO Module
###################################
IO.puts("Hello Elixir")

# IO.gets("YEAH oR NAH? ")

IO.puts(:stderr, "hello world")

###################################
# FILE Module
###################################

# Creates a new file

{:ok, file} = File.open("hello", [:write])
IO.binwrite(file, "world")
File.close(file)
File.read("hello")
File.rm("hello")

# Copy Files
# File.cp("")

# Directory
File.mkdir("hello")
File.rm_rf("hello")


# ! Bang Operator
# Returns only content
IO.puts(File.read!("hola"))


###################################
# PATH Module
###################################

IO.puts(Path.join("foo", "bar"))

IO.puts(Path.expand("~/hello"))


# chardata
IO.puts('hello world')
IO.puts(['hello', ?\s, "world"])
