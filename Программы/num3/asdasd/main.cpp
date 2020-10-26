#include <iostream>
#include <locale.h>

using namespace std;
extern "C" void fun();
extern "C" void fun2();

void fun2(){
    int x,y;
    cin >> x >> y;
    cout << "Были числа " << x << " и " << y;
}

int main()
{
    setlocale(0,"Russian");
    fun();
    return 0;
}
