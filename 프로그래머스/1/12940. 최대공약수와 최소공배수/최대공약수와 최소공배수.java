class Solution {
    public int[] solution(int n, int m) {
        int ans[] = new int[2];
        int max = 0;
        for (int i =1; i<=n && i<=m; i++){
            if (n%i == 0 && m%i ==0){
                max = i;
            }
        }
        ans[0] = max;
        ans[1] = n*m/max;
        
        return ans;
    }
}