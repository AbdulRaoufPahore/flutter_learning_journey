import '../../const/export.dart';

class ContainerDay4 extends StatelessWidget {
  const ContainerDay4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Container"),
      body: Center(
        child: Container(
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
      ),
    );
  }
}
