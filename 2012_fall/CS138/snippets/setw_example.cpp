#include <iostream>
#include <string>
#include <iomanip>
 
using namespace std;
 
int main() {
      // data
      string ids[] = {"A443351",
                      "A553235",
                      "C552261",
                      "D112342",
                      "D222415"};
 
      string names[] = {"John",
                        "Jack",
                        "Dennis",
                        "Julia",
                        "Veronica"};
 
      float grades[] = {4.0f,
                        3.5f,
                        5.0f,
                        5.0f,
                        4.2f};   
 
      // adjust output to the left
      cout << left;
 
      // print table header
      cout << setw(5) << "#" << setw(10) << "ID" << setw(15) << "Name" << setw(10) << "Grade" << endl << endl;
      // print data
      for (int i = 0; i < 5; i++)
            cout << setw(5) << (i + 1) << setw(10) << ids[i] << setw(15) << names[i] << setw(10) << grades[i] << endl;
 
      return 0;
}