// File: Exercise_5_CCarroll.cpp
// Date: August 30, 2012
// Author: Cameron Carroll
// For CS 181, Cuyamaca College.

// Purpose: Calculates and prints a table of kilometers-per-hour to miles-per-hour.

#include <vector>
#include <iostream>
#include <iomanip>

using namespace std;
using std::vector;

#define WIDTH 2

// Modify these freely:
#define HEIGHT 15
#define START_KPH 60
#define STEP_SIZE 5

int main() {
  int ii, current_kph;
  vector<vector<int> > speed_table;

  speed_table.resize(HEIGHT);
  for (ii=0, current_kph=START_KPH;ii<HEIGHT; ++ii) {
    speed_table[ii].resize(WIDTH);
    speed_table[ii][0] = current_kph;
    speed_table[ii][1] = current_kph * 0.6214;
    current_kph += STEP_SIZE;
  }
  

  cout << left;

  cout << setw(10) << "KPH" << setw(10) << "MPH" << endl;

  for (ii=0; ii<HEIGHT; ii++)
    cout << setw(10) << speed_table[ii][0] << setw(10) << speed_table[ii][1] << endl;


  return 0;
}