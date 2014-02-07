// File: Project_2B_CCarroll.cpp
// Author: Cameron Carroll
// Date: October 20, 2012
// CSIS 138, Project 2 Part B

#include <iostream>
#include <iomanip>
#include <string>

#define CO2_SPEED 258.0
#define AIR_SPEED 331.5
#define HELIUM_SPEED 972.0
#define HYDROGEN_SPEED 1270.0

using namespace std;

int get_medium_input() {
  cout << left;
  cout << "Please select one of the following media for which to calculate wave propogation time:" << endl;
  cout << setw(5) << "#" << setw(10) << "Medium" << setw(10) << "Wave Speed (meters per second)" << endl;
  cout << "---------------------------------------" << endl;
  cout << setw(5) << "1" << setw(16) << "Carbon Dioxide" << setw(10) << CO2_SPEED << endl;
  cout << setw(5) << "2" << setw(16) << "Air" << setw(10) << AIR_SPEED << endl;
  cout << setw(5) << "3" << setw(16) << "Helium" << setw(10) << HELIUM_SPEED << endl;
  cout << setw(5) << "4" << setw(16) << "Hydrogen" << setw(10) << HYDROGEN_SPEED << endl << endl << endl;


  cout << "Please select a medium by number: ";
  char medium_input;
  cin >> medium_input;

  if (medium_input == '1')
    return 1;
  else if (medium_input == '2')
    return 2;
  else if (medium_input == '3')
    return 3;
  else if (medium_input == '4')
    return 4;
  else
    return -1;
}

int get_time_input(string medium) {
  cout << "Please enter the number of seconds it took for sound to travel through " << medium << ". (seconds)" << endl;
  cout << "Time: ";
  int time_input;
  cin >> time_input;

  if (time_input && time_input >= 0 && time_input <= 30)
    return time_input;
  else {
    cout << "Error: Time must be a positive integer between 1 and 30." << endl;
    return -1;
  }
}


int main() {

  cout << "Wave Propogation Time Calculator" << endl;
  cout << "Project 1B -- CSIS 138" << endl;
  cout << "Cameron Carroll -- September 2012" << endl << endl << endl;

  for (int iterations=1; iterations<6; iterations++) {

    cout << "Iteration [" << iterations << "/5]..." << endl;
    int medium_input, time_input;
    float calculated_distance;
    medium_input = get_medium_input();
    if (medium_input == -1)
      cout << "Invalid medium choice; Valid inputs are '1', '2', '3' or '4'." << endl;
    else if (medium_input == 1) {
      time_input = get_time_input("CO2"); // time_input takes a medium type string to define purpose of input
      if (time_input != -1) {
        calculated_distance = time_input * CO2_SPEED;
      }
    }
    else if (medium_input == 2) {
      time_input = get_time_input("air");
      if (time_input != -1) {
        calculated_distance = time_input * AIR_SPEED;
      }
    }
    else if (medium_input == 3) {
      time_input = get_time_input("helium");
      if (time_input != -1) {
        calculated_distance = time_input * HELIUM_SPEED;
      }
    }
    else if (medium_input == 4) {
      time_input = get_time_input("hydrogen");
      if (time_input != -1) {
        calculated_distance = time_input * HYDROGEN_SPEED;
      }
    }
    else
      cout << "Invalid medium choice; Valid inputs are '1', '2', '3', or '4'." << endl;

    cout << "Calculated time: " << setw(15) << calculated_distance << "meters" << endl;
    cout << endl;
}
  return 0;
}