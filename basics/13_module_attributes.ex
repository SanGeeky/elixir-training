defmodule Math do
  @moduledoc """
  Documentation for MODULE
  Provides math-related functions.

  ## Examples

      iex> Math.sum(1, 2)
      3

  """

  @doc """
  Documentation for Function
  Calculates the sum of two numbers.
  """
  def sum(a, b) do
    a + b
  end
  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
end

defmodule MyServer do
  @initial_state %{host: "127.0.0.1", port: 5000}
  IO.inspect @initial_state

  @number_1 23
  def first_number do
    IO.puts(@number_1)
  end

  @number_2 28
  def second_number do
    IO.puts(@number_2)
  end
end

MyServer.first_number
MyServer.second_number


# Acumulating attributes
defmodule Foo do
  Module.register_attribute __MODULE__, :param, accumulate: true

  @param :foo
  @param :bar
  # @param == [:bar, :foo]
end
