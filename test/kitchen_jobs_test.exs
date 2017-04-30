defmodule KitchenJobsTest do
  use ExUnit.Case
  doctest KitchenJobs

  describe "Integration" do
    test "works for the example given in the problem statement" do
      input = """
      3
      6 3
      2 4 1
      3 2
      3 2
      8 2
      3 8
      """

      assert KitchenJobs.main(input) == """
      3 6
      5
      1

      1 4 6
      2 5 7
      """
    end
  end

  describe "KitchenJobs.parse/1" do
    test "discards the first line, then splits the rest into pairs" do
      input = """
      3
      6 3
      2 4 1
      3 2
      3 2
      8 2
      3 8
      """

      assert KitchenJobs.parse(input) == [
        ["6 3", "2 4 1"],
        ["3 2", "3 2"],
        ["8 2", "3 8"],
      ]
    end
  end
end
