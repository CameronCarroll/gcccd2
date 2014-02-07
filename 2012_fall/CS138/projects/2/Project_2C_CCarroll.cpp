// File: Project_2C_CCarroll.cpp
// Author: Cameron Carroll
// Date: October 21, 2012
// CSIS 138, Project 2 Part C

#include <iostream>

using namespace std;

double getLength() {
  double rect_length;
  cout << "Please enter rectangle length: ";
  cin >> rect_length;
  return rect_length;
}

double getWidth() {
  double rect_width;
  cout << "Please enter rectangle width: ";
  cin >> rect_width;
  return rect_width;
}

double getArea(double rect_length, double rect_width) {
  double rect_area;
  rect_area = rect_length * rect_width;
  return rect_area;
}

void displayData(double rect_length, double rect_width, double rect_area) {
  cout << "Rectangle configuration: " << endl;
  cout << "Length: " << rect_length << endl;
  cout << "Width: " << rect_width << endl;
  cout << "Area: " << rect_area << endl;

  return;

}

int main() {
  double length, width, area;
  length = getLength();
  width = getWidth();
  area = getArea(length, width);

  displayData(length, width, area);
}