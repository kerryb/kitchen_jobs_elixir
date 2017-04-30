defmodule KitchenJobs.Roster do
  defstruct [:total, :completed]

  def parse([header, jobs]) do
    [total, _] = read_integers header
    completed = read_integers jobs
    %__MODULE__{total: total, completed: completed}
  end

  defp read_integers(line) do
    line |> String.split |> Enum.map(&String.to_integer/1)
  end

  def output(roster) do
    ""
  end
end
