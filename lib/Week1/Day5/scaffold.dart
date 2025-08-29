import 'package:flutterlearnplan/const/export.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Day5: Scaffold"),
      body: Center(
        child: "Scaffold provides layout for common elements".text.bold
            .size(17)
            .make(),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
