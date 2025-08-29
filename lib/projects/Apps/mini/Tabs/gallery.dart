import 'package:flutterlearnplan/const/export.dart';

class GalleryTab extends StatelessWidget {
  GalleryTab({super.key});
  final List<String> images = [
    "https://picsum.photos/200/300?1",
    "https://picsum.photos/200/300?2",
    "https://picsum.photos/200/300?3",
    "https://picsum.photos/200/300?4",
    "https://picsum.photos/200/300?5",
    "https://picsum.photos/200/300?6",
    "https://picsum.photos/200/300?7",
    "https://picsum.photos/200/300?8",
    "https://picsum.photos/200/300?9",
    "https://picsum.photos/200/300?10",
    "https://picsum.photos/200/300?12",
    "https://picsum.photos/200/300?13",
    "https://picsum.photos/200/300?14",
    "https://picsum.photos/200/300?15",
    "https://picsum.photos/200/300?16",
    "https://picsum.photos/200/300?17",
    "https://picsum.photos/200/300?18",
    "https://picsum.photos/200/300?19",
    "https://picsum.photos/200/300?21",
    "https://picsum.photos/200/300?22",
    "https://picsum.photos/200/300?23",
    "https://picsum.photos/200/300?24",
    "https://picsum.photos/200/300?25",
    "https://picsum.photos/200/300?26",
    "https://picsum.photos/200/300?27",
    "https://picsum.photos/200/300?28",
    "https://picsum.photos/200/300?29",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: List.generate(images.length, (index) {
        return Image.network(images[index], fit: BoxFit.cover);
      }),
    );
  }
}
