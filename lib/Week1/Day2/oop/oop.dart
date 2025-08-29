// let's define a class

class Person {
  // Variables
  String? name;
  int? age;

  //  Consturtor
  Person(this.name, this.age);

  // Method

  void introduce() {
    print("Hi, My name is $name and I'm $age years old");
  }
}

void main() {
  Person p1 = Person("Abdul Raouf", 21);
  Person p2 = Person("Manan", 18);
  p1.introduce();
  p2.introduce();
}

/*

Output 

PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day2\oop> dart run oop.dart
Hi, My name is Abdul Raouf and I'm 21 years old
Hi, My name is Manan and I'm 18 years old
*/
