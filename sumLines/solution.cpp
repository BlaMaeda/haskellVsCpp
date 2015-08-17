#include <iostream>
#include <string>
#include <sstream>

using namespace std;

string sum_line(const string& line) {
    int sum = 0;
    int x;

    stringstream ss;
    ss << line;

    while (ss >> x) {
        sum += x;
    }

    if (ss.eof()) {
        return to_string(sum);
    } else {
        return "Wrong line";
    }
}

int main() {
    string line;

    while (getline(cin, line)) {
        cout << sum_line(line) << endl;
    }
}
