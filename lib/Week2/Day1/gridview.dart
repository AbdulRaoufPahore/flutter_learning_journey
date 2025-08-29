import 'package:flutterlearnplan/const/export.dart';

class GridviewDay8 extends StatelessWidget {
  const GridviewDay8({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = List.generate(
      20,
      (index) => "https://picsum.photos/200/200?random=$index",
    );
    return Scaffold(
      appBar: AppBarWidget("Day 8: GridView"),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(child: Image.network(images[index], fit: BoxFit.cover));
        },
      ),
    );
  }
}
