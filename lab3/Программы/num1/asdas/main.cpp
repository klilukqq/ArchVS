
#include <iostream>

using namespace std;
extern "C" int fun(int x);

int main()
{
    cout << "fun(10) = " << fun(10) << endl;
    return 0;
}


