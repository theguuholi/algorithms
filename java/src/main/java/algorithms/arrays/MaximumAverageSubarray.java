package algorithms.arrays;

/**
 * LeetCode #643 - Maximum Average Subarray I
 * Difficulty: Easy
 * 
 * Finds a contiguous subarray of length k with the maximum average value.
 * Uses prefix sum approach.
 * 
 * Time Complexity: O(n)
 * Space Complexity: O(n) - for prefix sum array
 */
public class MaximumAverageSubarray {
    
    /**
     * Finds the maximum average of any contiguous subarray of length k.
     * 
     * @param nums array of integers
     * @param k length of subarray
     * @return maximum average value
     */
    public double findMaxAverage(int[] nums, int k) {
        // Build prefix sum array
        int[] sum = new int[nums.length];
        sum[0] = nums[0];
        
        for (int i = 1; i < nums.length; i++) {
            sum[i] = sum[i - 1] + nums[i];
        }
        
        // Initialize result with first k-length window
        double res = sum[k - 1] * 1.0 / k;
        
        // Check all other k-length windows
        for (int i = k; i < nums.length; i++) {
            double currentAvg = (sum[i] - sum[i - k]) * 1.0 / k;
            res = Math.max(res, currentAvg);
        }
        
        return res;
    }
}

