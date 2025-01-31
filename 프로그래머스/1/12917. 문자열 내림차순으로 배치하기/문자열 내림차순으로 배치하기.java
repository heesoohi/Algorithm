import java.util.*;
class Solution {
    public String solution(String s) {
        char[] charArray = s.toCharArray();
        Arrays.sort(charArray);
        StringBuilder stb = new StringBuilder(new String(charArray)).reverse();
        return stb.toString();
    }
}
