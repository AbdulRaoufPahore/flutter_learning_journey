/*
Task (Day 3 Practice)

Create a Flutter app with:

Title: My Learning App

AppBar: “Day 3 – Flutter Basics”

Body: Centered Text → “Today I started Flutter journey 🚀”

*/

import 'package:flutterlearnplan/const/export.dart';

class Task1Day3 extends StatelessWidget {
  const Task1Day3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: "Day 3 – Flutter Basics".text
            .size(22)
            .fontWeight(FontWeight.bold)
            .make(),
      ),
      body: Center(
        child: "Today I started Flutter journey".text
            .fontWeight(FontWeight.bold)
            .size(20)
            .make(),
      ),
    );
  }
}
