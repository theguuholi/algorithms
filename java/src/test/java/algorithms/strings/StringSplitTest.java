package algorithms.strings;

import java.util.List;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class StringSplitTest {
    @Test
    public void testStringSplit_basicCase() {
        String input = "hello world";
        StringSplit stringSplit = new StringSplit();
        List<String> result = stringSplit.split(input, " ");
        assertEquals(2, result.size());
        assertEquals("hello", result.get(0));
        assertEquals("world", result.get(1));
    }
}
