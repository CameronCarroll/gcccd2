// File: Project_3C_CCarroll.cpp
// Author: Cameron Carroll
// Date: November 16-17, 2012
// CSIS 138, Project 3 Part C

// Comments:

#include <iostream>
#include <vector>
#include <string>
#include "boost/lexical_cast.hpp"

using namespace std;

struct Speaker {
  string name;
  string telephone_number;
  string speaking_topic;
  string fee_required;
};

// Seeds speaker data by initializing a structure for each and pushing it onto the vector.
// Takes and returns a Speaker structure vector. (1D)
vector<Speaker> seedSpeakerData(vector<Speaker> speakers) {
    Speaker speaker_1 = {"Richard Feynmen", "9084840948", "QED, ED, QM, SU3. Fee? Negative one billion dollars.", "#0"};
    Speaker speaker_2 = {"Charles Babbett", "4381038809", "Apple Orchards.", "#654"};
    Speaker speaker_3 = {"Don Knuth", "6138895743", "Discrete math plz", "#0"};
    Speaker speaker_4 = {"Tom Terinn", "80388987430", "cheeses", "#54"};
    Speaker speaker_5 = {"Jerold Mfree", "1649975948", "Aghriculture", "#37"};
    Speaker speaker_6 = {"Hveez Jannin", "1736765968", "Mathematics", "#125"};
    Speaker speaker_7 = {"Terronford Applebees", "94883957", "LOST.", "#100"};
    Speaker speaker_8 = {"Charles Ponga", "6145849503", "Political stuff.", "$55"};
    Speaker speaker_9 = {"Quernious Teplicious", "616449333", "Cherries.", "$12"};
    Speaker speaker_10 = {"Richard Dawkins", "9583940589", "Pizza parties.", "$2"};

    speakers.push_back(speaker_1);
    speakers.push_back(speaker_2);
    speakers.push_back(speaker_3);
    speakers.push_back(speaker_4);
    speakers.push_back(speaker_5);
    speakers.push_back(speaker_6);
    speakers.push_back(speaker_7);
    speakers.push_back(speaker_8);
    speakers.push_back(speaker_9);
    speakers.push_back(speaker_10);

    return speakers;


}



// Displays all speaker data:
// Takes a vector containing speaker structs, returns nothing.
void displayAllData(vector<Speaker> speakers) {
  cout << "Speaker data: " << endl;
  cout << endl;
  for (int ii=0; ii < speakers.size(); ii++) {
    cout << "Record #: " << (ii+1) << endl;
    cout << "Name: " << speakers[ii].name << endl;
    cout << "Telephone #: " << speakers[ii].telephone_number << endl;
    cout << "Speaking Topic: " << speakers[ii].speaking_topic << endl;
    cout << "Fee Required: " << speakers[ii].fee_required << endl;
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
// Takes and returns a vector of Speaker structs.
vector<Speaker> changeAnEntry(vector<Speaker> speakers) {
  string user_entry_id, user_entry_field, user_entry_value;

  cout << "Changing an entry... " << endl;
  int size = speakers.size();
  cout << "Which entry would you like to change? [0-" << size - 1 << "]" << endl;
  cout << "Please enter the integer value of the entry you would like to modify." << endl;
  cout << "Enter 'list' to reprint all data." << endl;

  getline(cin, user_entry_id);
  

  if (isNumber(user_entry_id)) {
    int entry_value_id = atoi(user_entry_id.c_str());
    if (entry_value_id <= size && entry_value_id >= 0) {
      cout << "Which field would you like to edit?" << endl;
      cout << " (1) Speaker Name [" << speakers[entry_value_id].name << "]" << endl;
      cout << " (2) Telephone Number [" << speakers[entry_value_id].telephone_number << "]" << endl;
      cout << " (3) Speaking Topic [" << speakers[entry_value_id].speaking_topic << "]" << endl;
      cout << " (4) Required Fee [" << speakers[entry_value_id].fee_required << "]" << endl;
      cout << endl;
      getline(cin, user_entry_field);
      if (isNumber(user_entry_field)) {
        int entry_value_field = atoi(user_entry_field.c_str());
        if (entry_value_field <= 4 && entry_value_field > 0) {
          cout << "What would you like to change that value to?" << endl;
          getline(cin, user_entry_value);
          if (entry_value_field == 1)
            speakers[entry_value_id].name = user_entry_value;
          else if (entry_value_field == 2)
            speakers[entry_value_id].telephone_number = user_entry_value;
          else if (entry_value_field == 3)
            speakers[entry_value_id].speaking_topic = user_entry_value;
          else if (entry_value_field == 4)
            speakers[entry_value_id].fee_required = user_entry_value;
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
  else {
    if (user_entry_field == "list" && user_entry_field == "LIST") {
      displayAllData(speakers);
    }
    else if (user_entry_field == "QUIT" && user_entry_field == "quit") {
      //
    }
  }
  return speakers;
}


// Allows the user to interactively create a new entry.
// Takes and returns a vector of Speaker structs.
vector<Speaker> createNewEntry(vector<Speaker> speakers) {
  string input_name, input_telephone_number, input_speaking_topic, input_fee_required;

  cout << "Creating a new entry..." << endl;
  cout << "Record # " << speakers.size()+1 << " (NEW)" << endl;
  cout << "Please enter the speaker's name: ";
  getline(cin, input_name);
  cout << endl;
  cout << "Please enter the speaker's telephone number: ";
  getline(cin, input_telephone_number);
  cout << endl;
  cout << "Please enter the speaer's topic: ";
  getline(cin, input_speaking_topic);
  cout << endl;
  cout << "Please enter the fee required: ";
  getline(cin, input_fee_required);
  cout << endl;

  Speaker this_speaker = {input_name, input_telephone_number, input_speaking_topic, input_fee_required};
  speakers.push_back(this_speaker);



  return speakers;
}


// Main function!
int main() {

  cout << "Speaker's Bureau Tracking System: " << endl;
  cout << "CS138 Project 3C -- Cameron Carroll, Fall 2012" << endl;
  cout << endl;

  bool program_running = true; string user_selection;
  vector<Speaker> speakers;

  speakers = seedSpeakerData(speakers);

  while(program_running) {
    cout << "Please select a menu option by number..." << endl;
    cout << "(1) Display All Data" << endl;
    cout << "(2) Change an Entry" << endl;
    cout << "(3) Create New Entry" << endl;
    cout << "(4) Quit Program" << endl;
    getline(cin, user_selection);
    cout << endl;
    if (user_selection == "1")
      displayAllData(speakers);
    else if (user_selection == "2")
      speakers = changeAnEntry(speakers);
    else if (user_selection == "3")
      speakers = createNewEntry(speakers);
    else if (user_selection == "4")
      program_running = false;
  }

 


  return 0;
}