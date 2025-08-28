class Solution {
    public int solution(int[] wallet, int[] bill) {
        int answer = 0;
        
        int minBill = bill[0] < bill[1] ? bill[0] : bill[1];
        int maxBill = bill[1] < bill[0] ? bill[0] : bill[1];
        
        int minWallet = wallet[0] < wallet[1] ? wallet[0] : wallet[1];
        int maxWallet = wallet[1] < wallet[0] ? wallet[0] : wallet[1];
        
        while (minBill > minWallet || maxBill > maxWallet) {
            if (bill[0] > bill[1]) {
                bill[0] /= 2;
            } else {
                bill[1] /= 2;
            }
            
            answer++;
            
            minBill = bill[0] < bill[1] ? bill[0] : bill[1];
            maxBill = bill[1] < bill[0] ? bill[0] : bill[1];
        } 
        return answer;
    }
}