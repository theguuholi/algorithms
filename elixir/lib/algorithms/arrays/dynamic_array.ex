defmodule Algorithms.Arrays.DynamicArray do
  defstruct ~w(size capacity data)a

  def new do
    %__MODULE__{
      size: 0,
      capacity: 10,
      data: []
    }
  end

  def get(array, index) do
    Enum.at(array.data, index)
  end

  def size(array), do: array.size

  def append(array, value) do
    if array.size >= array.capacity do
      new_capacity = array.capacity * 2
      %{array | data: [value | array.data], capacity: new_capacity, size: array.size + 1}
    else
      %{array | data: [value | array.data], size: array.size + 1}
    end
  end

  def set(array, index, _value) when index < 0 or index >= array.capacity do
    raise "Index out of bounds"
  end

  def set(%{data: data, size: _size} = array, index, value) do
    data = List.replace_at(data, index, value)
    %{array | data: data}
  end

  def pop_back(array) do
    if array.size == 0 do
      array
    else
      %{array | data: List.delete_at(array.data, array.size - 1), size: array.size - 1}
    end
  end
end
