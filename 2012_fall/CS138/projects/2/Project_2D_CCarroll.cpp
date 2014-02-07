// File: Project_2D_CCarroll.cpp
// Author: Cameron Carroll
// Date: October 21, 2012
// CSIS 138, Project 2 Part D

#include <iostream>

using namespace std;

int getEmployees() {
  int employees;
  cout << "Please enter the total number of employees: ";
  cin >> employees;

  if (employees < 1) {
    cout << "Error: Number of employees must be 1 or more." << endl;
    return 0;
  }
  else {
    return employees;
  }
}

int getAbsences(int employees) {
  int total_absences = 0;

  cout << "For each employee, please enter the total number of absences." << endl;

  int absences;
  for (int i=0; i<employees; i++) {
    absences = 0;
    cout << "Employee: [" << i << "]" << endl;
    cout << "Please enter number of absences: ";
    cin >> absences;

    if (absences < 0) {
      cout << "Error: Absences must be greater than 0!" << endl;
      return 0;
    }
    total_absences += absences;
  }

  return total_absences;
}

double getAverageAbsences(int employees, int total_absences) {
  double average_absences = total_absences / employees;
  return average_absences;
}

int main() {
  int employees, absences;
  double average_absences;

  employees = getEmployees();

  if (employees != 0) {
    absences = getAbsences(employees);
    average_absences = getAverageAbsences(employees, absences);

    cout << "Total employees: " << employees << endl;
    cout << "Total absences: " << absences << endl;
    cout << "Average absences: " << average_absences << endl;
  }
  
}