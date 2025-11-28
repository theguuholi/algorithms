package algorithms.arrays;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class SortedSquaresTest {
    
    private final SortedSquares solution = new SortedSquares();
    
    @Test
    void testSortedSquares_mixedNumbers() {
        int[] input = {-4, -1, 0, 3, 10};
        int[] expected = {0, 1, 9, 16, 100};
        
        int[] result = solution.sortedSquares(input);
        
        assertArrayEquals(expected, result);
    }
    
    @Test
    void testSortedSquares_allNegative() {
        int[] input = {-7, -3, -2, -1};
        int[] expected = {1, 4, 9, 49};
        
        int[] result = solution.sortedSquares(input);
        
        assertArrayEquals(expected, result);
    }
    
    @Test
    void testSortedSquares_allPositive() {
        int[] input = {1, 2, 3, 4, 5};
        int[] expected = {1, 4, 9, 16, 25};
        
        int[] result = solution.sortedSquares(input);
        
        assertArrayEquals(expected, result);
    }
    
    @Test
    void testSortedSquares_singleElement() {
        int[] input = {-5};
        int[] expected = {25};
        
        int[] result = solution.sortedSquares(input);
        
        assertArrayEquals(expected, result);
    }
    
    @Test
    void testSortedSquares_withZero() {
        int[] input = {-2, 0, 2};
        int[] expected = {0, 4, 4};
        
        int[] result = solution.sortedSquares(input);
        
        assertArrayEquals(expected, result);
    }
}

