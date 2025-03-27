class Solution {
    public String solution(String s, int n) {
        StringBuilder answer = new StringBuilder();
 
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
 
            if (ch >= 'a' && ch <= 'z') { // 소문자일 경우
                char shifted = (char) ((ch - 'a' + n) % 26 + 'a');
                answer.append(shifted);
            } else if (ch >= 'A' && ch <= 'Z') { // 대문자일 경우
                char shifted = (char) ((ch - 'A' + n) % 26 + 'A');
                answer.append(shifted);
            } else { // 공백일 경우
                answer.append(ch);
            }
        }
 
        return answer.toString();
    }
}