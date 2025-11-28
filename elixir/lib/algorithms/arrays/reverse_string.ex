defmodule Algorithms.Arrays.ReverseString do
  @moduledoc """
  LeetCode #344 - Reverse String
  Difficulty: Easy

  Reverses a list of characters.

  Time Complexity: O(n)
  Space Complexity: O(n) - Elixir uses immutable data structures
  """

  @doc """
  Reverses the input list of characters.

  ## Examples

      iex> Algorithms.Arrays.ReverseString.reverse_string(["h", "e", "l", "l", "o"])
      ["o", "l", "l", "e", "h"]

  """
  @spec reverse_string([String.t()]) :: [String.t()]
  def reverse_string(s) do
    Enum.reverse(s)
  end

  @doc """
  Alternative implementation using reduce for educational purposes.
  """
  @spec reverse_string_manual([String.t()]) :: [String.t()]
  def reverse_string_manual(s) do
    Enum.reduce(s, [], fn char, acc -> [char | acc] end)
  end
end
