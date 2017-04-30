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
    roster
    |> allocate
    |> output_allocations
  end

  defp allocate(roster) do
    remaining_jobs = Enum.to_list(1..roster.total) -- roster.completed
    {Enum.take_every(remaining_jobs, 2), Enum.drop_every(remaining_jobs, 2)}
  end

  defp output_allocations({chef_jobs, assistant_jobs}) do
    "#{Enum.join chef_jobs, " "}\n#{Enum.join assistant_jobs, " "}\n"
  end
end
