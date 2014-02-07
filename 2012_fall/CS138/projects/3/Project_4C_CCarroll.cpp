// File: Project_3D_CCarroll.cpp
// Author: Cameron Carroll
// Date: November 16-17, 2012
// CSIS 138, Project 3 Part D

// Comments: I thought about generalizing the functions into a third file so that both C and D could plug into
// the same logic with some customization buuuut... it's my girlfriend's birthday so I'm gonna go to the beach,
// and solve this with copypasta.
// Also, since the application has to suck information out of user-input strings, I figure the fields can all just
// hold string data. Maybe this is a bad idea...

#include <iostream>
#include <vector>
#include <string>
#include "boost/lexical_cast.hpp"

using namespace std;

struct Customer {
  string name;
  string address;
  string city_state_zip;
  string telephone_number;
  string account_balance;
  string last_payment_time;
};

// Seeds customer data by initializing a structure for each and pushing it onto the vector.
// Takes and returns a Customer structure vector. (1D)
vector<Customer> seedCustomerData(vector<Customer> customers) {
    Customer customer_1 = {"Richard Feynmen", "6293 Elm St", "Chicago, Illinois, USA", "9084840948","$50", "10/20/72"};
    Customer customer_2 = {"Terry Goodkind", "6294 Elm St", "Chicago, Illinois, USA", "9084840949","$435", "10/20/90"};
    Customer customer_3 = {"Dick Obsolz", "6295 Elm St", "Chicago, Illinois, USA", "9084840950","$2", "10/20/50"};
    Customer customer_4 = {"Sheen Abersen", "6296 Elm St", "Chicago, Illinois, USA", "9084840951","$5435", "10/20/11"};
    Customer customer_5 = {"Guangdong Tian", "6297 Elm St", "Chicago, Illinois, USA", "9084840952","$12", "10/20/03"};
    Customer customer_6 = {"Kalyan Das", "6298 Elm St", "Chicago, Illinois, USA", "9084840953","$776", "10/20/04"};
    Customer customer_7 = {"Elsayed Elbadry", "6299 Elm St", "Chicago, Illinois, USA", "9084840954","$775", "10/22/72"};
    Customer customer_8 = {"Fan Jiang", "6300 Elm St", "Chicago, Illinois, USA", "9084840955","$43", "10/20/72"};
    Customer customer_9 = {"Marco Spiga", "6301 Elm St", "Chicago, Illinois, USA", "9084840956","$50", "10/20/72"};
    Customer customer_10 = {"Yagnesh Sharma", "6302 Elm St", "Chicago, Illinois, USA", "9084840957","$5043", "10/20/72"};

    customers.push_back(customer_1);
    customers.push_back(customer_2);
    customers.push_back(customer_3);
    customers.push_back(customer_4);
    customers.push_back(customer_5);
    customers.push_back(customer_6);
    customers.push_back(customer_7);
    customers.push_back(customer_8);
    customers.push_back(customer_9);
    customers.push_back(customer_10);

    return customers;


}



// Displays all customer data:
// Takes a vector containing customer structs, returns nothing.
void displayAllData(vector<Customer> customers) {
  cout << "Customer data: " << endl;
  cout << endl;
  for (int ii=0; ii < customers.size(); ii++) {
    cout << "Record #: " << (ii+1) << endl;
    cout << "Customer Name: " << customers[ii].name << endl;
    cout << "Address: " << customers[ii].address << endl;
    cout << "City, State, & Zip: " << customers[ii].city_state_zip << endl;
    cout << "Telephone #: " << customers[ii].telephone_number << endl;
    cout << "Account Balance: " << customers[ii].account_balance << endl;
    cout << "Last Payment Time: " << customers[ii].last_payment_time << endl;

    cout << endl;
  }
  return;
}

// Tests whether a string is just a number and a null terminator.
// Takes a string of text to be tested, and returns a boolean result.
bool isNumber(string test_string) {
  try {
    double test = boost::lexical_cast<double>(test_string);
    return true;
  }
  catch(...) {
    return false;
  }
}

