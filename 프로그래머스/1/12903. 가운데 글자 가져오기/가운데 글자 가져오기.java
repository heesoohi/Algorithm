class Solution {
    public String solution(String s) {
        int num = s.length() / 2;
        
        if (s.length() % 2 == 1) return String.valueOf(s.charAt(num));
        else return s.substring(num-1, num+1);  
    }
}