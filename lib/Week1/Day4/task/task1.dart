/*

Day 4 Practice Task

Create a Flutter app with:

An AppBar: “Day 4 – Widgets Practice”

In the body, a Column with:

A Container (blue background, text inside).

A Row with 3 icons (Home, Star, Settings).

An Image.network showing a random picture.

*/

import 'package:flutterlearnplan/const/export.dart';

class Task1Day4 extends StatelessWidget {
  const Task1Day4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Day-4 Widgets Practice"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            width: 200,
            height: 100,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(3, 3),
                  spreadRadius: 2,
                  blurRadius: 7,
                ),
              ],
            ),
            child: "Container".text.white.size(30).bold.make(),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Icon(Icons.home, size: 60, color: Colors.red),
              Icon(Icons.star, size: 60, color: Colors.orange),
              Icon(Icons.settings, size: 60, color: Colors.green),
            ],
          ),
          20.heightBox,
          Image.network("https://picsum.photos/200"),
        ],
      ),
    );
  }
}
