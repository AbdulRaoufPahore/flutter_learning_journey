import 'package:flutterlearnplan/const/export.dart';

class Pr extends StatelessWidget {
  Pr({super.key});
  final List<String> images = List.generate(
    20,
    (index) => "https://picsum.photos/200/200?random=$index",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Day of Practice"),
      body: Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Card(child: Image.network(images[index], fit: BoxFit.cover));
          },
        ),
      ),
    );
  }
}
