defmodule Algorithms.Arrays.DynamicArrayTest do
  use ExUnit.Case
  import Algorithms.Arrays.DynamicArray
  alias Algorithms.Arrays.DynamicArray

  describe "new" do
    test "creates a new dynamic array" do
      assert new() == %DynamicArray{size: 0, capacity: 10, data: []}
    end
  end

  describe "get/2" do
    test "returns the value at the given index" do
      assert get(new(), 0) == nil
    end
  end

  describe "append/2" do
    test "appends the value to the end of the array" do
      assert append(new(), "hello") == %DynamicArray{size: 1, capacity: 10, data: ["hello"]}
    end

    test "append until capacity is reached" do
      data_result = [
        "double it",
        "?",
        "!",
        ":",
        ";",
        ",",
        ".",
        "?",
        "!",
        "world",
        "hello"
      ]

      assert new()
             |> append("hello")
             |> append("world")
             |> append("!")
             |> append("?")
             |> append(".")
             |> append(",")
             |> append(";")
             |> append(":")
             |> append("!")
             |> append("?")
             |> append("double it") == %DynamicArray{
               size: 11,
               capacity: 20,
               data: data_result
             }
    end

    test "given the sice" do
      assert new() |> size() == 0
    end
  end

  describe "set/3" do
    test "given index is out of bounds, raises an error" do
      assert_raise RuntimeError, "Index out of bounds", fn ->
        set(new(), -1, "hello")
      end
    end

    test "given index is within bounds, sets the value at the given index" do
      assert new() |> append("hello") |> set(0, "world") == %DynamicArray{
               size: 1,
               capacity: 10,
               data: ["world"]
             }
    end
  end

  describe "pop_back/1" do
    test "given the array is empty, returns nil" do
      assert new() |> pop_back() == %DynamicArray{size: 0, capacity: 10, data: []}
    end

    test "given the array is not empty, returns the array with the last element removed" do
      assert new() |> append("hello") |> append("world") |> pop_back() == %DynamicArray{
               size: 1,
               capacity: 10,
               data: ["world"]
             }
    end
  end
end
