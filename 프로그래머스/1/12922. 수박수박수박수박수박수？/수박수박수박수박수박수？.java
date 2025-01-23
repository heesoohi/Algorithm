import java.util.ArrayList;

class Solution {
    public String solution(int n) {
        ArrayList<String> arr = new ArrayList<>();
        for(int i = 0; i < n; i++){
            if(i%2 == 0) arr.add("수");
            else arr.add("박");
        }
        
        return String.join("",arr);
    }
}