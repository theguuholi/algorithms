package algorithms.arrays;

import java.util.Arrays;

/**
 * LeetCode #977 - Squares of a Sorted Array
 * Difficulty: Easy
 * 
 * Returns an array of squares of each number, sorted in non-decreasing order.
 * 
 * Time Complexity: O(n log n) - due to sorting
 * Space Complexity: O(1) - modifies array in-place (excluding output array)
 */
public class SortedSquares {
    
    /**
     * Squares each element and returns a sorted array of squares.
     * 
     * @param nums sorted array of integers
     * @return sorted array of squared integers
     */
    public int[] sortedSquares(int[] nums) {
        // Square each element in-place
        for (int i = 0; i < nums.length; i++) {
            nums[i] = nums[i] * nums[i];
        }
        
        // Sort the squared values
        Arrays.sort(nums);
        
        return nums;
    }
}

