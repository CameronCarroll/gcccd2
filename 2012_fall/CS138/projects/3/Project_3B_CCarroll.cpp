// File: Project_3B_CCarroll.cpp
// Author: Cameron Carroll
// Date: November 16, 2012
// CSIS 138, Project 3 Part B

// Comments: Tokenizer is awesome! I miss ruby's .split(" ") member function though. 

#include <iostream>
#include <string>
#include <boost/tokenizer.hpp>

using namespace std;
using namespace boost;


// Reads in a line of text from the user, intended to be modified.
// Takes nothing, returns a  string of user text.
string getUserInput() {
  string user_text;
  cout << "Please enter a line of text to be converted." << endl;
  getline(cin, user_text);
  cout << endl;
  return user_text;
}

// Converts a word of "english" text to "pig latin" by moving the first letter to the end,
// and appending 'ay.'
// Takes a  string of one word, returns a string of the "pig latin" equivalent.
string convertToPigLatin(string unmodified_word) {
  string piglatin_word(unmodified_word, 1, unmodified_word.size());
  piglatin_word = piglatin_word + unmodified_word[0] + "ay";
  return piglatin_word;
}

// Scans and splits a body of text and then runs it through a pluggable converter.
// (it would be cool to be pluggable, but right now it just divides the text into words.)
// Takes a string of user text, returns the text after running each piece through a modifier.
string scanAndConvertText(string unmodified_text) {
  string modified_text;
  tokenizer<> tok(unmodified_text);
  for(tokenizer<>::iterator beg=tok.begin(); beg!=tok.end(); ++beg) {
    modified_text += convertToPigLatin(*beg);
    modified_text += " ";
  }

  return modified_text;
}

// Main function!
int main() {
  cout << "Piglatin Text Converter (One Way)" << endl;
  cout << "CIS 138 -- Cameron Carroll " << endl;
  cout << "Project 3A -- Fall 2012" << endl;
  cout << endl;

  string user_text, piglatin_text;
  user_text = getUserInput();
  piglatin_text = scanAndConvertText(user_text);
  cout << "You entered the string: " << endl;
  cout << "---> " << user_text << endl;
  cout << "In pig latin, this would be: " << endl;
  cout << "---> " << piglatin_text << endl;

  return 0;
}

