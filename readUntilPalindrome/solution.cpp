#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

bool is_palindrome(const string& s) {
    string reversed = s;
    reverse(reversed.begin(), reversed.end());
    return s == reversed;
}

int main() {
    string line;

    while (getline(cin, line)) {
        if (is_palindrome(line)) {
            cout << line << endl;
            break;
        }
    }
}
