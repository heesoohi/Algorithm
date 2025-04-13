#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

// topping_len은 배열 topping의 길이입니다.
int solution(int topping[], size_t topping_len) {
    int answer = 0;
    int o1[10001] = {0}; // 크기를 10001로 설정
    int o2[10001] = {0}; // 크기를 10001로 설정
    int size = topping_len; // topping_len을 크기 변수로 사용
    int o1_cnt = 0; 
    int o2_cnt = 0; 
    
    // o2에 대한 카운트를 먼저 진행
    for(int i = 0; i < size; i++) {
        o2[topping[i]]++;
        if(o2[topping[i]] == 1) o2_cnt++;
    }
    
    // o1과 o2의 상태를 비교하면서 answer 계산
    for(int i = 0; i < size; i++) {
        o1[topping[i]]++;
        if(o1[topping[i]] == 1) o1_cnt++;
        
        o2[topping[i]]--;
        if(o2[topping[i]] == 0) o2_cnt--;
        
        // o1과 o2의 토핑 종류의 개수가 같으면 answer 증가
        if(o1_cnt == o2_cnt) answer++;
    }
    
    return answer;
}
