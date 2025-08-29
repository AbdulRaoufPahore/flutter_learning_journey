import 'package:flutterlearnplan/const/export.dart';

class RowDay4 extends StatelessWidget {
  const RowDay4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Row"),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 130,
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
              child: "Row 1".text.white.size(25).bold.make(),
            ),
            Container(
              width: 130,
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
              child: "Row 2".text.white.size(25).bold.make(),
            ),
            Container(
              width: 130,
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
              child: "Row 3".text.white.size(25).bold.make(),
            ),
          ],
        ),
      ),
    );
  }
}
