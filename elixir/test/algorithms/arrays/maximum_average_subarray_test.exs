defmodule Algorithms.Arrays.MaximumAverageSubarrayTest do
  use ExUnit.Case
  alias Algorithms.Arrays.MaximumAverageSubarray

  test "basic case" do
    result = MaximumAverageSubarray.find_max_average([1, 12, -5, -6, 50, 3], 4)
    assert_in_delta result, 12.75, 0.00001
  end

  test "single element" do
    result = MaximumAverageSubarray.find_max_average([5], 1)
    assert_in_delta result, 5.0, 0.00001
  end

  test "entire array" do
    result = MaximumAverageSubarray.find_max_average([1, 2, 3, 4], 4)
    assert_in_delta result, 2.5, 0.00001
  end

  test "negative numbers" do
    result = MaximumAverageSubarray.find_max_average([-1, -2, -3, -4, -5], 2)
    assert_in_delta result, -1.5, 0.00001
  end

  test "consecutive positives" do
    result = MaximumAverageSubarray.find_max_average([0, 1, 1, 3, 3], 4)
    assert_in_delta result, 2.0, 0.00001
  end

  test "prefix sum implementation works" do
    result = MaximumAverageSubarray.find_max_average_prefix([1, 12, -5, -6, 50, 3], 4)
    assert_in_delta result, 12.75, 0.00001
  end
end
