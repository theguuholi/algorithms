defmodule Algorithms.Arrays.MaximumAverageSubarray do
  @moduledoc """
  LeetCode #643 - Maximum Average Subarray I
  Difficulty: Easy

  Finds a contiguous subarray of length k with the maximum average value.

  Time Complexity: O(n)
  Space Complexity: O(1) using sliding window
  """

  @doc """
  Finds the maximum average of any contiguous subarray of length k.

  ## Examples

      iex> Algorithms.Arrays.MaximumAverageSubarray.find_max_average([1, 12, -5, -6, 50, 3], 4)
      12.75

  """
  @spec find_max_average([integer], integer) :: float
  def find_max_average(nums, k) do
    # Calculate initial window sum
    initial_sum = nums |> Enum.take(k) |> Enum.sum()

    # Find maximum sum using sliding window
    max_sum = find_max_sum(nums, k, initial_sum, initial_sum, k)

    # Return average
    max_sum / k
  end

  defp find_max_sum(nums, k, current_sum, max_sum, index) when index < length(nums) do
    # Slide window: remove leftmost element and add new element
    new_sum = current_sum - Enum.at(nums, index - k) + Enum.at(nums, index)
    new_max = max(max_sum, new_sum)

    find_max_sum(nums, k, new_sum, new_max, index + 1)
  end

  defp find_max_sum(_nums, _k, _current_sum, max_sum, _index), do: max_sum

  @doc """
  Alternative implementation using prefix sums (from original solution).
  """
  @spec find_max_average_prefix([integer], integer) :: float
  def find_max_average_prefix(nums, k) do
    # Build prefix sum list
    prefix_sums = build_prefix_sums(nums, [0])

    # Find maximum average
    max_avg = find_max_from_prefix(prefix_sums, k, 1, (Enum.at(prefix_sums, k) / k))

    max_avg
  end

  defp build_prefix_sums([], acc), do: Enum.reverse(acc)

  defp build_prefix_sums([head | tail], [last | _] = acc) do
    build_prefix_sums(tail, [last + head | acc])
  end

  defp find_max_from_prefix(prefix_sums, k, i, max_avg) when i + k <= length(prefix_sums) do
    current_sum = Enum.at(prefix_sums, i + k - 1) - Enum.at(prefix_sums, i - 1)
    current_avg = current_sum / k
    new_max = max(max_avg, current_avg)

    find_max_from_prefix(prefix_sums, k, i + 1, new_max)
  end

  defp find_max_from_prefix(_prefix_sums, _k, _i, max_avg), do: max_avg
end
