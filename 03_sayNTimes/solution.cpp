#include <iostream>
#include <string>

using namespace std;

int main() {
    int N;
    string message;

    if (cin >> N >> message >> ws) {
        if (cin.eof()) {
            for (int i = 0; i < N; i++) {
                cout << message << endl;
            }
        }
    }
}
