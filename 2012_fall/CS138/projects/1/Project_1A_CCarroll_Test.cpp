// File: Project_1A_CCarroll_Test.cpp
// Author: Cameron Carroll
// Date: September 11, 2012
// CSIS 138, Project 1 Part A

// Relative float comparison formula from:
// http://realtimecollisiondetection.net/blog/?p=89

#include "Project_1A_CCarroll.hpp"
#include <iostream>
#include <cmath>
using namespace std;

#define EPSILON 0.1

double values_equal(double value_a, double value_b) {
  if (value_a == value_b) {
    return true;
  }
  else {
    return false;
  }
}

void assert_equal(double value_a, double value_b) {
  if (values_equal(value_a, value_b)) {
    cout << "EQUALITY: " << value_a << " == " << value_b << endl;
  }
  else {
    cout << "INEQUALITY: " << value_a << " != " << value_b << endl;
  }

  return;
}

void assert_equal_relative(double value_a, double value_b, double epsilon) {
  if (abs(value_a - value_b) <= epsilon * max(abs(value_a), abs(value_b))) {
    cout << "RELATIVE EQUALITY: " << value_a << " +- " << epsilon << " ~= " << value_b << endl;
    return;
  }
  else {
    cout << "RELATIVE INEQUALITY: " << value_a << " +- " << epsilon << " != " << value_b << endl;
    return;
  }
}

int main() {

  

  // Celsius inputs, fahrenheit outputs
  double c_temp_in_1 = 100.0; double f_temp_ex_1 = 212.0;
  double c_temp_in_2 = 0.0; double f_temp_ex_2 = 32.0;
  double c_temp_in_3 = -273.0; double f_temp_ex_3 = -459.4;

  // Fahrenheit inputs, celsius outputs
  double f_temp_in_1 = 100.0; double c_temp_ex_1 = 37.8;
  double f_temp_in_2 = -100.0; double c_temp_ex_2 = -73.3;
  double f_temp_in_3 = -40.0; double c_temp_ex_3 = -40.0;

  cout << "Calculated Temperature =? Expected Value" << endl;
  cout << "-----------------------------------------" << endl;
  assert_equal_relative(convert_c_to_f(c_temp_in_1), f_temp_ex_1, EPSILON);
  assert_equal_relative(convert_c_to_f(c_temp_in_2), f_temp_ex_2, EPSILON);
  assert_equal_relative(convert_c_to_f(c_temp_in_3), f_temp_ex_3, EPSILON);

  assert_equal_relative(convert_f_to_c(f_temp_in_1), c_temp_ex_1, EPSILON);
  assert_equal_relative(convert_f_to_c(f_temp_in_2), c_temp_ex_2, EPSILON);
  assert_equal_relative(convert_f_to_c(f_temp_in_3), c_temp_ex_3, EPSILON);

    return 0;
}