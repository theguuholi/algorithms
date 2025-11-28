package algorithms.arrays;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class LongestSubarrayWithSumTest {
    
    private final LongestSubarrayWithSum solution = new LongestSubarrayWithSum();
    
    @Test
    void testFindLength_basicCase() {
        int[] nums = {3, 1, 2, 7, 4, 2, 1, 1, 5};
        int k = 8;
        
        int result = solution.findLength(nums, k);
        
        assertEquals(4, result);
    }
    
    @Test
    void testFindLength_entireArray() {
        int[] nums = {1, 2, 3};
        int k = 10;
        
        int result = solution.findLength(nums, k);
        
        assertEquals(3, result);
    }
    
    @Test
    void testFindLength_singleElement() {
        int[] nums = {5, 10, 15};
        int k = 5;
        
        int result = solution.findLength(nums, k);
        
        assertEquals(1, result);
    }
    
    @Test
    void testFindLength_consecutiveOnes() {
        int[] nums = {1, 1, 1, 1, 1};
        int k = 3;
        
        int result = solution.findLength(nums, k);
        
        assertEquals(3, result);
    }
    
    @Test
    void testFindLength_largeK() {
        int[] nums = {2, 3, 1, 4};
        int k = 100;
        
        int result = solution.findLength(nums, k);
        
        assertEquals(4, result);
    }
}

