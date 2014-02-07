// File: Project_2A_CCarroll.cpp
// Author: Cameron Carroll
// Date: October 20, 2012
// CSIS 138, Project 2 Part A

#include <iostream>
#include <iomanip>
#include <string>

#define AIR_SPEED 1100.0
#define WATER_SPEED 4900.0
#define STEEL_SPEED 16400.0

using namespace std;

int get_medium_input() {
  cout << left;
  cout << "Please select one of the following media for which to calculate wave propogation time:" << endl;
  cout << setw(5) << "#" << setw(10) << "Medium" << setw(10) << "Wave Speed (feet per second)" << endl;
  cout << "---------------------------------------" << endl;
  cout << setw(5) << "1" << setw(10) << "Air" << setw(10) << AIR_SPEED << endl;
  cout << setw(5) << "2" << setw(10) << "Water" << setw(10) << WATER_SPEED << endl;
  cout << setw(5) << "3" << setw(10) << "Steel" << setw(10) << STEEL_SPEED << endl << endl << endl;


  cout << "Please select a medium by number: ";
  char medium_input;
  cin >> medium_input;

  if (medium_input == '1')
    return 1;
  else if (medium_input == '2')
    return 2;
  else if (medium_input == '3')
    return 3;
  else
    return -1;
}

int get_distance_input(string medium) {
  cout << "Please enter the distance a sound wave will travel through " << medium << ". (feet)" << endl;
  cout << "Distance: ";
  int distance_input;
  cin >> distance_input;

  if (distance_input && distance_input > 0)
    return distance_input;
  else {
    cout << "Error: Distance must be a positive integer." << endl;
    return -1;
  }
}


int main() {

  cout << "Wave Propogation Time Calculator" << endl;
  cout << "Project 1B -- CSIS 138" << endl;
  cout << "Cameron Carroll -- September 2012" << endl << endl << endl;

  for (int iterations=1; iterations<6; iterations++) {

    cout << "Iteration [" << iterations << "/5]..." << endl;
    int medium_input, distance_input;
    float calculated_time;
    medium_input = get_medium_input();
    if (medium_input == -1)
      cout << "Invalid medium choice; Valid inputs are '1', '2', or '3'." << endl;
    else if (medium_input == 1) {
      distance_input = get_distance_input("air"); // distance_input takes a medium type string to define purpose of input
      if (distance_input != -1) {
        calculated_time = distance_input / AIR_SPEED;
      }
    }
    else if (medium_input == 2) {
      distance_input = get_distance_input("water");
      if (distance_input != -1) {
        calculated_time = distance_input / WATER_SPEED;
      }
    }
    else if (medium_input == 3) {
      distance_input = get_distance_input("steel");
      if (distance_input != -1) {
        calculated_time = distance_input / STEEL_SPEED;
      }
    }
    else
      cout << "Invalid medium choice; Valid inputs are '1', '2', or '3'." << endl;

    cout << "Calculated time: " << setw(15) << calculated_time << "seconds" << endl;
    cout << endl;
}
  return 0;
}