defmodule TrafficLight do
  def action(color) do
    case color do
      :red -> "Stop"
      :yellow -> "Slow down"
      :green -> "Go"
      _ -> "Unknown signal"
    end
  end
end

IO.puts(TrafficLight.action(:red))
IO.puts(TrafficLight.action(:green))
IO.puts(TrafficLight.action(:blue))
