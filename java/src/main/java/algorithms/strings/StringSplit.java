package algorithms.strings;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class StringSplit {

    public List<String> split(String input, String delimiter) {
        if (delimiter.isEmpty()) {
            return Arrays.asList(input);
        }
        List<String> result = new ArrayList<>();

        var start = 0;
        var lenght = input.length() - 1;
        var end = 0;

        while (end <= lenght) {
            if (input.charAt(end) == delimiter.charAt(0)) {
                result.add(input.substring(start, end));
                start = end + 1;
                end++;
            }
            if (end == lenght) {
                result.add(input.substring(start, end + 1));
                break;
            }
            end++;
        }

        return result;
    }

}
