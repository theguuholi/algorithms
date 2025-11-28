package algorithms.arrays;

/**
 * Longest Subarray With Sum ≤ k
 * Difficulty: Medium
 * 
 * Finds the length of the longest subarray whose sum is less than or equal to k.
 * Uses sliding window technique.
 * 
 * Time Complexity: O(n)
 * Space Complexity: O(1)
 */
public class LongestSubarrayWithSum {
    
    /**
     * Finds the length of the longest subarray with sum ≤ k.
     * 
     * @param nums array of positive integers
     * @param k maximum allowed sum
     * @return length of longest valid subarray
     */
    public int findLength(int[] nums, int k) {
        int left = 0;
        int curr = 0; // current sum of the window
        int ans = 0;
        
        for (int right = 0; right < nums.length; right++) {
            // Expand window by adding right element
            curr += nums[right];
            
            // Shrink window while sum exceeds k
            while (curr > k) {
                curr -= nums[left];
                left++;
            }
            
            // Update maximum length
            ans = Math.max(ans, right - left + 1);
        }
        
        return ans;
    }
}

