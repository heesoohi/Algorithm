import java.util.*;

class Solution {
    public String solution(String phone_number) {
        String arr[] = phone_number.split("");
        for(int i = 0; i<arr.length-4; i++) {
            arr[i] = "*";
        }
        return String.join("",arr);
    }
}