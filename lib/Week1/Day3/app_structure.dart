import 'package:flutterlearnplan/const/export.dart';

class AppStructure extends StatelessWidget {
  const AppStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: "Welcome to Futter".text
            .size(22)
            .fontWeight(FontWeight.bold)
            .make(),
      ),
      body: Center(
        child: "Hello, This is my First project".text
            .fontWeight(FontWeight.bold)
            .size(20)
            .make(),
      ),
    );
  }
}
