import 'package:flutterlearnplan/const/export.dart';

class AppbarDay5 extends StatelessWidget {
  const AppbarDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(size: 28, color: Colors.white),
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        actions: [Icon(Icons.person_2_sharp), 10.widthBox, Icon(Icons.logout)],
        leading: Icon(Icons.sort),
        title: "Day5: AppBar".text.bold.size(25).make(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: "AppBar is a materail design app bar at the top of the app"
              .text
              .size(17)
              .bold
              .make(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: "AppBar".text.make(),
      ),
    );
  }
}
