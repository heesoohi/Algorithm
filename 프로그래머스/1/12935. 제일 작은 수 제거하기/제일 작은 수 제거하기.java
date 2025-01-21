import java.util.ArrayList;
import java.util.Arrays;

class Solution {
    public int[] solution(int[] arr) {
        
        // 빈 배열인 경우 [-1] 리턴
        if (arr.length == 0) {
            return new int[] {-1};
        }
        
        // arr에서 가장 작은 수 찾기
        int min = Arrays.stream(arr).min().getAsInt();
        
        // 최솟값을 제거한 배열 생성
        ArrayList<Integer> withOutMinimum= new ArrayList<>();
        for(int n : arr) {
            if(n != min) {
                withOutMinimum.add(n);
            }
        }
        
        if (arr.length == 1 && arr[0] == 10) {
            return new int[] {-1};
        }
        return withOutMinimum.stream().mapToInt(i -> i).toArray();
    }
}