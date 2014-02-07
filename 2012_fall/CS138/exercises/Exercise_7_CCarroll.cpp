// File: Exercise_7_CCarroll.cpp
// Date: November 9, 2012
// Author: Cameron Carroll
// For CS 181, Cuyamaca College.

#include <iostream>
#include <vector>

using namespace std;

vector<char> getInput() {
  vector<char> user_answers(20);
  char buffer;
  cout << "Please enter exam answers:" << endl;
  cout << "--------------------------" << endl;
  for (int ii=1; ii<=20; ii++) {
    cout << "Your Answer to Question " << ii << ": ";
    cin >> buffer;
    if (buffer == 'A' || buffer == 'a') {
      user_answers[ii] = buffer;
    }
    else if (buffer == 'B' || buffer == 'b') {
      user_answers[ii] = buffer;
    }
    else if (buffer == 'C' || buffer == 'c') {
      user_answers[ii] = buffer;
    }
    else if (buffer == 'D' || buffer == 'd') {
      user_answers[ii] = buffer;
    }
    else {
      cout << "Error: Must enter A, B, C or D!" << endl;
    }
  }

  return user_answers;
}

int main() {
  vector<char> answers(20);
  answers = {'B', 'D', 'A', 'A', 'C', 'A', 'A', 'D', 'B', 'B', 'B', 'D', 'C', 'A', 'C', 'C', 'A', 'D', 'A', 'A'};
  vector<char> user_answers(20);
  user_answers = getInput();

  int number_correct = 0;
  int number_incorrect = 0;
  int score = 20;

  for (int ii=1; ii<20; ii++) {
    if (user_answers[ii] == answers[ii]) {
      number_correct++;
    }
    else if (toupper(user_answers[ii]) == answers[ii]) {
      number_correct++;
    }
    else {
      number_incorrect++;
      score --;
    }
  }

  if (score >= 15) {
    cout << "Congratulations, you passed the exam!" << endl;
    cout << "# Questions answered correctly: " << number_correct << endl;
    cout << "# Questions answered incorrectly: " << number_incorrect << endl;
  }
  else {
    cout << "Sorry, you failed the exam." << endl;
    cout << "# Questions answered correctly: " << number_correct << endl;
    cout << "# Questions answered incorrectly: " << number_incorrect << endl;
  }

  return 0;

}