// File: Project_3A_CCarroll.cpp
// Author: Cameron Carroll
// Date: November 15-16, 2012
// CSIS 138, Project 3 Part A

// Comments:
// -----------------------------------------------------------------------------------------------------------
// Oh my god. I just spent like 18 hours on this, trying to use various combinations of vectors and stl arrays
// and tuples and TR1 stuff and boost stuff and now my head is dizzy because I've never had such difficulty
// with a programming assignment. (Especially a relatively easy one.) I'm realizing that C++ is acutally going
// to take some effort to wrap my head around.
// I considered using STL arrays (the internet told me that pure C arrays are evil...) but then chose
// vectors because that's what I've used before, and every time I read about passing arrays around in C++,
// it's suggested to just use some robust container (vectors) instead.

#include <iostream>
#include <vector>
#include "boost/variant.hpp"

using namespace std; 

// employee_data[0][jj] holds employee IDs (int)
// employee_data[1][jj] holds hours worked (int)
// employee_data[2][jj] holds pay rate (double)
// employee_data[3][jj] holds wages (double)
// employee_data[ii][jj] holds employee data for each of the seven individuals.
typedef boost::variant< int, double > employee_data_vartype;
typedef vector< vector<employee_data_vartype>> employee_vector_type;


// Prompts user for each employee's hours worked and hourly rate.
// Takes and returns employee_data 2d vector.
employee_vector_type getHoursAndRate(employee_vector_type employee_data) {

 cout << "Please enter hours worked and pay rate for each employee: " << endl;

 // For each element in the employee_data 2nd-level vectors, which should all be the same length...
 for (int ii=0; ii < (employee_data[0].size()-1); ii++) {
  int hours; double rate;
  cout << "--------------------------------------" << endl;
  cout << "Employee: " << employee_data[0][ii] << endl;
  cout << "Please enter hours worked (integer): ";
  cin >> hours;
  employee_data[1][ii] = hours; // no operators defined for the vector, have to use POD varibles instead
  cout << "Please enter the pay rate (float/double): ";
  cin >> rate;
  cout << "--------------------------------------" << endl;
  cout << endl;
  employee_data[2][ii] = rate; // ^^...or heaven forbid, define operators. (No thanks.)
  cout << endl;
 }

 return employee_data;

}

// Seeds employee identification numbers into the employee_data 2d vector:
// Acccepts and returns employee_data 2d vector. 
employee_vector_type seedEmployeeData(employee_vector_type employee_data) {

    employee_data[0][0] = 1234;
    employee_data[0][1] = 4563;
    employee_data[0][2] = 8765;
    employee_data[0][3] = 4568;
    employee_data[0][4] = 9867;
    employee_data[0][5] = 9235;
    employee_data[0][6] = 7684;

    return employee_data;
}

// Calculate employee wages from hours worked [1][ii] and hourly wage [2][ii]
// Takes and returns employee_data 2d vector.
employee_vector_type calculateWages(employee_vector_type employee_data) {
  for (int ii=0; ii < (employee_data[0].size() - 1); ii++) {
    int hours; double wages, rate;
    hours = boost::get<int>(employee_data[1][ii]);
    rate = boost::get<double>(employee_data[2][ii]);
    wages = hours * rate;
    employee_data[3][ii] = wages;
  }
 return employee_data;
}

// Prints out all data for each employee:
// Takes employee_data 2d vector, returns nothing.
void printEmployeeData(employee_vector_type employee_data) {
  cout << endl << endl;
  cout << "Employee Data Summary:" << endl;
  cout << "--------------------------------------" << endl << endl;

 for (int ii=0; ii < (employee_data[0].size() - 1); ii++) {

  cout << "--------------------------------------" << endl;
  cout << "Employee: " << employee_data[0][ii] << endl;
  cout << "Hours Worked: " << employee_data[1][ii] << endl;
  cout << "Hourly Wage: " << employee_data[2][ii] << endl;
  cout << "Wages Earned: " << employee_data[3][ii] << endl << endl;
 }
 return;
}


// Main function
int main() {

  employee_vector_type employee_data(4, vector<employee_data_vartype> (7, 0));

  cout << "Payroll Tracking System" << endl;
  cout << "Cameron Carroll. CSIS 138 Project 3A" << endl;
  cout << "--------------------------------------" << endl << endl << endl;
  // Load employee IDs:
  employee_data = seedEmployeeData(employee_data);
  // Get hours worked and pay rate from user, for each employee:
  employee_data = getHoursAndRate(employee_data);
  // Calculate gross wages for each employee:
  employee_data = calculateWages(employee_data);
  // Print out data for all employees:
  printEmployeeData(employee_data);


  return 0;
}