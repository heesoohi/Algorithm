class Solution {
    public long solution(int a, int b) {
        if ( a == b ){
            return a;
        } else if (a<b) {
            long sum = 0;
            int[] arr = new int[(b-a+1)];
            for (int i = 0; i<arr.length; i++){
                arr[i] = a+i;
            }
            for (int i = 0; i < arr.length; i++){
                sum = sum + arr[i];
            }
            return sum;
        } else {
            long sum = 0;
            int[] arr = new int[(a-b+1)];
            for (int i = 0; i<arr.length; i++){
                arr[i] = b+i;
            }
            for (int i = 0; i < arr.length; i++){
                sum = sum + arr[i];
            }
            return sum;
        }
    }
}