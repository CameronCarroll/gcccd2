// File: Project_1A_CCarroll.cpp
// Author: Cameron Carroll
// Date: September 11, 2012
// CSIS 138, Project 1 Part A

#include "Project_1A_CCarroll.hpp"
#include <cmath>

double convert_f_to_c(double fahrenheit_temperature) {
  double celsius_temperature = (5.0/9.0) * (fahrenheit_temperature - 32.0);

  return celsius_temperature;
}

double convert_c_to_f(double celsius_temperature) {
  double fahrenheit_temperature = (9.0/5.0) * celsius_temperature + 32.0;

  return fahrenheit_temperature;
}