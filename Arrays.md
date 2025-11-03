# 📚 Arrays

### Quick Problem Shortcuts

- [Reverse String](#-reverse-string)
- [Squares of a Sorted Array](#-squares-of-a-sorted-array)

---



# ✨ Reverse String

## 📝 Problem Statement

Write a function to **reverse a string**, where the input is an array of characters `s`.

- **Constraint:** Update the array *in-place* using only **O(1)** extra space.

---

## 💡 Example

**Input:**  
`s = ["h", "e", "l", "l", "o"]`

**Output:**  
`["o", "l", "l", "e", "h"]`

---

## 💻 Java Solution

```java
class Solution {
    public void reverseString(char[] s) {
        int left = 0, right = s.length - 1;
        while (left < right) {
            char temp = s[left];
            s[left] = s[right];
            s[right] = temp;
            left++;
            right--;
        }
    }
}
```

- Set two pointers at the ends of the array.
- Swap the values at the pointers and move inward until they meet.

---

🌟 *In-place and memory-efficient character array reversal!*


---

---

# ✨ Squares of a Sorted Array

## 📝 Problem Statement

Given an integer array `nums` sorted in non-decreasing order, return a new array of the **squares** of each number, also sorted in non-decreasing order.

---

## 💡 Example

**Input:**  
`nums = [-4, -1, 0, 3, 10]`

**Output:**  
`[0, 1, 9, 16, 100]`

**Explanation:**  
Squaring: `[16, 1, 0, 9, 100]`  
After sorting: `[0, 1, 9, 16, 100]`

---

## 💻 Java Solution

```java
class Solution {
    public int[] sortedSquares(int[] nums) {
        for(int i = 0; i < nums.length; i++) nums[i] = nums[i] * nums[i];
        Arrays.sort(nums);
        return nums;
    }
}
```

## 💻 Elixir Solution

```elixir
defmodule Solution do
  @spec sorted_squares(nums :: [integer]) :: [integer]
  def sorted_squares(nums) do
    nums
    |> Enum.reduce([], fn n, acc -> [n * n | acc] end)
    |> Enum.sort()
  end
end
```

---

🌟 *Square, then sort — efficient transformation for sorted arrays!*
