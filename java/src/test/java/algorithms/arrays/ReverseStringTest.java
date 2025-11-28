package algorithms.arrays;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class ReverseStringTest {
    
    private final ReverseString solution = new ReverseString();
    
    @Test
    void testReverseString_basicCase() {
        char[] input = {'h', 'e', 'l', 'l', 'o'};
        char[] expected = {'o', 'l', 'l', 'e', 'h'};
        
        solution.reverseString(input);
        
        assertArrayEquals(expected, input);
    }
    
    @Test
    void testReverseString_twoCharacters() {
        char[] input = {'a', 'b'};
        char[] expected = {'b', 'a'};
        
        solution.reverseString(input);
        
        assertArrayEquals(expected, input);
    }
    
    @Test
    void testReverseString_singleCharacter() {
        char[] input = {'x'};
        char[] expected = {'x'};
        
        solution.reverseString(input);
        
        assertArrayEquals(expected, input);
    }
    
    @Test
    void testReverseString_palindrome() {
        char[] input = {'r', 'a', 'c', 'e', 'c', 'a', 'r'};
        char[] expected = {'r', 'a', 'c', 'e', 'c', 'a', 'r'};
        
        solution.reverseString(input);
        
        assertArrayEquals(expected, input);
    }
}

