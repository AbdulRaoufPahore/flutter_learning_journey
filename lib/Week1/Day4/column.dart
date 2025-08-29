import '../../const/export.dart';

class ColumnDay4 extends StatelessWidget {
  const ColumnDay4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Column"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
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
            child: "Column 1".text.white.size(25).bold.make(),
          ),
          Container(
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
            child: "Column 2".text.white.size(25).bold.make(),
          ),
          Container(
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
            child: "Column 3".text.white.size(25).bold.make(),
          ),
        ],
      ),
    );
  }
}
