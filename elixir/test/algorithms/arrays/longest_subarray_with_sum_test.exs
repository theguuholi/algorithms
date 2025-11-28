defmodule Algorithms.Arrays.LongestSubarrayWithSumTest do
  use ExUnit.Case
  alias Algorithms.Arrays.LongestSubarrayWithSum

  test "basic case" do
    assert LongestSubarrayWithSum.find_length_simple([3, 1, 2, 7, 4, 2, 1, 1, 5], 8) == 4
  end

  test "entire array fits" do
    assert LongestSubarrayWithSum.find_length_simple([1, 2, 3], 10) == 3
  end

  test "only single element fits" do
    assert LongestSubarrayWithSum.find_length_simple([5, 10, 15], 5) == 1
  end

  test "consecutive ones" do
    assert LongestSubarrayWithSum.find_length_simple([1, 1, 1, 1, 1], 3) == 3
  end

  test "large k value" do
    assert LongestSubarrayWithSum.find_length_simple([2, 3, 1, 4], 100) == 4
  end
end
