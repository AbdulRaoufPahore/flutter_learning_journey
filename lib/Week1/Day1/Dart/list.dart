// ignore_for_file: avoid_print

void main() {
  // String
  String name = "Abdul Raouf";

  // Integer
  int age = 21;

  //Double
  double gpa = 3.27;

  // Boolean
  bool isFlutterDeve = true;

  // Var
  var city = "Karachi";

  // List
  List<String> skills = ["Dart", "Flutter", "Dart"];

  // Let's Display output of the program

  print("Name: $name");
  print("Age: $age");
  print("GPA: $gpa");
  print("Is Flutter Deve: $isFlutterDeve");
  print("City: $city");

  // print Skills with List of data
  print(skills);
  print("Skills ${skills[0]}");
}
/*
          OUTPUT
PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day1> dart run list.dart
Name: Abdul Raouf
Age: 21
GPA: 3.27
Is Flutter Deve: true
City: Karachi
[Dart, Flutter, Dart]
Skills Dart
*/ 
