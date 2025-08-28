class Solution {
    public int solution(int n, int m, int[] section) {
        int answer = 0;
        int covered = 0;
        
        for (int sec : section) {
            if (sec > covered) {
                covered = sec + m - 1;
                answer++;
            }
        }
        return answer;
    }
}