import java.util.*;

class Solution {
    public String[] solution(String[] players, String[] callings) {

        Map<String, Integer> map = new HashMap<>();

        int index = 0; // 인댁스 검색속도 향상을 위한 Map 사용
        for (String p : players) map.put(p, index++);

        for (String c : callings) {
            int callIndex = map.get(c).intValue();
            int targetIndex = callIndex - 1;

            // 위치 변경
            String targetPlayer = players[targetIndex];
            players[callIndex] = players[targetIndex];
            players[targetIndex] = c;

            // 인덱스 수정
            map.put(c, targetIndex);
            map.put(targetPlayer, callIndex);
        }

        return players;
    }
}