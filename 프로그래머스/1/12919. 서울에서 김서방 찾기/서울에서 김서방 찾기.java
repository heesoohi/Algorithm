class Solution {
    public String solution(String[] seoul) {
        int i = 0;
        while (!seoul[i].equals("Kim")){
            i++;
        }
        String.valueOf(i);
        return ("김서방은 " + i + "에 있다");
    }
}