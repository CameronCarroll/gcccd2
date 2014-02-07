// File: Project4_CKCarroll_B.cpp
// Author: Cameron Carroll
// December 11 2012
// Final Project, CSIS 138, Part B

#include <iostream>
#include <cmath>
using namespace std;

class CMortgage {

private:
  double loan_value, loan_rate, loan_duration, loan_term;

public:
  void setLoanValue (double input_loan_value) {loan_value = input_loan_value;}
  void setLoanRate (double input_loan_rate) {loan_rate = input_loan_rate;}
  void setLoanDuration (double input_loan_duration) { loan_duration = input_loan_duration;}
  double getMonthlyPayment ();
  double getTotalPaid();

};

double CMortgage::getMonthlyPayment () {
  loan_term = pow(1 + (loan_rate/12), 12 * loan_duration);
  return (loan_value * loan_rate/12 * loan_term) / (loan_term - 1);
}

double CMortgage::getTotalPaid () {
  return this -> getMonthlyPayment() * loan_duration;
}

int main() {
  CMortgage mort;

  double input_value, input_rate, input_duration;
  cout << "Please enter a loan value: ";
  cin >> input_value;
  cout << endl;
  cout << "Now please enter the loan rate: ";
  cin >> input_rate;
  cout << endl;
  cout << "And finally, please enter the loan duration in years.";
  cin >> input_duration;
  cout << endl;

  mort.setLoanValue(input_value); //
  mort.setLoanRate(input_rate); // 1% 
  mort.setLoanDuration(input_duration); 
  cout << "Setting loan value to " << input_value << ", rate to " << input_rate << " and duration to " << input_duration << " years." << endl;
  cout << "Monthly payment: " << mort.getMonthlyPayment() << endl;
  cout << "Total paid: " << mort.getTotalPaid() << endl;

  return 0;
}
