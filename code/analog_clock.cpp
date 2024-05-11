#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

vector<double> getDegree(int h, int m, int s) {
    const double HOUR_DEGREE = 360.0 / 12;
    const double MINUTE_DEGREE = 360.0 / 60;
    double hDegree = (h % 12) * HOUR_DEGREE + m * HOUR_DEGREE / 60 + s * HOUR_DEGREE / 3600;
    double mDegree = m * MINUTE_DEGREE + s * MINUTE_DEGREE / 60;
    double sDegree = s * MINUTE_DEGREE;
    return vector<double>{hDegree, mDegree, sDegree};
}

bool isOverlap(vector<double>& current, vector<double>& next, int hand1, int hand2) {
    return (current[hand1] > current[hand2] && next[hand1] <= next[hand2]) || 
           (current[hand2] == 354 && current[hand1] > 354);
}

int solution(int h1, int m1, int s1, int h2, int m2, int s2) {
    int answer = 0;
    int start = h1 * 3600 + m1 * 60 + s1;
    int end = h2 * 3600 + m2 * 60 + s2;

    for(int i = start; i < end; i++) {
        vector<double> current = getDegree(i / 3600, (i % 3600) / 60, i % 60);
        vector<double> next = getDegree((i + 1) / 3600, ((i + 1) % 3600) / 60, (i + 1) % 60);

        bool hMatch = isOverlap(current, next, 0, 2);
        bool mMatch = isOverlap(current, next, 1, 2);

        if(hMatch && mMatch) {
            answer += (next[0] == next[1]) ? 1 : 2;
        } else if(hMatch || mMatch) {
            answer++;
        }
    }
    if(start == 0 || start == 43200) answer++;
    return answer;
}
