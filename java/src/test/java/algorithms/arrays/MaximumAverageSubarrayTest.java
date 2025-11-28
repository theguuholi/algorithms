package algorithms.arrays;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class MaximumAverageSubarrayTest {
    
    private final MaximumAverageSubarray solution = new MaximumAverageSubarray();
    
    @Test
    void testFindMaxAverage_basicCase() {
        int[] nums = {1, 12, -5, -6, 50, 3};
        int k = 4;
        
        double result = solution.findMaxAverage(nums, k);
        
        assertEquals(12.75, result, 0.00001);
    }
    
    @Test
    void testFindMaxAverage_singleElement() {
        int[] nums = {5};
        int k = 1;
        
        double result = solution.findMaxAverage(nums, k);
        
        assertEquals(5.0, result, 0.00001);
    }
    
    @Test
    void testFindMaxAverage_entireArray() {
        int[] nums = {1, 2, 3, 4};
        int k = 4;
        
        double result = solution.findMaxAverage(nums, k);
        
        assertEquals(2.5, result, 0.00001);
    }
    
    @Test
    void testFindMaxAverage_negativeNumbers() {
        int[] nums = {-1, -2, -3, -4, -5};
        int k = 2;
        
        double result = solution.findMaxAverage(nums, k);
        
        assertEquals(-1.5, result, 0.00001);
    }
    
    @Test
    void testFindMaxAverage_consecutivePositives() {
        int[] nums = {0, 1, 1, 3, 3};
        int k = 4;
        
        double result = solution.findMaxAverage(nums, k);
        
        assertEquals(2.0, result, 0.00001);
    }
}

