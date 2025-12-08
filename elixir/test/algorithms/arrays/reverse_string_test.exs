defmodule Algorithms.Arrays.ReverseStringTest do
  use ExUnit.Case
  alias Algorithms.Arrays.ReverseString

  test "reverses basic string" do
    assert ReverseString.reverse_string(["h", "e", "l", "l", "o"]) == ["o", "l", "l", "e", "h"]
  end

  test "reverses two characters" do
    assert ReverseString.reverse_string(["a", "b"]) == ["b", "a"]
  end

  test "single character remains unchanged" do
    assert ReverseString.reverse_string(["x"]) == ["x"]
  end

  test "palindrome remains same" do
    assert ReverseString.reverse_string(["r", "a", "c", "e", "c", "a", "r"]) ==
             ["r", "a", "c", "e", "c", "a", "r"]
  end

  test "manual implementation works" do
    assert ReverseString.reverse_string_manual(["h", "e", "l", "l", "o"]) ==
             ["o", "l", "l", "e", "h"]
  end
end
