defmodule KitchenJobs do
  alias KitchenJobs.Roster

  def main input do
    input
    |> parse
    |> Enum.map(&Roster.parse/1)
    |> Enum.map(&Roster.output/1)
    |> Enum.join
  end

  def parse(input) do
    input
    |> String.split("\n")
    |> Enum.drop(1)
    |> Enum.chunk(2)
  end
end
