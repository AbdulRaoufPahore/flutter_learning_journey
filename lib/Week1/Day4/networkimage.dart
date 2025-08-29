import 'package:flutterlearnplan/const/export.dart';

class NetworkimageDay4 extends StatelessWidget {
  const NetworkimageDay4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Network Image"),
      body: Center(
        child: Image.network(
          "https://picsum.photos/200",
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
