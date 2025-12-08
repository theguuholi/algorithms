defmodule Algorithms.Arrays.LongestSubarrayWithSum do
  @moduledoc """
  Longest Subarray With Sum ≤ k
  Difficulty: Medium

  Finds the length of the longest subarray whose sum is less than or equal to k.
  Uses sliding window technique.

  Time Complexity: O(n)
  Space Complexity: O(1)
  """

  @doc """
  Finds the length of the longest subarray with sum ≤ k.

  ## Examples

      iex> Algorithms.Arrays.LongestSubarrayWithSum.find_length([3, 1, 2, 7, 4, 2, 1, 1, 5], 8)
      4

  """
  @spec find_length([integer], integer) :: integer
  def find_length(nums, k) do
    find_length_helper(nums, k, 0, 0, 0, 0)
  end

  defp find_length_helper([], _k, _left, _right, _curr, ans), do: ans

  defp find_length_helper([head | tail], k, left, right, curr, ans) do
    # Add current element to window
    new_curr = curr + head

    # Shrink window if sum exceeds k
    {new_left, final_curr} =
      shrink_window(nums_list_from_left(left, [head | tail]), new_curr, k, left)

    # Calculate new answer
    new_ans = max(ans, right - new_left + 1)

    # Move to next element
    find_length_helper(tail, k, new_left, right + 1, final_curr, new_ans)
  end

  defp shrink_window(nums, curr, k, left) when curr > k do
    [head | _] = Enum.drop(nums, 0)
    shrink_window(Enum.drop(nums, 1), curr - head, k, left + 1)
  end

  defp shrink_window(_nums, curr, _k, left), do: {left, curr}

  defp nums_list_from_left(0, nums), do: nums
  defp nums_list_from_left(left, [_ | tail]), do: nums_list_from_left(left - 1, tail)

  @doc """
  Simplified implementation using list indexing (less efficient but clearer).
  """
  @spec find_length_simple([integer], integer) :: integer
  def find_length_simple(nums, k) do
    do_find(nums, k, 0, 0, 0, 0)
  end

  defp do_find(nums, k, left, right, curr, ans) when right < length(nums) do
    # Expand window
    new_curr = curr + Enum.at(nums, right)

    # Shrink window
    {new_left, final_curr} = do_shrink(nums, k, left, new_curr)

    # Update answer
    new_ans = max(ans, right - new_left + 1)

    # Continue
    do_find(nums, k, new_left, right + 1, final_curr, new_ans)
  end

  defp do_find(_nums, _k, _left, _right, _curr, ans), do: ans

  defp do_shrink(nums, k, left, curr) when curr > k do
    do_shrink(nums, k, left + 1, curr - Enum.at(nums, left))
  end

  defp do_shrink(_nums, _k, left, curr), do: {left, curr}
end
