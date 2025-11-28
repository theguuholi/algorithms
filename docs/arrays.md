# 📚 Arrays

### Quick Problem Shortcuts

- [Reverse String](#-reverse-string) - Easy
- [Squares of a Sorted Array](#-squares-of-a-sorted-array) - Easy
- [Longest Subarray With Sum ≤ k](#-longest-subarray-with-sum--k) - Medium
- [Maximum Average Subarray I](#-maximum-average-subarray-i) - Easy

---

# ✨ Reverse String

**Difficulty:** Easy  
**LeetCode:** #344

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

## 💻 Solutions

- **Java:** [`ReverseString.java`](../java/src/main/java/algorithms/arrays/ReverseString.java)
- **Elixir:** [`reverse_string.ex`](../elixir/lib/algorithms/arrays/reverse_string.ex)

### Approach

- Set two pointers at the ends of the array.
- Swap the values at the pointers and move inward until they meet.
- **Time Complexity:** O(n)
- **Space Complexity:** O(1)

---

🌟 *In-place and memory-efficient character array reversal!*

---

# ✨ Squares of a Sorted Array

**Difficulty:** Easy  
**LeetCode:** #977

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

## 💻 Solutions

- **Java:** [`SortedSquares.java`](../java/src/main/java/algorithms/arrays/SortedSquares.java)
- **Elixir:** [`sorted_squares.ex`](../elixir/lib/algorithms/arrays/sorted_squares.ex)

### Approach

- Square each element in the array
- Sort the resulting array
- **Time Complexity:** O(n log n)
- **Space Complexity:** O(1) or O(n) depending on implementation

---

🌟 *Square, then sort — efficient transformation for sorted arrays!*

---

# 🔗 Longest Subarray With Sum ≤ k

**Difficulty:** Medium

## 📝 Problem Statement

Given an array of positive integers `nums` and an integer `k`, find the length of the longest subarray whose sum is less than or equal to `k`.

---

## 💡 Example

**Input:**  
`nums = [3, 1, 2, 7, 4, 2, 1, 1, 5]`, `k = 8`

**Output:**  
`4`

**Explanation:**  
The longest subarray with sum ≤ 8 is `[2, 1, 1]` or `[1, 2, 1, 1]` with length 4.

---

## 💻 Solutions

- **Java:** [`LongestSubarrayWithSum.java`](../java/src/main/java/algorithms/arrays/LongestSubarrayWithSum.java)
- **Elixir:** [`longest_subarray_with_sum.ex`](../elixir/lib/algorithms/arrays/longest_subarray_with_sum.ex)

### Approach

- Use sliding window technique with two pointers
- Expand window by moving right pointer
- Shrink window when sum exceeds k
- **Time Complexity:** O(n)
- **Space Complexity:** O(1)

---

# 📊 Maximum Average Subarray I

**Difficulty:** Easy  
**LeetCode:** #643

## 📝 Problem Statement

Find a contiguous subarray of length `k` that has the maximum average value and return this value.

---

## 💡 Examples

**Example 1:**
- **Input:** `nums = [1, 12, -5, -6, 50, 3]`, `k = 4`
- **Output:** `12.75000`
- **Explanation:**  
  The maximum average is calculated over the subarray `[12, -5, -6, 50]`,  
  so: (12 - 5 - 6 + 50) / 4 = **51 / 4 = 12.75**

**Example 2:**
- **Input:** `nums = [5]`, `k = 1`
- **Output:** `5.00000`

---

## 💻 Solutions

- **Java:** [`MaximumAverageSubarray.java`](../java/src/main/java/algorithms/arrays/MaximumAverageSubarray.java)
- **Elixir:** [`maximum_average_subarray.ex`](../elixir/lib/algorithms/arrays/maximum_average_subarray.ex)

### Approach

- Use prefix sum or sliding window to calculate sums efficiently
- Track maximum sum of any k-length window
- Divide by k to get average
- **Time Complexity:** O(n)
- **Space Complexity:** O(1) or O(n) with prefix sum

---

**Constraints:**

- `n == nums.length`
- `1 <= k <= n <= 10^5`
- `-10^4 <= nums[i] <= 10^4`

