//
// Created by 谭浩 on 2025/5/7.
//

#include <iostream>

template <typename T>

void f(T& param); //param is reference

using namespace std;



class Widget {
private:
    int x{0};                   //  fine
    int y = 0;                   // also fine
    int z(0);                   // error!};
};




int main()
{



    int y(1);
    int x=27;               //  x is an int
    const int cx = x;       //  cx is a const int
    const int& rx = x;      //  rx is a reference to x as a const int

    f(x);                // T is int , param's type is int&

    f(cx);           // T is const int,
                            // param's type is const int&

    f(rx);           // T is const int,
                            // param's type is const int&

}