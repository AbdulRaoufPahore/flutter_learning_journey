/*

Task 1

Task for You (Mini Practice)

Create a Dart program that stores your:

Name

Age

Skills (list)

Profile (map)

Write a function introduceYourself() that prints:

Hello, my name is Abdul, I am 24 years old, and I know Flutter & Dart.

*/

introdduceYourself(String name, int age, String skills) {
  name = "Abdul Raouf";
  age = 21;
  skills = "Mobile Appiction";
}

void main() {
  String name = "Abdul Raouf";
  int age = 21;
  List<String> skills = ['Dart', 'Flutter ', 'Firebase'];
  Map<String, dynamic> profile = {'age': '21', 'gpa': "3.27"};

  print("Name: $name");
  print("Age $age");
  print("Skills $skills");
  print("Profile $profile");
}

/*
  Output
PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day1\task> dart run task1.dart
Name: Abdul Raouf
Age 21
Skills [Dart, Flutter , Firebase]
Profile {age: 21, gpa: 3.27}

*/
