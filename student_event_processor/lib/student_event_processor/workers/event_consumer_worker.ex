defmodule EventConsumerWorker do
  def perform(base_event) do
    IO.puts "=============="
    IO.puts "| Base Event |"
    IO.puts "=============="
    IO.inspect base_event
    IO.puts "\n"
    IO.puts "==================="
    IO.puts "| Hydrating Event |"
    IO.puts "==================="
    hydrated_event = hydrate(base_event)
    IO.inspect hydrated_event
    IO.puts "\n"
    IO.puts "================"
    IO.puts "| Saving Event |"
    IO.puts "================"
    IO.puts "👌"
    IO.puts "\n"
  end

  defp hydrate(base_event) do
    base_event
    |> Map.merge(add_facts())
  end

  defp add_facts, do: %{"Garretts" => "awesome!"}
end
