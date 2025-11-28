defmodule Algorithms.Arrays.SortedSquaresTest do
  use ExUnit.Case
  alias Algorithms.Arrays.SortedSquares

  test "squares of mixed numbers" do
    assert SortedSquares.sorted_squares([-4, -1, 0, 3, 10]) == [0, 1, 9, 16, 100]
  end

  test "squares of all negative numbers" do
    assert SortedSquares.sorted_squares([-7, -3, -2, -1]) == [1, 4, 9, 49]
  end

  test "squares of all positive numbers" do
    assert SortedSquares.sorted_squares([1, 2, 3, 4, 5]) == [1, 4, 9, 16, 25]
  end

  test "single element" do
    assert SortedSquares.sorted_squares([-5]) == [25]
  end

  test "array with zero" do
    assert SortedSquares.sorted_squares([-2, 0, 2]) == [0, 4, 4]
  end

  test "reduce implementation works" do
    assert SortedSquares.sorted_squares_reduce([-4, -1, 0, 3, 10]) == [0, 1, 9, 16, 100]
  end
end
