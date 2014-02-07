// File: Exercise_6_CCarroll.cpp
// Date: November 2, 2012
// Author: Cameron Carroll
// For CS 181, Cuyamaca College.

// Purpose: Calculate falling distance due to gravity given the time to hit the ground.

#include <iostream>
#include <cmath>
using namespace std;

double fallingDistance(int fall_time) {
  // d = .5 gt^2, we're given t so
  double distance;
  distance = 0.5 * 9.8 * pow(fall_time, 2);

  return distance;
}

int main() {
  cout << "Distance an object falls from 1 to 10 seconds:" << endl;
  for (int ii=1; ii<11; ii++) {
    cout << "Distance in " << ii << " seconds: " << fallingDistance(ii) << endl;
  }

  return 0;
}