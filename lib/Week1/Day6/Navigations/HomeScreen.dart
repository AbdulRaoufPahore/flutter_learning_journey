import 'package:flutterlearnplan/const/export.dart';

class HomescreenDay6 extends StatelessWidget {
  const HomescreenDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Home Screen"),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondscreenDay6()),
            );
          },
          child: "Go to Second Screen".text.make(),
        ),
      ),
    );
  }
}