// Allows a user to interactively change the details of an entry.
// Takes and returns a vector of Customer structs.
vector<Customer> changeAnEntry(vector<Customer> customers) {
  string user_entry_id, user_entry_field, user_entry_value;

  cout << "Changing an entry... " << endl;
  int size = customers.size();
  cout << "Which entry would you like to change? [0-" << size - 1 << "]" << endl;
  cout << "Please enter the integer value of the entry you would like to modify." << endl;

  getline(cin, user_entry_id);
  

  if (isNumber(user_entry_id)) {
    int entry_value_id = atoi(user_entry_id.c_str());
    if (entry_value_id <= size && entry_value_id >= 0) {
      cout << "Which field would you like to edit?" << endl;
      cout << " (1) Customer Name [" << customers[entry_value_id].name << "]" << endl;
      cout << " (2) Address [" << customers[entry_value_id].telephone_number << "]" << endl;
      cout << " (3) City, State, & Zip [" << customers[entry_value_id].address << "]" << endl;
      cout << " (4) Telephone # [" << customers[entry_value_id].city_state_zip << "]" << endl;
      cout << " (5) Account Balance [ " << customers[entry_value_id].account_balance << "]" << endl;
      cout << " (6) Date of Last Payment [ " << customers[entry_value_id].last_payment_time << "]" << endl;
      cout << endl;
      getline(cin, user_entry_field);
      if (isNumber(user_entry_field)) {
        int entry_value_field = atoi(user_entry_field.c_str());
        if (entry_value_field <= 6 && entry_value_field > 0) {
          cout << "What would you like to change that value to?" << endl;
          getline(cin, user_entry_value);
          if (entry_value_field == 1)
            customers[entry_value_id].name = user_entry_value;
          else if (entry_value_field == 2)
            customers[entry_value_id].telephone_number = user_entry_value;
          else if (entry_value_field == 3)
            customers[entry_value_id].address = user_entry_value;
          else if (entry_value_field == 4)
            customers[entry_value_id].city_state_zip = user_entry_value;
          else if (entry_value_field == 5)
            customers[entry_value_id].account_balance = user_entry_value;
          else if (entry_value_field == 6)
            customers[entry_value_id].last_payment_time = user_entry_value;
          else
            cout << "WARNING: Unspecified behavior." << endl;
          cout << endl;
        }
      }
    }
    else {
      cout << "ERROR: User entry out of bounds." << endl;
    }
  }

  return customers;
}


// Allows the user to interactively create a new entry.
// Takes and returns a vector of Customer structs.
vector<Customer> createNewEntry(vector<Customer> customers) {
  string input_name, input_telephone_number, input_address, input_city_state_zip, input_account_balance, input_last_payment_time;

  cout << "Creating a new entry..." << endl;
  cout << "Record # " << customers.size()+1 << " (NEW)" << endl;
  cout << "Please enter the customer's name: ";
  getline(cin, input_name);
  cout << endl;
  cout << "Please enter the customer's street address: ";
  getline(cin, input_address);
  cout << endl;
  cout << "Please enter the customer's city, state & zip: ";
  getline(cin, input_city_state_zip);
  cout << endl;
  cout << "Please enter the customer's telephone number: ";
  getline(cin, input_telephone_number);
  cout << endl;
  cout << "Please enter the customer's account balance: ";
  getline(cin, input_account_balance);
  cout << endl;
  cout << "Please enter the customer's last payment time: ";
  getline(cin, input_last_payment_time);
  cout << endl;

  Customer this_customer = {input_name, input_address, input_city_state_zip, input_telephone_number, input_account_balance, input_last_payment_time};

  customers.push_back(this_customer);



  return customers;
}


// Main function!
int main() {

  cout << "Customer Tracking System: " << endl;
  cout << "CS138 Project 3D -- Cameron Carroll, Fall 2012" << endl;
  cout << endl;

  bool program_running = true; string user_selection;

  vector<Customer> customers;
  customers = seedCustomerData(customers);

  while(program_running) {

    cout << "Please select a menu option by number..." << endl;
    cout << "(1) Display All Data" << endl;
    cout << "(2) Change an Entry" << endl;
    cout << "(3) Create New Entry" << endl;
    cout << "(4) Quit Program" << endl;
    getline(cin, user_selection);
    cout << endl;
    if (user_selection == "1")
      displayAllData(customers);
    else if (user_selection == "2")
      customers = changeAnEntry(customers);
    else if (user_selection == "3")
      customers = createNewEntry(customers);
    else if (user_selection == "4")
      program_running = false;
  }

 


  return 0;
}