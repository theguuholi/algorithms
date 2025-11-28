package algorithms.arrays;

/**
 * LeetCode #344 - Reverse String
 * Difficulty: Easy
 * 
 * Reverses a character array in-place using O(1) extra space.
 * Uses two-pointer technique.
 * 
 * Time Complexity: O(n)
 * Space Complexity: O(1)
 */
public class ReverseString {
    
    /**
     * Reverses the input character array in-place.
     * 
     * @param s the character array to reverse
     */
    public void reverseString(char[] s) {
        int left = 0;
        int right = s.length - 1;
        
        while (left < right) {
            // Swap characters at left and right pointers
            char temp = s[left];
            s[left] = s[right];
            s[right] = temp;
            
            // Move pointers inward
            left++;
            right--;
        }
    }
}

