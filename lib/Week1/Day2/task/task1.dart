/*

Task (Day 2)

Write a Dart program with a Car class that has:

Properties: brand, model, year

A method displayInfo() that prints:
"Car: Toyota Corolla, Year: 2020"
*/

class Car {
  String? brand;
  int? model;
  String? year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print("Car:$brand, $year, $model ");
  }
}

void main() {
  Car car = Car("Car: Toyota Corolla ", 2020, " year");
  car.displayInfo();
}

/*
output
PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day2\task> dart run task1.dart
Car:Car: Toyota Corolla ,  year, 2020 
*/
