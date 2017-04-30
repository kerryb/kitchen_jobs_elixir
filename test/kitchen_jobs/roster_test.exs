defmodule KitchenJobs.RosterTest do
  use ExUnit.Case
  alias KitchenJobs.Roster
  doctest Roster

  describe "KitchenJobs.Roster.parse/1" do
    test "reads the total number of jobs and list of completed jobs" do
      assert Roster.parse(["6 3", "2 4 1"]) == %Roster{total: 6, completed: [2, 4, 1]}
    end
  end

  describe "KitchenJobs.Roster.output" do
    test "allocates remaining jobs alternately, and prints out the allocations" do
      roster = %Roster{total: 6, completed: [2, 4, 1]}
      assert Roster.output(roster) == "3 6\n5\n"
    end
  end
end

