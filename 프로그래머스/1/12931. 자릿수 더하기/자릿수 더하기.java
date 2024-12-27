import java.util.*;

public class Solution {
    public int solution(int n) {
        String str = new String(n + "");
		String strArr[] = str.split("");
        
  		int answer[] = new int[strArr.length];

        for (int i=0; i<strArr.length; i++) {
			answer[i] = Integer.parseInt(strArr[strArr.length - 1 - i]);
		}        
        
        int sum = 0;
        for (int i =0; i<answer.length;i++){
            sum = sum +answer[i];
        }
        
        return sum;
    }
}