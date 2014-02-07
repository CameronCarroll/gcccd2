// File: Exercise_2_CCarroll.cpp
// Date: August 20, 2012
// Author: Cameron Carroll
// For CS 181, Cuyamaca College

#include <iostream>
using namespace std;

int main() {
  double payAmount = 1700.00;
  int payPeriod = 26;
  int annualPay;

  annualPay = payAmount * payPeriod;
  cout << "Amount earned: " << annualPay << "\n";

  return 0;
}