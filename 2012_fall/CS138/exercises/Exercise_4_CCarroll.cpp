// File: Exercise_4_CCarroll.cpp
// Date: August 20-22, 2012
// Author: Cameron Carroll
// For CS 181, Cuyamaca College.

#include <iostream>
#include <string>
using namespace std;

string lookup_letter_grade(int grade) {
  if (grade >= 90) {
    return string("A");
  }

  else if (grade >= 80) {
    return string("B");
  }

  else if (grade >= 70) {
    return string("C");
  }

  else if (grade >= 60) {
    return string("D");
  }
  
  else {
    return string("F");
  }
}

int main() {

  int score1, score2, score3, score_average;
  string grade_letter;

  cout << "Grade average program:" << endl;
  cout << "Please enter three test scores. First score: ";
  cin >> score1;
  cout << "Second score: ";
  cin >> score2;
  cout << "And the third score: ";
  cin >> score3;

  score_average = (score1 + score2 + score3) / 3;
  grade_letter = lookup_letter_grade(score_average);
  cout << "Average score: " << score_average << " and letter grade: " << grade_letter << endl;

  return 0;
}


