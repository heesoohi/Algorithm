class Solution {
    public boolean solution(int x) {
        String str = new String(x + "");
        String strArr[] = str.split("");
        int answer[] = new int[strArr.length];

        for (int i=0; i<strArr.length; i++) {
            answer[i] = Integer.parseInt(strArr[i]);
        }   
        int sum = 0;
        for (int i =0; i<answer.length;i++){
            sum = sum +answer[i];
        }
        
        if(x%sum == 0){
            boolean a = true;
            return a;
        } else {
            boolean b = false;
            return b;
        }
    }
}