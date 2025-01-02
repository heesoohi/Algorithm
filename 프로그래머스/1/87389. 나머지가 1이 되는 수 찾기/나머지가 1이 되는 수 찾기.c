#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int solution(int n) {
    int a = 0;
    for (int i = 0;i<n;i++){
        if (n % (i+1) == 1){
            a = i+1;
            break;
        }
    }
    return a;
}