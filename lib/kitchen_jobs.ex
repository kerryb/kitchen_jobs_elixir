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
    []
  end
end
