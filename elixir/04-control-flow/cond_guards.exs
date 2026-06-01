defmodule Grade do
  # Guards pick the matching clause based on the condition
  def letter(score) when score >= 90, do: "A"
  def letter(score) when score >= 80, do: "B"
  def letter(score) when score >= 70, do: "C"
  def letter(_score), do: "F"
end

IO.puts(Grade.letter(95))
IO.puts(Grade.letter(83))
IO.puts(Grade.letter(60))

# `cond` evaluates conditions top to bottom and takes the first truthy one
temp = 30

description =
  cond do
    temp > 35 -> "Scorching"
    temp > 25 -> "Warm"
    temp > 15 -> "Mild"
    true -> "Cold"
  end

IO.puts("It is #{description}")
