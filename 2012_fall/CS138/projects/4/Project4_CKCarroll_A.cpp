// File: Project4_CKCarroll_A.cpp
// Author: Cameron Carroll
// December 11 2012
// Final Project, CSIS 138, Part A

#include <iostream>
using namespace std;

class CCircle {

private:
  double radius, pi;

public: 
  CCircle ();
  CCircle (double);
  void setRadius (double input_radius) {radius = input_radius;}
  double getRadius () { return radius; }
  double getArea () { return pi * radius * radius;}
  double getDiameter () {return 2 * radius;}
  double getCircumference () {return 2 * pi * radius;}
};

CCircle::CCircle () {
  radius = 0.0;
  pi = 3.14159;
}
CCircle::CCircle (double input_radius) {
  radius = input_radius;
  pi = 3.14159;
}


int main() {
  CCircle circle;
  double input_radius;

  cout << "CS138 C++ Final Project" << endl;
  cout << "Cameron Carroll --- Fall 2012" << endl;
  cout << endl;
  cout << "Please enter a circle radius: ";
  cin >> input_radius;
  circle.setRadius(input_radius);
  cout << "Your circle radius is: " << circle.getRadius() << endl;
  cout << "Area: " << circle.getArea() << endl;
  cout << "Diameter: " << circle.getDiameter() << endl;
  cout << "Circumference: " << circle.getCircumference() << endl;
}
