// A function with return type
// A function with perameters
int addNumbers(int a, int b) {
  return a + b;
}

// A function without return type
// A function with peramter
void greet(String name) {
  print("Hello $name! Welcome to Flutter ");
}

// A function Without perameter
void thankyou() {
  print("Thank you 😍😘");
}

void main() {
  int sum = addNumbers(4, 5);
  print("Sum: $sum");
  greet("Abdul Raouf");
  thankyou();
}

/*
PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day1\Dart> dart run map.dart
Name: Abdul Raouf
Skills [Dart, Flutter, Firebse]
Skill Firebse
PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day1\Dart> dart run functions.dart
Sum: 9
Hello Abdul Raouf! Welcome to Flutter 
Thank you 😍😘
 
*/
