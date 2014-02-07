// File: Exercise_3_CCarroll.cpp
// Date: August 20, 2012
// Author: Cameron Carroll
// For CS 181, Cuyamaca College.

#include <iostream>
using namespace std;

int main() {
  int rect_1_width, rect_1_height, rect_2_width, rect_2_height;
  int rect_1_area, rect_2_area;

  cout << "Rectangle Comparison Program! \n";

  cout << "Please define rectangle 1 with integers... width: ";
  cin >> rect_1_width;
  cout << " and height: ";
  cin >> rect_1_height;

  cout << "Please define rectangle 2 with integers... width: ";
  cin >> rect_2_width;
  cout << " and height: ";
  cin >> rect_2_height;

  rect_1_area = rect_1_width * rect_1_height;
  rect_2_area = rect_2_width * rect_2_height;

  if (rect_1_area > rect_2_area) {
    cout << "Rectangle 1 is larger \n";
    cout << "Rect1 Size: " << rect_1_area << " -- Rect2 Size: " << rect_2_area << endl;
  }
  else if (rect_1_area < rect_2_area) {
    cout << "Rectangle 2 is larger \n";
    cout << "Rect1 Size: " << rect_1_area << " -- Rect2 Size: " << rect_2_area << endl;
  }
  else {
    cout << "Both rectangles are the same size! \n";
    cout << "Rect1 Size: " << rect_1_area << " -- Rect2 Size: " << rect_2_area << endl;
  }

  return 0;

}