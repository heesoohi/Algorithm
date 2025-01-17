class Solution {
    public int solution(int[] numbers) {
        int ans = 0;
        boolean isTrue[] = new boolean[10];
        
        for(int num : numbers){
            isTrue[num] = true;
        }
        for (int i = 0; i<10; i++){
            if(!isTrue[i]){ans += i;}
        }
        return ans;
    }
}