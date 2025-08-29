import 'dart:io';

void main() {
  stdout.write("Enter your obtain marks: ");
  String? obmarks = stdin.readLineSync();

  stdout.write("Enter your total marks: ");
  String? tomarks = stdin.readLineSync();

  if (obmarks != null && tomarks != null) {
    double obtained = double.parse(obmarks);
    double total = double.parse(tomarks);

    double per = (obtained / total) * 100;
    print("\n *************  Result  ************* \n");

    if (per >= 90) {
      print("Your obtained marks are: $obtained ");
      print("Your total marks are: $total ");
      print("Your grade is A+ ");
    } else if (per >= 80 && per < 90) {
      print("Your obtained marks are: $obtained ");
      print("Your total marks are: $total ");
      print("Your grade is A ");
    } else if (per >= 70 && per < 80) {
      print("Your obtained marks are: $obtained ");
      print("Your total marks are: $total ");
      print("Your grade is B+ ");
    } else if (per >= 60 && per < 70) {
      print("Your obtained marks are: $obtained ");
      print("Your total marks are: $total ");
      print("Your grade is B ");
    } else if (per >= 50 && per < 60) {
      print("Your obtained marks are: $obtained ");
      print("Your total marks are: $total ");
      print("Your grade is C+ ");
    } else if (per >= 33 && per < 50) {
      print("Your obtained marks are: $obtained ");
      print("Your total marks are: $total ");
      print("Your grade is +C ");
    } else {
      print("Your obtained marks are: $obtained ");
      print("Your total marks are: $total ");
      print("You are fail");
    }
  }
}



/*
Output 

PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day2\Conditions> dart run if_ifelse_else.dart
Enter your obtain marks: 85
Enter your total marks: 100

 *************  Result  ************* 

Your obtained marks are: 85.0 
Your total marks are: 100.0 
Your grade is A 
*/