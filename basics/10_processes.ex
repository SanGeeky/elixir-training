###################################
# spawn
###################################
pid = spawn(fn -> IO.puts(1 + 2) end)

IO.puts(Process.alive?(pid))

parent = self()
spawn(fn -> send(parent, {:hello, self()}) end)

receive do
  {:hello, pid} -> IO.puts "Got hello from #{inspect pid}"
end


# Linked Spawn
# spawn_link(fn -> raise "oops" end) # Raise an error and start a new session

# Tasks
# Task.start(fn -> raise "oops" end) # Raise an error and provides detailed information of process


# State

defmodule KV do
  def start_link do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        send caller, Map.get(map, key)
        loop(map)
      {:put, key, value} ->
        loop(Map.put(map, key, value))
    end
  end
end


# {:ok, pid} = KV.start_link()
# {:ok, #PID<0.116.0>}
# send(pid, {:get, :hello, self()})
# {:get, :hello, #PID<0.114.0>}
# send(pid, {:put, :hello, :world})
# {:put, :hello, :world}
# send(pid, {:get, :hello, self()})
# {:get, :hello, #PID<0.114.0>}
# flush()
# nil
# :world
# :ok


# Register PID
# Process.register(pid, :kv)
# send(:kv, {:get, :hello, self()})


# Agents

{:ok, pid} = Agent.start_link(fn -> %{} end)
IO.puts(Agent.update(pid, fn map -> Map.put(map, :hello, :world) end))
IO.puts(Agent.get(pid, fn map -> Map.get(map, :hello) end))
