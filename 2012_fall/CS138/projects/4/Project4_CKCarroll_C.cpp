// File: Project4_CKCarroll_C.cpp
// Author: Cameron Carroll
// December 11 2012
// Final Project, CSIS 138, Part C

// Portability Notes:
//  - Uses TR1 (Unordered Map)


#include <iostream>
#include <string>
#include <unordered_map>
#include <algorithm>

using namespace std;

typedef unordered_map<string, int> String2IntMap;
String2IntMap generateMonthMap() {
  String2IntMap monthMap;
  monthMap["january"] = 31;
  monthMap["february"] = 28;
  monthMap["march"] = 31;
  monthMap["april"] = 30;
  monthMap["may"] = 31;
  monthMap["june"] = 30;
  monthMap["july"] = 31;
  monthMap["august"] = 31;
  monthMap["september"] = 30;
  monthMap["october"] = 31;
  monthMap["november"] = 30;
  monthMap["december"] = 31;

  return monthMap;
}

class CMonth {

private:
  string monthName;
  int monthNumber;

public:
  CMonth ();
  CMonth (string);

};

CMonth::CMonth () {
  monthNumber = 1;
  monthName = "January";
}

CMonth::CMonth (string input_name) {
  String2IntMap monthMap = generateMonthMap();
  transform(input_name.begin(), input_name.end(), input_name.begin(), ::tolower);
  String2IntMap::const_iterator value_iterator = monthMap.find(input_name);
  cout << "Number of days in " << value_iterator -> first << " is " << value_iterator -> second << endl;
}

int main() {
  CMonth january ();
  CMonth march ("March");
  CMonth december ("February");
  return 0;
}
