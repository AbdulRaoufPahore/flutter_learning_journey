import '../../const/export.dart';

class LocalimageDay4 extends StatelessWidget {
  const LocalimageDay4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Local Image (asset image)"),
      body: Center(
        child: Image.asset(
          "assets/images/profle1.jpg",
          // width: 350,
          // height: 350,
        ),
      ),
    );
  }
}
