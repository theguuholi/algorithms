defmodule Algorithms.Arrays.SortedSquares do
  @moduledoc """
  LeetCode #977 - Squares of a Sorted Array
  Difficulty: Easy

  Returns a list of squares of each number, sorted in non-decreasing order.

  Time Complexity: O(n log n) - due to sorting
  Space Complexity: O(n)
  """

  @doc """
  Squares each element and returns a sorted list of squares.

  ## Examples

      iex> Algorithms.Arrays.SortedSquares.sorted_squares([-4, -1, 0, 3, 10])
      [0, 1, 9, 16, 100]

  """
  @spec sorted_squares([integer]) :: [integer]
  def sorted_squares(nums) do
    nums
    |> Enum.map(fn n -> n * n end)
    |> Enum.sort()
  end

  @doc """
  Alternative implementation using reduce.
  """
  @spec sorted_squares_reduce([integer]) :: [integer]
  def sorted_squares_reduce(nums) do
    nums
    |> Enum.reduce([], fn n, acc -> [n * n | acc] end)
    |> Enum.sort()
  end
end
