import 'package:flutterlearnplan/const/export.dart';

class SecondscreenDay6 extends StatelessWidget {
  const SecondscreenDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Second Screen"),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: "Back to Home".text.make(),
        ),
      ),
    );
  }
}
