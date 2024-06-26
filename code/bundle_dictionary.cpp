#include <string>
#include <vector>
using namespace std;

int cnt = 0;
void DFS(string word, string str, int *answer) {
    char c[5] = {'A', 'E', 'I', 'O', 'U'};
    
    if(word==str) {
        *answer=cnt;
        return;
    }

    
    for(int i=0; i<5; i++) {
        if(str.length()<5) {
            cnt++;
            DFS(word, str+c[i], answer);
        }
    }
    
}

int solution(string word) {
    int answer = 0;
    DFS(word, "", &answer);
    return answer;
}